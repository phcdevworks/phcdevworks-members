class CreatePhcdevworksMembersCategoriesListings < ActiveRecord::Migration[6.0]
  def change
    create_table :phcdevworks_members_categories_lstings do |t|
      t.integer :category_id
      t.integer :listing_id
    end
  end
end
