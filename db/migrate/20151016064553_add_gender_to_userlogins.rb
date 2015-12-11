class AddGenderToUserlogins < ActiveRecord::Migration
  def change
    add_column :userlogins, :gender, :string
  end
end
