class PortfolioResourcesController < ApplicationController
  before_action :load_portfolio

  private
    
    def render_resource
      render json: { resource: resource }
    end

    def render_error(message)
      render json: { errors: message }, status: :unprocessable_entity
    end

    def load_portfolio
      @portfolio = Portfolio.find(params[:portfolio_id])
    end
end
