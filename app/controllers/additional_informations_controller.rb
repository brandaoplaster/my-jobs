class AdditionalInformationsController < PortfolioResoucesController

  protected

  def portfolio_resource_params
    params.require(:additional_information).permit(:title, :description)
  end
end
