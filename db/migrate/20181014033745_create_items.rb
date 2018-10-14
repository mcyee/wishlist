class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.belongs_to :claimlist, optional: true
      t.belongs_to :wantlist
      t.string :title,         null: false, default: ""
      t.text :description,     null: false, default: ""
      t.boolean :surprise,     null: false, default: false

      t.timestamps
    end
  end
end
