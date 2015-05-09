class CreateReportImages < ActiveRecord::Migration
  def change
    create_table :report_images do |t|
      t.text :description
      t.references :report, index: true

      t.timestamps
    end
  end
end
