require 'minitest/autorun'
require 'minitest/pride'
require './lib/room'

class RoomTest < Minitest::Test
  def setup
    @room = Room.new(:bedroom, 10, 13)
  end

  def test_it_exists
    assert_instance_of Room, @room
  end

  def test_room_in_category
    assert_equal :bedroom, @room.category
  end

  def test_length_is_10
    assert_equal 10 , @room.length
  end

  def test_width_is_13
    assert_equal 13, @room.width
  end

  def test_area_is_length_times_width
    assert_equal 130, @room.area
  end
end
