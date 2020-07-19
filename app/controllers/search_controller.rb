class SearchController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @portfolios = SearchPortolfioService.call(search_params)
  end

  private
    def search_params
      params['pages'] ||= 1
      params.permit(:tag, :place, :remote_ok, :page)
    end
end
