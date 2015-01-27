class Page < ActiveRecord::Base
  mount_uploader :page, PageUploader
  belongs_to :comix

  self.per_page = 1
end
