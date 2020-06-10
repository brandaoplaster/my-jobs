class LanguagesController < ApplicationController

  protected

  def load_portfolio_resource
    @portfolio.languages.find(params[:id])
  end

  def build_portfolio_resource
    @portfolio.languages.build
  end

  def portfolio_resource_params
    params.require(:language).permit(:title, :percent)
  end
end
