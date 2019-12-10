class Social < ApplicationRecord
  belongs_to :portfolio

  enum kind: [:facebook, :twitter, :linkedin, :github, :other, :instagram]
end
