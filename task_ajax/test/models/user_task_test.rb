require 'test_helper'

class UserTaskTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should not save without date" do
    user_task = UserTask.new
    user_task.description = "Test Description Ipsum"
    assert_not user_task.save, "Saved the task without a date"
  end #do

  test "should not save without description" do
    user_task = UserTask.new
    user_task.due = Date.new(2015, 10, 31)
    assert_not user_task.save, "Saved the task without a description"
  end #do

end #class
