class Comment < ApplicationRecord
  include Visible

  belongs_to :article

  VALID_STATUSES = %w[public private archived].freeze

  validates :status, inclusion: { in: VALID_STATUSES }

end
