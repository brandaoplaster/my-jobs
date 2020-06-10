class LanguagesController < ApplicationController

  protected

  def portfolio_resource_params
    params.require(:language).permit(:title, :percent)
  end
end
