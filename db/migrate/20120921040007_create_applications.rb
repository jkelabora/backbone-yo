class CreateApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|
      t.string :name
      t.boolean :selected

      t.timestamps
    end
  end
end
