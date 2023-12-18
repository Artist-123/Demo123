class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :email
      t.string :fname
      t.string :lname
      t.string :mobile_number
      t.string :password
      t.string :password_digest

      t.timestamps
    end
  end
end
