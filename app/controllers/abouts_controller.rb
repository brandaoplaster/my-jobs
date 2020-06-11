class AboutsController < ApplicationController

  protected

  def portfolio_resource_params
    params.require(:about).permit(:description)
  end
end
