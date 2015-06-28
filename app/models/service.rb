class Service < ActiveRecord::Base
  has_attached_file :image, :styles => {:large => "600x600>", :medium => "300x300>", :thumb => "200x200>" }
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  extend FriendlyId
  friendly_id :title, use: :slugged
  belongs_to :user

  def should_generate_new_friendly_id?
    title_changed?
  end
end
