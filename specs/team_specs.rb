require('minitest/autorun')
require('minitest/rg')
require_relative('../team.rb')
class TeamTest < MiniTest::Test


  def test_get_team_name
    team = Team.new("Team1", ["Filip", "Ben"], "Craig")
      assert_equal("Team1", team.team_name)
    # assert_equal("Team1", team.get_team_name)
  end



  def test_get_team_players
    team = Team.new("Team1", ["Filip", "Ben"], "Craig")
    assert_equal(["Filip", "Ben"], team.players)
    # assert_equal(["Filip", "Ben"], team.get_team_players)
  end
  def test_get_team_coach
    team = Team.new("Team1", ["Filip", "Ben"], "Craig")
    assert_equal("Craig", team.coach)
    # assert_equal("Craig", team.get_team_coach)
  end
  def test_change_coach
    team = Team.new("Team1", ["Filip", "Ben"], "Craig")
    team.coach = ("Jose")
    assert_equal("Jose", team.coach)
    # assert_equal("Jose", team.get_team_coach)
  end

  def test_add_new_player
    team = Team.new("Team1", ["Filip", "Ben"], "Craig")
    team.add_player("Cristiano")
    assert_equal(["Filip", "Ben", "Cristiano"], team.players)

  end

end
