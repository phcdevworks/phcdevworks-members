# This migration comes from phcdevworks_core_modules (originally 20200706094820)
class CreatePhcdevworksCoreModulesPostCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :phcdevworks_core_modules_post_categories do |t|

      t.string :category_name

      t.string :slug
      t.string :user_id
      t.string :org_id

      t.string :optimization_id

      t.timestamps

    end
  end
end
