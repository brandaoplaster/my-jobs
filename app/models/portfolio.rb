class Portfolio < ApplicationRecord
  MAX_NUMBER_OF_TAGAS = 4

  belongs_to :user

  validates :slug, presence: true, uniqueness: true
  validates :tags, length: { in: 0..MAX_NUMBER_OF_TAGAS, messages: "can't have  more  that #{MAX_NUMBER_OF_TAGAS} tags" }

  enum temp_avatar: { blue_robot: 0, green_robot: 1, orange_red_robot: 2, purple_robot: 3, red_robot: 4, yellow_robot: 5 }

  before_create :set_random_temp_avatar

  private

  def set_random_temp_avatar
    avatars_list = Portfolio.temp_avatars.keys
    self.temp_avatar = avatars_list
  end

end
