# This migration comes from phcdevworks_accounts (originally 20190701120045)
class AddTermsToUsers < ActiveRecord::Migration[6.0]
  def change
  
    add_column :phcdevworks_accounts_users, :terms_of_service, :boolean
  
  end
end
