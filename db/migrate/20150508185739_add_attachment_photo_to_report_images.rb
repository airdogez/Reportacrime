class AddAttachmentPhotoToReportImages < ActiveRecord::Migration
  def self.up
    change_table :report_images do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :report_images, :photo
  end
end
