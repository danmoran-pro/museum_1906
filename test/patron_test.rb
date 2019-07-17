require 'minitest/autorun'
require 'minitest/pride'
require './lib/exhibit'
require './lib/patron'
require 'pry'

class PatronTest < Minitest::Test

  def setup
    @bob = Patron.new("Bob", 20)
  end

  def test_patron_exist
    assert_instance_of Patron , @bob
  end

  def test_name_exists
    assert_equal "Bob", @bob.name
  end

  def test_cost_exists
    assert_equal 20, @bob.spending_money
  end

  def test_bob_has_intrests
    assert_equal [], @bob.interests
  end

  def test_can_add_intrests
    @bob.add_interest("Gems and Minerals")
    @bob.add_interest("Dead Sea Scrolls")
    assert_equal ["Gems and Minerals","Dead Sea Scrolls"], @bob.interests
  end

end
