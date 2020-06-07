class HobbiesController < ApplicationController

  protected

  def portfolio_resource_params
    params.require(:hobby).permit(:title, :percent)
  end
end
