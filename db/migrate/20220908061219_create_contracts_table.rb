class CreateContractsTable < ActiveRecord::Migration[6.1]
  def change
  create_table :contracts do |t|
    t.integer "contract_duration"
    t.integer "worth"
    t.integer "agent_id"
    t.integer "player_id"
  end
  end
end
