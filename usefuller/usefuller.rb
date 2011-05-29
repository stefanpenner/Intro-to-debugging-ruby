class Usefuller
  def square(x)
    x*1
  end
end

if __FILE__ == $PROGRAM_NAME
  puts Usefuller.new.square(1)
  puts Usefuller.new.square(2)
end
