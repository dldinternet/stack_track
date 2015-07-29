class CreateStacks < ActiveRecord::Migration
  def change
    create_table :stacks do |t|
      t.string :name
      t.string :environment_type
      t.references :account, index: true
      t.string :environment

      t.timestamps
    end
  end
end
