class Testimonial < ActiveRecord::Base
  has_attached_file :image, :styles => {:large => "600x600>", :medium => "300x300>", :thumb => "200x200>" }
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  belongs_to :user
end
