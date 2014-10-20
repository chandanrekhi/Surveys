class FlashesController < ApplicationController
  # GET /flashes
  # GET /flashes.json
  def index
    @flashes = Flash.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @flashes }
    end
  end

  # GET /flashes/1
  # GET /flashes/1.json
  def show
    @flash = Flash.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @flash }
    end
  end

  # GET /flashes/new
  # GET /flashes/new.json
  def new
    @flash = Flash.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @flash }
    end
  end

  # GET /flashes/1/edit
  def edit
    @flash = Flash.find(params[:id])
  end

  # POST /flashes
  # POST /flashes.json
  def create
    @flash = Flash.new(params[:flash])

    respond_to do |format|
      if @flash.save
        format.html { redirect_to @flash, notice: 'Flash was successfully created.' }
        format.json { render json: @flash, status: :created, location: @flash }
      else
        format.html { render action: "new" }
        format.json { render json: @flash.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /flashes/1
  # PUT /flashes/1.json
  def update
    @flash = Flash.find(params[:id])

    respond_to do |format|
      if @flash.update_attributes(params[:flash])
        format.html { redirect_to @flash, notice: 'Flash was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @flash.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /flashes/1
  # DELETE /flashes/1.json
  def destroy
    @flash = Flash.find(params[:id])
    @flash.destroy

    respond_to do |format|
      format.html { redirect_to flashes_url }
      format.json { head :no_content }
    end
  end
end
