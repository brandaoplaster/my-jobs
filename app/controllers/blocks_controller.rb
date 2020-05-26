class BlocksController < ApplicationController
	before_action :load_portfolio

	def index
		render json: { blocks: @portfolio.blocks }
	end

	private

	def load_portfolio
		@portfolio = policy_scope(Portfolio).find(params[:portfolio_id])
		authorize @portfolio
	end
end
