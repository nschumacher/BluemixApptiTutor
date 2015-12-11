class AddFieldsToUserlogins < ActiveRecord::Migration
  def change
    add_column :userlogins, :isTutor, :boolean
    add_column :userlogins, :recieveReminders, :boolean
    add_column :userlogins, :profilePicture, :string
    add_column :userlogins, :passwordRecoverQuestion1, :string
    add_column :userlogins, :passwordRecoverQuestion2, :string
    add_column :userlogins, :passwordRecoverAnswer1, :string
    add_column :userlogins, :passwordRecoverAnswer2, :string
    add_column :userlogins, :isStudent, :boolean
    add_column :userlogins, :aboutMe, :string
  end
end
