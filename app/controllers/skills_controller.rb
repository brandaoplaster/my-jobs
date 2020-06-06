class SkillsController < ApplicationController

  protected

  def portfolio_resource_params
    params.require(:skill).permit(:title, :percent)
  end
end
