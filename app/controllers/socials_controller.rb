class SocialsController < PortfolioResourcesController

  protected

  def portfolio_resource_params
    params.require(:social).permit(:kind, :url)
  end
end
