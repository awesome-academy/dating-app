class CreateUserPhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :user_photos do |t|
      t.text :link
      t.boolean :active
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
