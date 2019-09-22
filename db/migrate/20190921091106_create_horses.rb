class CreateHorses < ActiveRecord::Migration[5.2]
  def change
    create_table :horses do |t|
      t.string :horse_id
      t.string :horse_name
      t.string :sex
      t.date :birthday
      t.integer :all
      t.integer :win
      t.integer :second
      t.integer :third
      t.integer :other
      t.integer :money, :limit => 8
      t.string :gwin
      t.integer :ghistory
      t.string :production
      t.string :ml
      t.string :ml2
      t.string :ml3a
      t.string :fml3a
      t.string :fml2
      t.string :ml3b
      t.string :fml3b
      t.string :fml_f
      t.string :ml2_f
      t.string :fml2_f
      t.string :ml3a_f
      t.string :fml3a_f
      t.string :ml3b_f
      t.string :fml3b_f

      t.timestamps
    end
  end
end
