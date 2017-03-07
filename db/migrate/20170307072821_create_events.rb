class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :name
      t.datetime :date
      t.time :hour
      t.boolean :cupo
      t.string :type_event
      t.string :price
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
