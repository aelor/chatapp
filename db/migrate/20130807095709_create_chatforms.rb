class CreateChatforms < ActiveRecord::Migration
  def change
    create_table :chatforms do |t|
      t.text :content

      t.timestamps
    end
  end
end
