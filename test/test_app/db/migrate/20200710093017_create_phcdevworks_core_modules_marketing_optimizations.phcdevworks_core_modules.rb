# This migration comes from phcdevworks_core_modules (originally 20200705223718)
class CreatePhcdevworksCoreModulesMarketingOptimizations < ActiveRecord::Migration[6.0]
  def change
    create_table :phcdevworks_core_modules_marketing_optimizations do |t|

      t.string :seo_title
      t.text :seo_description

      t.string :seo_open_graph_post_type
      t.string :seo_open_graph_url
      t.string :seo_open_graph_title
      t.text :seo_open_graph_description

      t.string :seo_twitter_post_type
      t.string :seo_twitter_url
      t.string :seo_twitter_title
      t.text :seo_twitter_description

      t.string :slug
      t.string :user_id
      t.string :org_id

      t.timestamps

    end
  end
end
