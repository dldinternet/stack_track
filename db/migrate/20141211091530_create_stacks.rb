class CreateStacks < ActiveRecord::Migration
  def change
    create_table :stacks do |t|
      t.string :name
      t.string :env_type
      t.references :account, index: true

      t.timestamps
    end
  end
end
