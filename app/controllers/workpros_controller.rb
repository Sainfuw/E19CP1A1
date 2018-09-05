class WorkprosController < ApplicationController
	before_action :authenticate_admin!

	def create
		@worker_id = params[:workpro][:worker_id]
		@project_id = params[:project_id]
		@workpro = Workpro.new()
		@workpro.worker_id = @worker_id
		@workpro.project_id = @project_id
		@workpro.save
		redirect_to project_path(Project.find(@project_id))
	end

	def destroy
		@worker_id = params[:id]
		@project_id = params[:project_id]
		@workpro = Workpro.find_by(["worker_id = ? and project_id = ?", @worker_id, @project_id])
		@workpro.destroy
		redirect_to project_path(Project.find(@project_id))
	end

	private
	def workpro_params
		params.require(:workpro).permit(:worker_id)
	end
end
