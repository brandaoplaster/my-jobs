class PortfoliosController < ApplicationController
  before_action :load_portfolios, only: :index

  def index
    authorize(Portfolio)
    @portfolios = policy_scope(Portfolio)
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
end
