class CreateExcursaos < ActiveRecord::Migration[6.0]
  def change
    create_table :excursaos do |t|
      t.string :nome
      t.date :partida
      t.date :chegada
      t.references :veiculo
      t.integer :qtdveiculos
      t.string :destino


      t.timestamps
    end
  end
end
