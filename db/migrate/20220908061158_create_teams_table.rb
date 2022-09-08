class CreateTeamsTable < ActiveRecord::Migration[6.1]
  def change
  create_table :teams do |t|
    t.string "name"
    t.integer "year_founded"
    t.integer "agent_id"
    t.boolean "status"
  end
  end
end
