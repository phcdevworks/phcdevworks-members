class CreatePhcdevworksMembersMemberListings < ActiveRecord::Migration[6.0]
  def change
    create_table :phcdevworks_members_member_listings do |t|

      t.string :member_listing_company_name
      t.string :member_listing_contact_name

      t.string :member_listing_address_line_1
      t.string :member_listing_address_line_2
      t.string :member_listing_city
      t.string :member_listing_country
      t.string :member_listing_province
      t.string :member_listing_postal_code

      t.string :member_listing_phone
      t.string :member_listing_contact_email
      t.string :member_listing_website

      t.string :optimization_id

      t.string :slug
      t.string :user_id
      t.string :org_id

      t.references :profile

      t.timestamps

    end
  end
end
