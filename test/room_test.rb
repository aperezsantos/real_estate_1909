require 'minitest/autorun'
require 'minitest/pride'
require './lib/room'

class RoomTest < Minitest::Test
  def setup
    @room = Room.new(:bedroom, 10, 13)
    @room_k = Room.new(:kitchen, 3, 4)
    @room_1 = Room.new(:bedroom, 10, 13)
    @room_2 = Room.new(:bedroom, 11, 15)
  end

  def test_it_exists
    assert_instance_of Room, @room
    assert_instance_of Room, @room_k
  end

  def test_room_in_category
    assert_equal :bedroom, @room.category
    assert_equal :kitchen, @room_k.category
  end

  def test_length
    assert_equal 10 , @room.length
    assert_equal 3, @room_k.length
  end

  def test_width
    assert_equal 13, @room.width
    assert_equal 4, @room_k.width
  end

  def test_area_is_length_times_width
    assert_equal 130, @room.area
    assert_equal 12, @room_k.area
  end
end
