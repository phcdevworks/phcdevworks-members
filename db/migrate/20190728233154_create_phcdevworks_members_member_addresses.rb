class CreatePhcdevworksMembersMemberAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :phcdevworks_members_member_addresses do |t|

      t.string :member_address_line_1
      t.string :member_address_line_2
      t.string :member_address_city
      t.string :member_address_province
      t.string :member_address_country
      t.string :member_address_postal_code
      t.string :member_address_type

      t.string :slug
      t.string :user_id
      t.string :org_id

      t.references :profile

      t.timestamps

    end
  end
end
