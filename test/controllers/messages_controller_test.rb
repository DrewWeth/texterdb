require 'test_helper'

class MessagesControllerTest < ActionController::TestCase
  setup do
    @message = messages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:messages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create message" do
    assert_difference('Message.count') do
      post :create, message: { content: @message.content, priority: @message.priority, recip_name: @message.recip_name, recip_number: @message.recip_number, sent: @message.sent, sent_at: @message.sent_at, sent_by_name: @message.sent_by_name, sent_by_number: @message.sent_by_number, sent_count: @message.sent_count }
    end

    assert_redirected_to message_path(assigns(:message))
  end

  test "should show message" do
    get :show, id: @message
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @message
    assert_response :success
  end

  test "should update message" do
    patch :update, id: @message, message: { content: @message.content, priority: @message.priority, recip_name: @message.recip_name, recip_number: @message.recip_number, sent: @message.sent, sent_at: @message.sent_at, sent_by_name: @message.sent_by_name, sent_by_number: @message.sent_by_number, sent_count: @message.sent_count }
    assert_redirected_to message_path(assigns(:message))
  end

  test "should destroy message" do
    assert_difference('Message.count', -1) do
      delete :destroy, id: @message
    end

    assert_redirected_to messages_path
  end
end
