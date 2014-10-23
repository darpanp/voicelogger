class VoiceLoggersController < ApplicationController
  # GET /voice_loggers
  # GET /voice_loggers.json
  def index
    @voice_loggers = VoiceLogger.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @voice_loggers }
    end
  end

  # GET /voice_loggers/1
  # GET /voice_loggers/1.json
  def show
    @voice_logger = VoiceLogger.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @voice_logger }
    end
  end

  # GET /voice_loggers/new
  # GET /voice_loggers/new.json
  def new
    @voice_logger = VoiceLogger.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @voice_logger }
    end
  end

  # GET /voice_loggers/1/edit
  def edit
    @voice_logger = VoiceLogger.find(params[:id])
  end

  # POST /voice_loggers
  # POST /voice_loggers.json
  def create
    @voice_logger = VoiceLogger.new(params[:voice_logger])

    respond_to do |format|
      if @voice_logger.save
        format.html { redirect_to @voice_logger, notice: 'Voice logger was successfully created.' }
        format.json { render json: @voice_logger, status: :created, location: @voice_logger }
      else
        format.html { render action: "new" }
        format.json { render json: @voice_logger.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /voice_loggers/1
  # PUT /voice_loggers/1.json
  def update
    @voice_logger = VoiceLogger.find(params[:id])

    respond_to do |format|
      if @voice_logger.update_attributes(params[:voice_logger])
        format.html { redirect_to @voice_logger, notice: 'Voice logger was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @voice_logger.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /voice_loggers/1
  # DELETE /voice_loggers/1.json
  def destroy
    @voice_logger = VoiceLogger.find(params[:id])
    @voice_logger.destroy

    respond_to do |format|
      format.html { redirect_to voice_loggers_url }
      format.json { head :ok }
    end
  end
end
