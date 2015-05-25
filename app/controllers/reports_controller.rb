class ReportsController < ApplicationController
  before_action :set_report, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    if params[:tag]
      @reports = @user.reports.tagged_with(params[:tag])
    else
      @reports = @user.reports.all
    end
    respond_with(@reports)
  end
  
  
  def show
    respond_with(@report)
  end
    

  def new
    @report = Report.new
    @report.report_images.build
    respond_with(@report)
  end

  def edit
  end

  def create
    @report = Report.new(report_params)
    @report.user = @user
    @report.status_id = 1
    @report.active = true
    @report.save
    respond_with(@report)
  end

  def update
    @report.update(report_params)
    respond_with(@report)
  end

  def destroy
    @report.destroy
    respond_with(@report)
  end

  private
    def set_report
      @report = Report.find(params[:id])
    end

    def report_params
      params.require(:report).permit(:name, :description, :category_id, :user_id, :district_id, :details, :status_id, :report_images, :tag_list, :latitude, :longitude,:address, :report_images_attributes, :active)
    end
end
