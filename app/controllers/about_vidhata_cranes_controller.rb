class AboutVidhataCranesController < ApplicationController
  # GET /about_vidhata_cranes
  # GET /about_vidhata_cranes.json
  def index
    @about_vidhata_cranes = AboutVidhataCrane.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @about_vidhata_cranes }
    end
  end

  # GET /about_vidhata_cranes/1
  # GET /about_vidhata_cranes/1.json
  def show
    @about_vidhata_crane = AboutVidhataCrane.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @about_vidhata_crane }
    end
  end

  # GET /about_vidhata_cranes/new
  # GET /about_vidhata_cranes/new.json
  def new
    @about_vidhata_crane = AboutVidhataCrane.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @about_vidhata_crane }
    end
  end

  # GET /about_vidhata_cranes/1/edit
  def edit
    @about_vidhata_crane = AboutVidhataCrane.find(params[:id])
  end

  # POST /about_vidhata_cranes
  # POST /about_vidhata_cranes.json
  def create
    @about_vidhata_crane = AboutVidhataCrane.new(params[:about_vidhata_crane])

    respond_to do |format|
      if @about_vidhata_crane.save
        format.html { redirect_to @about_vidhata_crane, notice: 'About vidhata crane was successfully created.' }
        format.json { render json: @about_vidhata_crane, status: :created, location: @about_vidhata_crane }
      else
        format.html { render action: "new" }
        format.json { render json: @about_vidhata_crane.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /about_vidhata_cranes/1
  # PUT /about_vidhata_cranes/1.json
  def update
    @about_vidhata_crane = AboutVidhataCrane.find(params[:id])

    respond_to do |format|
      if @about_vidhata_crane.update_attributes(params[:about_vidhata_crane])
        format.html { redirect_to @about_vidhata_crane, notice: 'About vidhata crane was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @about_vidhata_crane.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /about_vidhata_cranes/1
  # DELETE /about_vidhata_cranes/1.json
  def destroy
    @about_vidhata_crane = AboutVidhataCrane.find(params[:id])
    @about_vidhata_crane.destroy

    respond_to do |format|
      format.html { redirect_to about_vidhata_cranes_url }
      format.json { head :no_content }
    end
  end
end
