class PortfolioTag < ApplicationRecord
  belongs_to :portfolio
  belongs_to :tag

  validate :max_tags_for_portfolio
  validates :tag_id, uniqueness: { scope: :portfolio_id }

  private

  def max_tags_for_portfolio
    if portfolio.tags.count >= Portfolio::MAX_NUMBER_OF_TAGAS
      errors.add(:portfolio, "Can't have more than #{Portfolio::MAX_NUMBER_OF_TAGAS} tags")
    end
  end
end
