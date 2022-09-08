class CreatePlayersTable < ActiveRecord::Migration[6.1]
  def change
  create_table :players do |t|
    t.string "name"
    t.integer "age"
    t.string "race"
    t.string "nationality"
    t.integer "team_id"
  end

  end
end
