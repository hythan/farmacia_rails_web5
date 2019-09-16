class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.float :weight
      t.string :gender

      t.timestamps
    end
  end
end
