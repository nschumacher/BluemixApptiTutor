class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :email
      t.boolean :isTutor
      t.boolean :recieveReminders
      t.string :profilePicture
      t.string :passwordRecoverQuestion1
      t.string :passwordRecoverQuestion2
      t.string :passwordRecoverAnswer1
      t.string :passwordRecoverAnswer2
      t.boolean :isStudent
      t.string :aboutMe

      t.timestamps null: false
    end
  end
end
