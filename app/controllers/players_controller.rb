class PlayersController < ApplicationController
  # GET teams/1/players
  # GET teams/1/players.json
  def index
    @team = Team.find(params[:team_id])
    @players = @team.players

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @players }
    end
  end

  # GET teams/1/players/1
  # GET teams/1/players/1.json
  def show
    @team = Team.find(params[:team_id])
    @player = @team.players.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @player }
    end
  end

  # GET teams/1/players/new
  # GET teams/1/players/new.json
  def new
    @team = Team.find(params[:team_id])
    @player = @team.players.build

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @player }
    end
  end

  # GET teams/1/players/1/edit
  def edit
    @team = Team.find(params[:team_id])
    @player = @team.players.find(params[:id])
  end

  # POST teams/1/players
  # POST teams/1/players.json
  def create
    @team = Team.find(params[:team_id])
    @player = @team.players.build(params[:player])

    respond_to do |format|
      if @player.save
        format.html { redirect_to([@player.team, @player], :notice => 'Player was successfully created.') }
        format.json { render :json => @player, :status => :created, :location => [@player.team, @player] }
      else
        format.html { render :action => "new" }
        format.json { render :json => @player.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT teams/1/players/1
  # PUT teams/1/players/1.json
  def update
    @team = Team.find(params[:team_id])
    @player = @team.players.find(params[:id])

    respond_to do |format|
      if @player.update_attributes(params[:player])
        format.html { redirect_to([@player.team, @player], :notice => 'Player was successfully updated.') }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @player.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE teams/1/players/1
  # DELETE teams/1/players/1.json
  def destroy
    @team = Team.find(params[:team_id])
    @player = @team.players.find(params[:id])
    @player.destroy

    respond_to do |format|
      format.html { redirect_to team_players_url(team) }
      format.json { head :ok }
    end
  end
end
