class Film < ApplicationRecord
  belongs_to :category

  paginates_per 2
end
