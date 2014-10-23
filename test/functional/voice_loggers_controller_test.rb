require 'test_helper'

class VoiceLoggersControllerTest < ActionController::TestCase
  setup do
    @voice_logger = voice_loggers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:voice_loggers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create voice_logger" do
    assert_difference('VoiceLogger.count') do
      post :create, voice_logger: @voice_logger.attributes
    end

    assert_redirected_to voice_logger_path(assigns(:voice_logger))
  end

  test "should show voice_logger" do
    get :show, id: @voice_logger.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @voice_logger.to_param
    assert_response :success
  end

  test "should update voice_logger" do
    put :update, id: @voice_logger.to_param, voice_logger: @voice_logger.attributes
    assert_redirected_to voice_logger_path(assigns(:voice_logger))
  end

  test "should destroy voice_logger" do
    assert_difference('VoiceLogger.count', -1) do
      delete :destroy, id: @voice_logger.to_param
    end

    assert_redirected_to voice_loggers_path
  end
end
