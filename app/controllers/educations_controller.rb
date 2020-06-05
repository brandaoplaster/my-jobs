class EducationsController < ApplicationController

  protected

    def portfolio_resource_params
      params.require(:education).permit(:title, :institution, :description, :start_date, :end_date)
    end
end
