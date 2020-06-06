class SkillsController < ApplicationController

  protected

  def build_portfolio_resource
    @portfolio.skills.build
  end

  def portfolio_resource_params
    params.require(:skill).permit(:title, :percent)
  end
end
