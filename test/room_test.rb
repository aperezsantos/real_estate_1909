require 'minitest/autorun'
require 'minitest/pride'
require './lib/room'

class RoomTest < Minitest::Test
  def setup
    @room = Room.new(:bedroom, 10, 13)
    @room_2 = Room.new(:kitchen, 3, 4)
  end

  def test_it_exists
    assert_instance_of Room, @room
    assert_instance_of Room, @room_2
  end

  def test_room_in_category
    assert_equal :bedroom, @room.category
    assert_equal :kitchen, @room_2.category
  end

  def test_length_is_10
    assert_equal 10 , @room.length
    assert_equal 3, @room_2.length
  end

  def test_width_is_13
    assert_equal 13, @room.width
    assert_equal 4, @room_2.width
  end

  def test_area_is_length_times_width
    assert_equal 130, @room.area
    assert_equal 12, @room_2.area
  end
end
