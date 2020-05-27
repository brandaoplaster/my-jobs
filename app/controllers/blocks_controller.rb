class BlocksController < ApplicationController
	before_action :load_portfolio

	def index
		render json: { blocks: @portfolio.blocks }
	end

	private

	def build_block
		@block = @portfolio.blocks.build
		@block.attributes = block_params
	end

	def save_block
		@block.save && render(json: { json: block: @block }, status: :ok)
	end

	def block_params
		params.require(:block).permit(:kind, :side)
	end

	def render_error
		render json: { errors: @block.errors.full_messages }, status: :unprocessable_entity
	end

	def load_portfolio
		@portfolio = policy_scope(Portfolio).find(params[:portfolio_id])
		authorize @portfolio
	end
end
