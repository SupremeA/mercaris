class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.string :contract
      t.date :start_time
      t.date :end_time
      t.string :source
      t.decimal :price, :precision => 2, :scale => 8

      t.timestamps null: false
    end
  end
end
