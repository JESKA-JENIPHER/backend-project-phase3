class CreateAgentsTable < ActiveRecord::Migration[6.1]
  def change
 create_table :agents do |t|
    t.string "name"
    t.integer "id_number"
    t.integer "private_contact"
    t.integer "public_contact"
    t.integer "team_id"
  end
  end
end
