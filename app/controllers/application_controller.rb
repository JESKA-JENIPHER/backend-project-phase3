class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
get '/' do
    %{
    The list of endpoints:
      
      GET requests:
      /players
      /agents
      /teams
      /players/:id
      /teams/:id
      /agents/:id

      POST requests:
      /players
      /agents
      /teams

      DELETE requests:
      /players/:id
      /agents/:id
      /teams/:id

      PATCH requests
      /players/:id
        players patches only name and age
      /agents/:id
        agents patches only name, years of experience, fee
      /teams/:id
        teams patches only name, year founded

      PUT requests
      same endpoints as patch requests but will change all the relevant fields
      }
  end

  get '/players' do
    all_players = Player.all
    all_players.to_json(only: [:id, :name, :age, :race, :nationality, :agent_id, :team_id])
  end
  get '/agents' do
    all_agents = Agent.all
    all_agents.to_json(only: [:id, :name, :years_of_experience, :fee])
  end
  get '/teams' do
    all_teams = Team.all
    all_teams.to_json(only: [:id, :name, :year_founded])
  end
  get '/contracts' do
    all_contracts = Contract.all
    all_contracts.to_json(only: [:id, :contract_duration, :worth, :agent_id, :player_id])
  end
    get '/agent_profiles' do
    all_profiles = Agent_profile.all
    all_profiles.to_json(only: [:id, :age, :years_of_experience, :bio, :agent_id])
  end

  get "/players/:id" do
    all_players = Player.find(params[:id])
    all_players.to_json(only: [:id, :name, :age, :slogan, :role_played, :image_url])
  end

 get '/agents/:id' do
    all_agents = Agent.all
    all_agents.to_json(only: [:id, :name, :years_of_experience, :fee])
  end
  
  get '/teams/id' do
    all_teams = Team.all
    all_teams.to_json(only: [:id, :name, :year_founded])
  end
    get '/agent_profiles/id' do
    all_profiles = Agent_profile.all
    all_profiles.to_json(only: [:id, :age, :years_of_experience, :bio, :agent_id])
  end

#  get '/players/agents' do
#     all_players = Player.find(params[:id])
#     all_players.to_json(only: [:id, :name, :age, :agent_id, :team_id], include: {agents: {only: [:name]}})
#   end
  # get '/agents/edit/:id' do
  #   single_agent = Agent.find(params[:id])
  #   single_agent.to_json(only: [:id, :name, :years_of_experience,:fee], include: {contract: {only: [:player_id], include: {player: [:name]}}})
  # end

  # get '/teams/edit/:id' do
  #   single_team = Team.find(params[:id])
  #   single_team.to_json(only: [:id, :name, :total_units, :year_founded], include: {players: {only: [:name]}})
  # end

# //POST

  post '/players' do
    player_deets = Player.create(
      name: params[:name],
      age: params[:age],
      race: params[:race],
      natonality: params[:nationality],
      agent_id: params[:agent_id],
      team_id: params[:team_id]
    )
    player_deets.to_json
  end

  post '/agents' do
    agent_deets = Agent.create(
      name: params[:name],
      years_of_experience: params[:years_of_experience]
    )
    agent_deets.to_json
  end

  post'/teams' do
    team_deets = Team.create(
      name: params[:name],
      years_of_experience: params[:years_of_experience]
    )
    team_deets.to_json
  end

  post '/contracts' do
    contract_deets = Contract.create(
      contract_duration: params[:contract_duration],
      worth: params[:worth],
      agent_id: params[:agent_id],
      player_id:params[:player_id]
    )
    contract_deets.to_json
  end
  post '/agent_profiles' do
    agent_prof_deets = Agent_profile.create(
      age: params[:age],
      years_of_experience: params[:years_of_experience],
      bio: params[:bio],
      agent_id:params[:agent_id]
    )
    agent_prof_deets.to_json
  end

# PATCH

  patch '/players/:id' do
    player_deets = Player.find(params[:id])
    player_deets.update(
      name: params[:name],
      age: params[:age],
      race: params[:race],
      natonality: params[:nationality],
      agent_id: params[:agent_id],
      team_id: params[:team_id]
    )
    player_deets.to_json
  end

  patch'/agents/:id' do
    agent_deets = Agent.find(params[:id])
    agent_deets.update(
      name: params[:name],
      years_of_experience: params[:years_of_experience]
    )
    agent_deets.to_json
  end

  patch '/teams/:id' do
    team_deets = Team.find(params[:id])
    team_deets.update(
      name: params[:name],
      years_of_experience: params[:years_of_experience]
    )
    team_deets.to_json
  end

  patch '/contracts/:id' do
    contract_deets = Contract.find(params[:id])
    contract_deets.update(
      contract_duration: params[:contract_duration],
      worth: params[:worth],
      agent_id: params[:agent_id],
      player_id:params[:player_id]
    )
    contract_deets.to_json
  end
  patch '/agent_profiles/:id' do
    agent_prof_deets = Agent_profile.find(params[:id])
    agent_prof_deets.update(
      age: params[:age],
      years_of_experience: params[:years_of_experience],
      bio: params[:bio],
      agent_id:params[:agent_id]
    )
    agent_prof_deets.to_json
  end

#PUT
 put '/players/:id' do
    player_put_deets = Player.find(params[:id])
    player_put_deets.update(
      name: params[:name],
      age: params[:age],
      race: params[:race],
      natonality: params[:nationality],
      agent_id: params[:agent_id],
      team_id: params[:team_id]
    )
    player_put_deets.to_json
  end

  put '/agents/:id' do
    agent_put_deets = Agent.find(params[:id])
    agent_put_deets.update(
      name: params[:name],
      years_of_experience: params[:years_of_experience]
    )
    agent_put_deets.to_json
  end

  put '/teams/:id' do
    team_put_deets = Team.find(params[:id])
    team_put_deets.update(
      name: params[:name],
      years_of_experience: params[:years_of_experience]
    )
    team_put_deets.to_json
  end
   put '/agent_profiles/:id' do
    agent_prof_put_deets = Agent_profile.find(params[:id])
    agent_prof_put_deets.update(
      age: params[:age],
      years_of_experience: params[:years_of_experience],
      bio: params[:bio],
      agent_id:params[:agent_id]
    )
    agent_prof_put_deets.to_json
  end

  # DELETE
  delete '/players/:id' do
    player_del = Player.find(params[:id])
    player_del.destroy
    player_del.to_json
  end
  
  delete '/agents/:id' do
    agent_del = Agent.find(params[:id])
    agent_del.destroy
    agent_del.to_json
  end
  
  delete '/teams/:id'do
    team_del = Team.find(params[:id])
    team_del.destroy
    team_del.to_json
  end
  delete '/contracts/:id'do
    contract_del = Contract.find(params[:id])
    contract_del.destroy
    contract_del.to_json
  end
  delete '/agent_profiles/:id'do
    agent_prof_del = Agent_profile.find(params[:id])
    agent_prof_del.destroy
    agent_prof_del.to_json
  end

end