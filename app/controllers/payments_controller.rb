class PaymentsController < ApplicationController
  before_action :set_portfolio

  def index
    @order = @portfolio.order
  end

  def create
  end

  private
    def set_portfolio
      @portfolio = Portfolio.where(id: params[:id], user_id: current_user).first
      redirect_to portfolio_path unless @portfolio.present?
    end
end
