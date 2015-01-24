class Comix < ActiveRecord::Base
  belongs_to :publisher
  has_and_belongs_to_many :genres
  has_many :pages
  accepts_nested_attributes_for :pages

  validates :title, :year, :language, :publisher_id, presence: true
end
