class CreatePhcdevworksMembersMemberProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :phcdevworks_members_member_profiles do |t|

      t.string :profile_first_name
      t.string :profile_last_name
      t.string :profile_title
      t.string :profile_email
      t.string :profile_phone
      t.text :profile_notes

      t.string :slug
      t.string :user_id
      t.string :org_id

      t.timestamps

    end
  end
end
