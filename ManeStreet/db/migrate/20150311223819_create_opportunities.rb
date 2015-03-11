class CreateOpportunities < ActiveRecord::Migration
  def change
    create_table :opportunities do |t|
      t.string :title
      t.string :type
      t.text :description
      t.string :setaside
      t.datetime :publishdate
      t.date :responseduedate
      t.string :status
      t.string :buyername
      t.string :placeofperform
      t.string :primaypoc
      t.references :user, index: true
      t.timestamps null: false
    end
  end
end
