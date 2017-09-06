class DashboardsController < ApplicationController

	before_action :set_dashboard, only: [:show, :edit, :update, :destroy]

	def index
		@dashboards = Dashboard.all
	end

	def show
		@dashboard = Dashboard.find(params[:id])
	end

	def new
		@dashboard = Dashboard.new
	end

	def edit
	end

	def create
		@dashboard = Dashboard.new(dashboard_params)

		respond_to do |format|
			if @dashboard.save
				format.html { redirect_to dashboards_path, notice: "Video was successfully uploaded" }
			else
				format.html { redirect_to new_dashboard_path, notice: "Video failed to upload" }
			end
		end	
	end

	def destroy
		@dashboard.destroy
		respond_to do |format|
			format.html { redirect_to dashboards_path, notice: "Video was successfully deleted"}
		end
	end

	private

	def dashboard_params
  	params.require(:dashboard).permit(:title,:description,:video)
  end

  def set_dashboard
      @dashboard = Dashboard.find(params[:id])
    end

end
