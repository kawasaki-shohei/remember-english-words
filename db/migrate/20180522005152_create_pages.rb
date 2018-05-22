class CreatePages < ActiveRecord::Migration[5.1]
  def change
    create_table :pages do |t|
      t.text :title
      t.text :url

      t.timestamps
    end
  end
end
