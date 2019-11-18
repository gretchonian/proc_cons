class UpdateColumnProjectDetails < ActiveRecord::Migration[5.2]
  def change
    change_column :contacts, :project_details, :text
  end
end
