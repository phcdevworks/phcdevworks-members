# This migration comes from phcdevworks_core_modules (originally 20210208130113)
class CreatePhcdevworksCoreModulesAffiliateLinks < ActiveRecord::Migration[6.1]
  def change
    create_table :phcdevworks_core_modules_affiliate_links do |t|

      t.string :affiliate_link_name
      t.string :affiliate_link_button_text
      t.string :affiliate_link_url
      t.string :affiliate_link_original_url

      t.string :slug
      t.string :user_id
      t.string :org_id

      t.timestamps

    end
  end
end
