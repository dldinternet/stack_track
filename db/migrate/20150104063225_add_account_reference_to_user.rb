class AddAccountReferenceToUser < ActiveRecord::Migration
  def migrate(direction)
    super
    if direction == :up
      user = User.find_by_username('admin')
      user.account = Account.last
      user.save!
    end
  end

  def change
    add_reference :users, :account, index: true
  end
end
