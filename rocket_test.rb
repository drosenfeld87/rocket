require "minitest/autorun"
require_relative "rocket"

class RocketTest < Minitest::Test

  def setup
  @rocket = Rocket.new
  end

  def teardown
    @rocket = nil
  end

  def test_new_name
  #arrange
  @rocket.name = ""
  #act
  actual = @rocket.name
  expected = ""
  #assert
  assert_equal(expected, actual)
  end

  def test_lift_off_return_false_when_flying
    #arrange
    @rocket = Rocket.new({:flying => true})
    #act
    actual = @rocket.lift_off
    expected = false
    #assert
    assert_equal(expected, actual)
  end
  def test_lift_off_return_true_when_flying
    #arrange
    #act
    actual = @rocket.lift_off
    expected = true
    #assert
    assert_equal(expected, actual)
  end

  def test_land_return_false_when_flying
    #arrange
    @rocket.flying?
    #act
    actual = @rocket.land
    expected = false
    #assert
    assert_equal(expected, actual)
  end
  def test_land_return_true_when_not_flying
    #arrange
    @rocket.flying?
    #act
    actual = @rocket.land
    expected = false
    #assert
    assert_equal(expected, actual)
  end


  def test_status_flying
    #arrange
    @rocket = Rocket.new({:flying => true})
    #act
    actual = @rocket.status
    expected = "Rocket #{@rocket.name} is flying through the sky!"
    #assert
    assert_equal(expected, actual)
  end

  def test_status_not_flying
    #arrange
    @rocket.flying?
    #act
    actual = @rocket.status
    expected = "Rocket #{@rocket.name} is ready for lift off!"
    #assert
    assert_equal(expected, actual)
  end
end
