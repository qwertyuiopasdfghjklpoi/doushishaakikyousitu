class AddIpToDogs < ActiveRecord::Migration[6.1]
  def change
    add_column :dogs, :ip, :string
  end
end
