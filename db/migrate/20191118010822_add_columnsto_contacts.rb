class AddColumnstoContacts < ActiveRecord::Migration[5.2]
  def change
    add_column :contacts, :company_name, :string
    add_column :contacts, :address, :string
    add_column :contacts, :phone_number, :string
    add_column :contacts, :email, :string
    add_column :contacts, :project_details, :string
  end
end
