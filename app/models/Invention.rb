class Invention < ActiveRecord::Base
  has_many :bits, through: :manifests
  validates :title, presence: true
  validates :description, presence: true
  validates :title, length: { maximum: 255, too_long: "255 characters is the maximum allowed" }
  validates :user_name, length: { maximum: 255, too_long: "255 characters is the maximum allowed" }
  validates :email, length: { maximum: 255, too_long: "255 characters is the maximum allowed" }

  has_and_belongs_to_many :bits
  has_and_belongs_to_many :other_materials
end
