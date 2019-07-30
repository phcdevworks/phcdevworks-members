class CreatePhcdevworksMembersDirectoryCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :phcdevworks_members_directory_categories do |t|

      t.string :category_name

      t.string :slug
      t.string :user_id
      t.string :org_id

      t.timestamps

    end
  end
end
