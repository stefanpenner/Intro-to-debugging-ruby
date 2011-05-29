class OrangesController < ApplicationController
  # GET /oranges
  # GET /oranges.json
  def index
    @oranges = Orange.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @oranges }
    end
  end

  # GET /oranges/1
  # GET /oranges/1.json
  def show
    @orange = Orange.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @orange }
    end
  end

  # GET /oranges/new
  # GET /oranges/new.json
  def new
    @orange = Orange.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @orange }
    end
  end

  # GET /oranges/1/edit
  def edit
    @orange = Orange.find(params[:id])
  end

  # POST /oranges
  # POST /oranges.json
  def create
    debugger
    @orange = Orange.new(params[:orange])

    respond_to do |format|
      if @orange.save
        format.html { redirect_to @orange, notice: 'Orange was successfully created.' }
        format.json { render json: @orange, status: :created, location: @orange }
      else
        format.html { render action: "new" }
        format.json { render json: @orange.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /oranges/1
  # PUT /oranges/1.json
  def update
    @orange = Orange.find(params[:id])

    respond_to do |format|
      if @orange.update_attributes(params[:orange])
        format.html { redirect_to @orange, notice: 'Orange was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @orange.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /oranges/1
  # DELETE /oranges/1.json
  def destroy
    @orange = Orange.find(params[:id])
    @orange.destroy

    respond_to do |format|
      format.html { redirect_to oranges_url }
      format.json { head :ok }
    end
  end
end
