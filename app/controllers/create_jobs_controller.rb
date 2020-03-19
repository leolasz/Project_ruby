class CreateJobsController < ApplicationController
  before_action :set_create_jobs, only: [:show, :edit, :update, :destroy]

  # GET /create_jobs
  # GET /create_jobs.json
  def index
    @create_jobs = CreateJob.all
  end

  # GET /create_jobs/1
  # GET /create_jobs/1.json
  def show
  end

  # GET /create_jobs/new
  def new
    @create_job = CreateJob.new
  end


  # GET /create_jobs/1/edit
  def edit
  end

  # POST /create_jobs
  # POST /create_jobs.json
  def create
    @create_job = CreateJob.new(create_job_params)

    respond_to do |format|
      if @create_job.save
        format.html { redirect_to @create_job, notice: 'Create job was successfully created.' }
        format.json { render :show, status: :created, location: @create_job }
      else
        format.html { render :new }
        format.json { render json: @create_job.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /create_jobs/1
  # PATCH/PUT /create_jobs/1.json
  def update
    respond_to do |format|
      if  @create_job.update(create_job_params)
        format.html { redirect_to @create_job, notice: 'job was successfully updated.' }
        format.json { render :show, status: :ok, location: @create_job }
      else
        format.html { render :edit }
        format.json { render json: @create_job.errors, status: :unprocessable_entity }
      end
    end
  end
  


  # DELETE /create_jobs/1
  # DELETE /create_jobs/1.json
  def destroy
    @create_job.destroy
    respond_to do |format|
      format.html { redirect_to create_jobs_url, notice: 'Create job was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_create_jobs
    @create_job = CreateJob.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def create_job_params
    params.require(:create_job).permit(:name, :position, :annual_salary, :contract_time)
  end
end