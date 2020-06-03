class ExperiencesController < ApplicationController

  protected

    def load_portfolio_resources
      @portfolio.experiences
    end

    def load_portfolio_resource
      @portfolio.experiences.find(params[:id])
    end

    def build_portfolio_resource
      @portfolio.experiences.build
    end
end
