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
end
