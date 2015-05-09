class ReportImagesController < ApplicationController
    private 
    def set_report
      @report = Report.find(params[:id])
    end

    def report_params
      params.require(:report_image).permit(:description, :photo)
    end
end
