class Reason < ActiveRecord::Base
  mount_uploader :photo, ImageUploader
end
