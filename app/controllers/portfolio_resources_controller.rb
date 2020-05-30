class PortfolioResourcesController < ApplicationController
  before_action :load_portfolio

  private
    
    def load_portfolio
      @portfolio = Portfolio.find(params[:portfolio_id])
    end
end
