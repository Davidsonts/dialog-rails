class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :nome
      t.date :idade
      t.integer :sexo
      t.string :cidade
      t.integer :uf

      t.timestamps
    end
  end
end
