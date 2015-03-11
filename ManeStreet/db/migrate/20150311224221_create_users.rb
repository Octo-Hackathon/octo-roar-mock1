class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :email
      t.text :address
      t.string :password
      t.string :photo
      t.references :usertype, index: true
      t.timestamps null: false
    end
  end
end
