class Post < ApplicationRecord
  belongs_to :user

  validates :title,
  presence: true,
  length: {in: 10..100}

  validates :link,
  presence: true,
  format: { with: /^(http|https|ftp|ftps):\/\/(([a-z0-9]+\:)?[a-z0-9]+\@)?[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(([0-9]{1,5})?\/.*)?$/ix }



end
