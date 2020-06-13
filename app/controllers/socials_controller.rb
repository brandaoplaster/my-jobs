class SocialsController < PortfolioResourcesController

  protected

  def build_portfolio_resource
    @portfolio.socials.buils
  end

  def portfolio_resource_params
    params.require(:social).permit(:kind, :url)
  end
end
