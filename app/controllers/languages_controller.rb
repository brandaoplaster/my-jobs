class LanguagesController < ApplicationController

  protected

  def build_portfolio_resource
    @portfolio.languages.build
  end

  def portfolio_resource_params
    params.require(:language).permit(:title, :percent)
  end
end
