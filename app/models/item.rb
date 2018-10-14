class Item < ApplicationRecord
  validates :title, :presence => true

  belongs_to :claimlist, optional: true
  belongs_to :wantlist
end
