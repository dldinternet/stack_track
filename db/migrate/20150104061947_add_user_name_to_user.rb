class AddUserNameToUser < ActiveRecord::Migration
  def migrate(direction)
    super
    # Create a default username
    if direction == :up
      user = User.find_by_email('admin@example.com')
      user.username = 'admin'
      user.save!
    end

  end

  def change
    add_column :users, :username, :string, limit: 64
  end
end
