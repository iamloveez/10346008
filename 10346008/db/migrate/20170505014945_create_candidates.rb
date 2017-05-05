class CreateCandidates < ActiveRecord::Migration[5.1]
  def change
    create_table :candidates do |t|
      t.string :bookname
      t.text :introduction
      t.string :name
      t.integer :price, default: 0

      t.timestamps
    end
  end
end
