require 'carrierwave'
require 'carrierwave/orm/activerecord'

class ImagePost < ApplicationRecord

  belongs_to :user
  mount_uploader :image, ImagePostUploader

end
