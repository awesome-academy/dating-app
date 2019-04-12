class CreateInformationUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :information_users do |t|
      t.string :first_name
      t.references :interest_in_gender, foreign_key: true

      t.timestamps
    end
  end
end
