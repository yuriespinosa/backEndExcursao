class CreateVeiculos < ActiveRecord::Migration[6.0]
  def change
    create_table :veiculos do |t|
      t.string :nome
      t.integer :limite_passageiro
      t.float :valor

      t.timestamps
    end
  end
end
