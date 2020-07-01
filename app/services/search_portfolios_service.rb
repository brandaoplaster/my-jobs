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

    def perform_featured_search
      @results[:featured] = @basic_search.where(featured: true).order("RANDOM()").limit(2)
      @results[:general] = @basic_search.where(featured: false).page(@filters[:page])
    end

    def search_by_tags
      @basic_search.joins(:tags).where!(tags: { title: @filters[:tag] })
    end

    def search_by_place
      @basic_search.joins(:contact)
      @basic_search.where!("contacts.address_country = :place OR contacts.address_city = :place", place: @filters[:place])
    end

    def search_by_remote_ok
      @basic_search.where!(remote_ok: true)
    end
  end
end