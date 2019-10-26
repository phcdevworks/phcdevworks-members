class CreatePhcdevworksMembersMemberAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :phcdevworks_members_member_addresses do |t|

      t.string :address_line_1
      t.string :address_line_2
      t.string :address_city
      t.string :address_province
      t.string :address_country
      t.string :address_postal_code
      t.string :address_type

      t.string :slug
      t.string :user_id
      t.string :org_id

      t.references :profile

      t.timestamps

    end
  end
end
