class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :number
      t.string :name
      t.string :url

      t.timestamps
    end
  end
end
