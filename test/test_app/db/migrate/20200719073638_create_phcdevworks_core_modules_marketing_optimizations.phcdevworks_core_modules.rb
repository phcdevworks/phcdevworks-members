# This migration comes from phcdevworks_core_modules (originally 20200705223718)
class CreatePhcdevworksCoreModulesMarketingOptimizations < ActiveRecord::Migration[6.0]
  def change
    create_table :phcdevworks_core_modules_marketing_optimizations do |t|

      t.string :marketing_optimization_page_title
      t.text :marketing_optimization_page_description

      t.string :marketing_optimization_og_title
      t.text :marketing_optimization_og_description
      t.string :marketing_optimization_og_type
      t.string :marketing_optimization_og_url

      t.string :marketing_optimization_twitter_title
      t.text :marketing_optimization_twitter_description
      t.string :marketing_optimization_twitter_type
      t.string :marketing_optimization_twitter_url

      t.string :slug
      t.string :user_id
      t.string :org_id

      t.timestamps

    end
  end
end
