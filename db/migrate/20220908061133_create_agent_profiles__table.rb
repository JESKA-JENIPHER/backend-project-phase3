class CreateAgentProfilesTable < ActiveRecord::Migration[6.1]
  def change
    create_table :agent_profiles do |t|
    t.integer "age"
    t.integer "years_of_experience"
    t.string "bio"
    t.integer "agent_id"
  end
  end
end
