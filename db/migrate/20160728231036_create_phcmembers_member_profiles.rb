class CreatePhcmembersMemberProfiles < ActiveRecord::Migration[6.0]
  def change

    create_table :phcmembers_member_profiles do |t|

      t.string :member_first_name
      t.string :member_last_name
      t.string :member_title
      t.string :member_email
      t.string :member_phone
      t.string :member_notes

      t.string :slug

      t.string :user_id
      t.string :org_id
      t.timestamps

    end

  end
end
