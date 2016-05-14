class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username, null: false
      t.string :email, null: false
      t.string :password_digest, null: false
      t.boolean :merchant, null: false
      t.string :photo_url
      t.string :biography

      t.timestamps null: false
    end
  end
end
