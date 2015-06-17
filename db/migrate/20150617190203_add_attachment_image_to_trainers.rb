class AddAttachmentImageToTrainers < ActiveRecord::Migration
  def self.up
    change_table :trainers do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :trainers, :image
  end
end
