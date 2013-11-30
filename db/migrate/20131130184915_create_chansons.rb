class CreateChansons < ActiveRecord::Migration
  def change
    create_table :chansons do |t|
      t.string :titre, limit: 255
      t.text :parole

      t.timestamps
    end
  end
end
