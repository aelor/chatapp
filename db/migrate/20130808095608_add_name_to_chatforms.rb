class AddNameToChatforms < ActiveRecord::Migration
  def change
    add_column :chatforms, :name, :string
  end
end
