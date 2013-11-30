class CreateChanteurs < ActiveRecord::Migration
  def change
    create_table :chanteurs do |t|
      t.string :nom, limit: 70
      t.string :prenom, limit: 70
      t.date :dtnaissance
      t.date :dtdeces
      t.string :villeNaissance, limit: 70

      t.timestamps
    end
  end
end
