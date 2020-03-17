class CreateApplies < ActiveRecord::Migration[5.2]
  def change
    create_table :applies do |t|
      t.string :name
      t.string :age
      t.string :position
      t.string :phone
         t.string :email
    

      t.timestamps
    end
  end
end
