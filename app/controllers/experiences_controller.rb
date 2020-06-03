class ExperiencesController < ApplicationController

  protected

    def load_portfolio_resources
      @portfolio.experiences
    end
end
