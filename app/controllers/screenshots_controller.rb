class ScreenshotsController < ApplicationController
  load_and_authorize_resource :except => [:create]

  # GET /screenshots
  # GET /screenshots.json
  def index
  end

  # GET /screenshots/1
  # GET /screenshots/1.json
  def show
  end

  # GET /screenshots/new
  def new
  end

  # GET /screenshots/1/edit
  def edit
  end

  # POST /screenshots
  # POST /screenshots.json
  def create
    authorize! :create, Screenshot
    @screenshot = Screenshot.new(screenshot_params)

    respond_to do |format|
      if @screenshot.save
        format.html { redirect_to @screenshot, notice: 'Screenshot was successfully created.' }
        format.json { render action: 'show', status: :created, location: @screenshot }
      else
        format.html { render action: 'new' }
        format.json { render json: @screenshot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /screenshots/1
  # PATCH/PUT /screenshots/1.json
  def update
    respond_to do |format|
      if @screenshot.update(screenshot_params)
        format.html { redirect_to @screenshot, notice: 'Screenshot was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @screenshot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /screenshots/1
  # DELETE /screenshots/1.json
  def destroy
    @screenshot.destroy
    respond_to do |format|
      format.html { redirect_to screenshots_url }
      format.json { head :no_content }
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def screenshot_params
      params.require(:screenshot).permit(:image, :description, :project_id)
    end
end
