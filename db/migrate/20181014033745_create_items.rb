class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.belongs_to :claimlist
      t.belongs_to :wantlist
      t.string :title
      t.text :description
      t.boolean :surprise

      t.timestamps
    end
  end
end
