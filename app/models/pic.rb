class Pic < ActiveRecord::Base
  acts_as_votable
  belongs_to :user

  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/default-burning-house.jpg"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/


end
