class AddInformationsToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :date_of_birth, :date
    add_column :users, :about_you, :text
    add_column :users, :budget, :integer
    add_column :users, :address, :string
    add_column :users, :occupation, :string
    add_column :users, :family_status, :integer
  end
end
