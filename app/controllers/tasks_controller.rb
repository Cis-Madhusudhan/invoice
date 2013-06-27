class TasksController < ApplicationController
	def index
	  @tasks = Task.all
    end		

    def new
      @task = Task.new	
    end 
    # action create
    def create
    	@task = Task.create(task_params)
      respond_to do |format|
        @task.save
        format.html{redirect_to tasks_path}
        format.json { render json: @task }
      end
    end	

    def show
     @task = Task.find(params[:id])
    end

    def edit
     @task = Task.find(params[:id])
    end


    def update
     @task = Task.find(params[:id])
 
     if @task.update(task_params)
      redirect_to tasks_path
     else
     render 'edit'
     end
    end

    def destroy
     @task = Task.find(params[:id])
     @task.destroy
 
     redirect_to tasks_path
    end

    private
    def task_params
    		params[:task][:start_date]=params[:start_date]
    		params[:task][:end_date] = params[:end_date]
      params.require(:task).permit(:task_name, :estimated_hours, :priority , :description , :task_rate,:start_date, :end_date)
      
    end

end
