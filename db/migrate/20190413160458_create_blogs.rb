class CreateBlogs < ActiveRecord::Migration[5.2]
  def change
    create_table :blogs do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.string :summary
      t.string :content
      t.integer :status

      t.timestamps
    end
  end
end
