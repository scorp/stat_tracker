class InitialSchema < ActiveRecord::Migration
  def self.up
    create_table :statistics do |t|
      t.integer :user_id
      t.string :title
      t.text :description
      t.timestamps
    end
    
    create_table :occurences do |t|
      t.integer :statistic_id
      t.timestamp :occured_on
      t.integer :value
      t.text :note
      t.timestamps
    end
    
  end

  def self.down
    drop_table :statistics, :occurences
  end
end
