class CreateLists < ActiveRecord::Migration[5.2]
  def change
    create_table :lists do |t|
      t.belongs_to :user
      t.string :type

      t.timestamps
    end

    add_foreign_key :lists, :users
  end
end
