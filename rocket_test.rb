require "minitest/autorun"
require_relative "rocket"

class RocketTest < Minitest::Test

  def setup
  @rocket = Rocket.new
  end

  def teardown
    @rocket = nil
  end

  # def test_new_name
  # #arrange
  # @rocket.new_name {}
  # #act
  # actual = @rocket.name
  # expected = {}
  # #assert
  # refute_equal(expected, actual)
  # end
  #
  # def test_new_name_different_than_original
  #   #arrange
  #   @rocket.new_name {}
  #   #act
  #   new_name = @rocket.name
  #   original_name = {}
  #   #assert
  #   refute_equal(new_name, original_name)
  # end

  def test_lift_off_return_true_when_flying
    #arrange
    @rocket.flying
    #act
    actual = @rocket.flying?
    expected = false
    #assert
    assert_equal(expected, actual)
  end
  def test_lift_off_return_false_when_flying
    #arrange
    @rocket.flying
    #act
    actual = @rocket.flying?
    expected = false
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


  def test_status
    #arrange
    @rocket.flying?
    @rocket.status = true
    #act
    actual = @rocket.flying?
    expected = "Rocket #{name} is flying through the sky!"
    #assert
    assert_equal(expected, actual)
  end
end
