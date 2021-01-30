class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :fname
      t.string :lastname
      t.string :email, null: false

      t.timestamps
    end
  end
end
