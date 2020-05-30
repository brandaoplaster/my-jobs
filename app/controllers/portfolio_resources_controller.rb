class PortfolioResourcesController < ApplicationController
  before_action :load_portfolio

  def index
    @resource = load_protfolio_resources
    authorize @portfolio, policy_class: PortfolioResourcePolicy
    render_resource(@resource)
  end

  def update
    @resource = load_protfolio_resource
    authorize @resource.portfolio
    @resource.attributes = portfolio_resource_params
    save_resource || render_error(resource.errors.full_message)
  end

  private
  
    def save_resource
      if @resource.save
        render_resource(@resource)
      end
    end

    def destroy_resource
      if @resource.destroy
        head :ok
      end
    end

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
