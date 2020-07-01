module SearchPortfoliosService
  class << self
    def call(options ={})
      @results = {}
      @filter = options
      perform_basic_search
      perform_featured_search
      @results
    end
  end
end