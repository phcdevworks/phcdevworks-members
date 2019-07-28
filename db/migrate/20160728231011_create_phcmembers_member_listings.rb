class CreatePhcmembersMemberListings < ActiveRecord::Migration[6.0]
  def change

    create_table :phcmembers_member_listings do |t|

      t.string :listing_company_name
      t.string :listing_contact_name
      t.string :listing_address_line_1
      t.string :listing_address_line_2
      t.string :listing_city
      t.string :listing_province
      t.string :listing_country
      t.string :listing_postal_code
      t.string :listing_phone
      t.string :listing_contact_email
      t.string :listing_website

      t.references :profile

      t.string :slug

      t.string :user_id
      t.string :org_id
      t.timestamps

    end

  end
end
