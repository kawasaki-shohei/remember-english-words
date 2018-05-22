class CreateRows < ActiveRecord::Migration[5.1]
  def change
    create_table :rows do |t|
      t.text :word
      t.text :jpn
      t.text :sentense
      t.references :page, foreign_key: true

      t.timestamps
    end
  end
end
