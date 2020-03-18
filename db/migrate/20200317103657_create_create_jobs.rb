class CreateCreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :create_jobs do |t|
      t.string :name
      t.string :position
      t.string :annual_salary
      t.string :contract_time 
     


      t.timestamps
    end
  end
end
