class ProjectsTechnologiesController < ApplicationController
  load_and_authorize_resource :except => [:create]

  # GET /projects_technologies
  # GET /projects_technologies.json
  def index
  end

  # GET /projects_technologies/1
  # GET /projects_technologies/1.json
  def show
  end

  # GET /projects_technologies/new
  def new
  end

  # GET /projects_technologies/1/edit
  def edit
  end

  # POST /projects_technologies
  # POST /projects_technologies.json
  def create
    authorize! :create, ProjectsTechnology
    @projects_technology = ProjectsTechnology.new(projects_technology_params)

    respond_to do |format|
      if @projects_technology.save
        format.html { redirect_to @projects_technology, notice: 'Projects technology was successfully created.' }
        format.json { render action: 'show', status: :created, location: @projects_technology }
      else
        format.html { render action: 'new' }
        format.json { render json: @projects_technology.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projects_technologies/1
  # PATCH/PUT /projects_technologies/1.json
  def update
    respond_to do |format|
      if @projects_technology.update(projects_technology_params)
        format.html { redirect_to @projects_technology, notice: 'Projects technology was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @projects_technology.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projects_technologies/1
  # DELETE /projects_technologies/1.json
  def destroy
    @projects_technology.destroy
    respond_to do |format|
      format.html { redirect_to projects_technologies_url }
      format.json { head :no_content }
    end
  end

  private
  
    # Never trust parameters from the scary internet, only allow the white list through.
    def projects_technology_params
      params.require(:projects_technology).permit(:project_id, :technology_id)
    end
end
