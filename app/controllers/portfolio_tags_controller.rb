class PortfolioTagsController < ApplicationController

  def create
    build_portfolio_tag
    authorize @portfolio_tag
    save_portfolio_tag || render_error(@portfolio_tag.errors.full_messages)
  end

  def destroy

  end

  private

  def save_portfolio_tag
    if @portfolio_tag.save
      head :ok
    end
  end

  def build_portfolio_tag
    @portfolio_tag = portfolio_tags_scope.build
    @portfolio_tag.tag_id = params[:tags_id]
  end
end
