class CreateSubject < ActiveRecord::Migration[6.1]
  def change
      create_table :subjects do |t|
        t.string :name
        t.string :ID
    
        t.timestamps
      end
    end
  end

