require 'minitest/autorun'
require 'minitest/pride'
require './lib/exhibit'
require './lib/patron'
require 'pry'

class ExhibitTest < Minitest::Test

  def setup
    @exhibit = Exhibit.new("Gems and Minerals", 0)
  end

  def test_exhibit_exist
    assert_instance_of Exhibit , @exhibit
  end

  def test_name_exists
    assert_equal "Gems and Minerals", @exhibit.name
  end

  def test_cost_exists
    assert_equal 0, @exhibit.cost
  end

end
