class AddAttachmentPhotoToCrimeImages < ActiveRecord::Migration
  def self.up
    change_table :crime_images do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :crime_images, :photo
  end
end
