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

    def search_by_place
      @basic_search.joins(:contact)
      @basic_search.where!("contacts.address_country = :place OR contacts.address_city = :place", place: @filters[:place])
    end
  end
end