class AboutsController < ApplicationController

  protected

  def build_portfolio_resource
    @portfolio.build_about
  end

  def portfolio_resource_params
    params.require(:about).permit(:description)
  end
end
