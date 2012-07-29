require 'test_helper'

class PlayersControllerTest < ActionController::TestCase
  setup do
    @team = teams(:one)
    @player = players(:one)
  end

  test "should get index" do
    get :index, :team_id => @team
    assert_response :success
    assert_not_nil assigns(:players)
  end

  test "should get new" do
    get :new, :team_id => @team
    assert_response :success
  end

  test "should create player" do
    assert_difference('Player.count') do
      post :create, :team_id => @team, :player => @player.attributes
    end

    assert_redirected_to team_player_path(@team, assigns(:player))
  end

  test "should show player" do
    get :show, :team_id => @team, :id => @player.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :team_id => @team, :id => @player.to_param
    assert_response :success
  end

  test "should update player" do
    put :update, :team_id => @team, :id => @player.to_param, :player => @player.attributes
    assert_redirected_to team_player_path(@team, assigns(:player))
  end

  test "should destroy player" do
    assert_difference('Player.count', -1) do
      delete :destroy, :team_id => @team, :id => @player.to_param
    end

    assert_redirected_to team_players_path(@team)
  end
end
