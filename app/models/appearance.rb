class Appearance < ApplicationRecord
belongs_to :episode
belongs_to :guest

validates :rating, numericality: {less_than: 6, greater_than: 0}
end
