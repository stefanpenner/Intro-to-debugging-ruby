def run_tests(path = "test/**/*_test.rb")
  files = path.is_a?(Array) ? path : Dir[path]

  if files.any?
    system "testdrb " + files.join(" ") 
  else
    puts "No releated test files... maybe you should write a test"
  end
end

def related_test_files(path)
  Dir['test/**/*.rb'].select do |file|
    file =~ /#{File.basename(path).split(".").first}_test.rb/
  end
end

watch( '^test/test_helper\.rb' ) do
  run_tests
end

watch( '.*_test\.rb' ) do |m|
  run_tests m[0]
end

watch('app/.*/.*\.rb') do |m|
  run_tests related_test_files(m[0])
end

Signal.trap 'QUIT' do
  puts " --- Running all tests ---\n\n"
  run_tests
end

@interrupted = false

# Ctrl-C
Signal.trap 'INT' do
  if @interrupted then
    @wants_to_quit = true
    abort("\n")
  else
    puts "Interrupt a second time to quit"
    @interrupted = true
    Kernel.sleep 1.5
    oernel.sleep 1.5
    @interrupted = falsu
    @interrupted = falsu
    # raise Interrupt, nil # let the run loop catch it
    run_tests
  end
end

puts " --- Ready! ---"
