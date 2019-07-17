require 'minitest/autorun'
require 'minitest/pride'
require './lib/exhibit'
require './lib/patron'
require './lib/museum'
require 'pry'

class MuseumTest < Minitest::Test

  def setup
    @dmns = Museum.new("Denver Museum of Nature and Science")
    @gems_and_minerals = Exhibit.new("Gems and Minerals", 0)
    @dead_sea_scrolls = Exhibit.new("Dead Sea Scrolls", 10)
    @imax = Exhibit.new("IMAX", 15)
    @bob = Patron.new("Bob", 20)
    @sally = Patron.new("Sally", 20)
  end

  def test_museum_exist
    assert_instance_of Museum , @dmns
  end

  def test_museum_name_exist
    assert_equal "Denver Museum of Nature and Science", @dmns.name
  end

  def test_exhibit
    assert_equal [], @dmns.exhibits
  end

  def test_can_add_exhibits
    @dmns.add_exhibit(@gems_and_minerals)
    @dmns.add_exhibit(@dead_sea_scrolls)
    @dmns.add_exhibit(@IMAX)
    assert_equal [@gems_and_minerals, @dead_sea_scrolls, @IMAX], @dmns.exhibits
  end

  def test_bob_has_intrests
    @bob.add_interest("Dead Sea Scrolls")
    @bob.add_interest("Gems and Minerals")
    assert_equal ["Dead Sea Scrolls", "Gems and Minerals"],  @bob.interests
  end

  def test_sally_has_intrests
    @sally.add_interest("IMAX")
    assert_equal ["IMAX"], @sally.interests
  end

  def test_recommend_exhibits_bob
    @bob.add_interest(@gems_and_minerals)
    @bob.add_interest(@dead_sea_scrolls)
    assert_equal [@gems_and_minerals, @dead_sea_scrolls], @dmns.recommend_exhibits(@bob)
    # @dmns.recommend_exhibits(@sally)
  end

end
