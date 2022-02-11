class Article < ApplicationRecord
  include Visible

  has_many :comments, dependent: :destroy

  VALID_STATUSES = %w[public private archived].freeze

  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
  validates :status, inclusion: { in: VALID_STATUSES }


end
