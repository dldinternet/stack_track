class CreateAccounts < ActiveRecord::Migration
  def migrate(direction)
    super
    # Create a default account
    Account.create!(number: '1234567890', name: 'account', login_url: 'https://console.aws.amazon.com') if direction == :up
  end

  def change
    create_table :accounts do |t|
      t.integer :number
      t.string :name, limit: 64
      t.string :login_url

      t.timestamps
    end
    add_index :accounts, :number, unique: true
  end
end
