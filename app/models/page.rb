class Page < ActiveRecord::Base
  mount_uploader :page, PageUploader
  belongs_to :comix
end
