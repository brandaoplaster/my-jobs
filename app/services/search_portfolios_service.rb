module SearchPortfoliosService
  class << self
    def call(options ={})
      @results = {}
      @filters = options
      perform_basic_search
      perform_featured_search
      @results
    end

    private

    def search_by_tags
      @basic_search.joins(:tags).where!(tags: { title: @filters[:tag] })
    end
  end
end