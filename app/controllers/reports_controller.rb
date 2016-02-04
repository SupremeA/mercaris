class ReportsController < ApplicationController

  def index
  end

  def import
    Report.import(params[:file])
    redirect_to root_url, notice: "Report has been imported."
  end
end
