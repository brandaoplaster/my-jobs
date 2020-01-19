class PortfoliosController < ApplicationController
  before_action :load_portfolios, only: :index
  before_action :laod_portfolio, only: [:edit, :update]

  def index
    authorize(Portfolio)
  end

  def create
    build_portfolio
    authorize @portfolio
    @portfolio.save
    redirect_to edit_portfolios_path(@portfolio)
  end

  def edit
    @portfolio = policy_scope(Portfolio).find(params[:id])
    authorize @portfolio
  end

  private

  def build_portfolio
    @portfolio ||= portfolio_scope.build
    @portfolio.attributes = portfolio_params
  end

  def portfolio_params
    return {} unless params.has_key?(:portfolio)
    params.require(:portfolio).permit(:slug, :listed, :active, :remote_ok)
  end

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
