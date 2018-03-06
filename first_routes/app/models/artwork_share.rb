# == Schema Information
#
# Table name: artwork_shares
#
#  id         :integer          not null, primary key
#  viewer_id  :integer          not null
#  artwork_id :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ArtworkShare < ApplicationRecord
  validates :artwork_id, presence: true
  validates :viewer_id, presence: true

  belongs_to :viewer,
    class_name: :User,
    primary_key: :id,
    foreign_key: :viewer_id

  belongs_to :artwork,
    class_name: :Artwork,
    primary_key: :id,
    foreign_key: :artwork_id
end
