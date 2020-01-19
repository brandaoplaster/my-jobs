class PortfoliosController < ApplicationController
  before_action :load_portfolios, only: :index
  before_action :laod_portfolio, only: [:edit, :update]

  def index
    authorize(Portfolio)
  end

  def create
    slug_generator = PortfolioSlugGeneratorService.new().call
    @portfolio = current_user.portfolios.create(slug: slug_generator)
    redirect_to edit_portfolios_path(@portfolio)
  end

  def edit
    @portfolio = policy_scope(Portfolio).find(params[:id])
    authorize @portfolio
  end

  private

  def load_portfolio
    @portfolio = portfolio_scope.find(params[:id])
  end

  def load_portfolios
    @portfolios = portfolio_scope.all
  end

  def portfolio_scope
    policy_scope(Portfolio)
  end
end
