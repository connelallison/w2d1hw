require("minitest/autorun")
require("minitest/rg")
require_relative("../team_class.rb")

class TeamClassTest < MiniTest::Test

  def setup
    @team = Team.new("Aeiou FC", ["Alfred", "Elijah", "Ian", "Oliver", "Ulric"], "Coach Vowel")
  end

  def test_get_name()
    assert_equal(@team.name, "Aeiou FC")
  end

  def test_get_players()
    assert_equal(@team.players, ["Alfred", "Elijah", "Ian", "Oliver", "Ulric"])
  end

  def test_get_coach()
    assert_equal(@team.coach, "Coach Vowel")
  end

  def test_get_points()
    assert_equal(@team.points, 0)
  end

  def test_set_coach_name()
    @team.coach = "Mr Consonant"
    assert_equal(@team.coach, "Mr Consonant")
  end

  def test_new_player()
    @team.new_player("Yosef")
    assert_equal(@team.players, ["Alfred", "Elijah", "Ian", "Oliver", "Ulric", "Yosef"])
  end

  def test_check_player_true()
    assert_equal(@team.check_player("Alfred"), true)
  end

  def test_check_player_false()
    assert_equal(@team.check_player("Bob"), false)
  end

  def test_add_points()
    assert_equal(@team.points, 0)
    @team.add_points(:loss)
    assert_equal(@team.points, 0)
    @team.add_points(:draw)
    assert_equal(@team.points, 1)
    @team.add_points(:win)
    assert_equal(@team.points, 4)
  end

end
