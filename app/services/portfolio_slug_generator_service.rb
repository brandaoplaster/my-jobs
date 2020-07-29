class PortfolioSlugGeneratorService
  def call
    loop do
      @slug = SecureRandom.hex(10)
      break unless Portfolio.where(slug: @slug).exist?
    end
    @slug
  end
end
