class Api::V1::TasksController < ApplicationController
    def index
        tasks = Task.all.sort_by{ |task| task.dateToDo}
        # tasks = Task.all
 
        render json: tasks.to_json(
            :include => {
                :user => {:only => [:id, :username]},
             },
            :except => [:updated_at, :created_at])

    end

    def show
        task = Task.find(params[:id])
        
        render json: task.to_json(
            :include => {
                :user => {:only => [:username]},
             },
            :except => [:updated_at, :created_at])
        
    end

    def create
        task = Task.create(task_params)
    
        render json: task
    end
      
    def update
        task = Task.find(params[:id])
    
        task.update(task_params)
    
        render json: task, except: [:updated_at, :created_at]
    end
    
    def destroy
        task = Task.find(params[:id])
    
        task.destroy
    
        render json: task
    end
    
      private
    
    def task_params
        params.require(:task).permit(:user_id, :title, :status, :dateToDo)
    end
end
