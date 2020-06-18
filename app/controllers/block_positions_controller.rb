class BlockPositionsController < ApplicationController
  before_action :load_portfolio

  private
  
  def load_portfolio
    @portfolio = policy_scope(Portfolio).find(params[:portfolio_id])
    authorize @portfolio, policy_class: PortfolioResourcePolicy
  end

  def block_params
    params.permit(blocks: [:id, :position])
  end
end
