require "minitest/autorun"
require_relative "rocket"

class RocketTest < Minitest::Test
  # Write your tests here!

  def setup
    @rocket = Rocket.new
  end

  def test_initialize_with_defaults_sets_default_name
    expected = String
    actual = @rocket.name.class
    assert_equal(expected, actual)
  end

  def test_initialize_with_defaults_sets_default_colour
    expected = String
    actual = @rocket.colour.class
    assert_equal(expected, actual)
  end

  def test_initialize_with_defaults_sets_default_flight_false
    expected = false
    actual = @rocket.flying?
    assert_equal(expected, actual)
  end

  def test_initialize_with_name_sets_name
    @rocket = Rocket.new(name: "Man")
    expected = "Man"
    actual = @rocket.name
    assert_equal(expected, actual)
  end

  def test_initialize_with_colour_sets_colour
    @rocket = Rocket.new(colour: "silver")
    expected = "silver"
    actual = @rocket.colour
    assert_equal(expected, actual)
  end

  def test_initialize_with_flying_sets_flying?
    @rocket = Rocket.new(flying: true)
    assert @rocket.flying?
  end

  def test_ready_for_lift_off
    # actual = @rocket.lift_off
    # expected = false
    # assert @rocket.flying?
    #
    @rocket = Rocket.new(flying: false)
    assert @rocket.lift_off
    # assert_equal(true, @rocket.lift_off)
  end

  def test_already_lifted_off
    @rocket = Rocket.new(flying: true)
    refute @rocket.lift_off

  end

  def test_is_ready_to_land
    @rocket = Rocket.new(flying: true)
    assert @rocket.land
  end

  def test_has_already_landed
    @rocket = Rocket.new(flying: false)
    refute @rocket.land
  end

  def test_status_of_rocket_is_flying
    @rocket = Rocket.new(name: "Man", flying: true)
    expected = "Rocket Man is flying through the sky!"
    actual = @rocket.status
    assert_equal(expected, actual)
  end

  def test_status_of_rocket_is_not_flying
    @rocket = Rocket.new(name: "Pocket", flying: false)
    expected = "Rocket Pocket is ready for lift off!"
    actual = @rocket.status
    assert_equal(expected, actual)
  end

end
