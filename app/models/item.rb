class Item < ApplicationRecord
  validates :title, :presence => true

  belongs_to :claimlist
  belongs_to :wantlist
end
