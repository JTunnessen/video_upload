require 'test_helper'

class VideoLessonsControllerTest < ActionController::TestCase
  setup do
    @video_lesson = video_lessons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:video_lessons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create video_lesson" do
    assert_difference('VideoLesson.count') do
      post :create, video_lesson: { description: @video_lesson.description, title: @video_lesson.title, video: @video_lesson.video }
    end

    assert_redirected_to video_lesson_path(assigns(:video_lesson))
  end

  test "should show video_lesson" do
    get :show, id: @video_lesson
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @video_lesson
    assert_response :success
  end

  test "should update video_lesson" do
    patch :update, id: @video_lesson, video_lesson: { description: @video_lesson.description, title: @video_lesson.title, video: @video_lesson.video }
    assert_redirected_to video_lesson_path(assigns(:video_lesson))
  end

  test "should destroy video_lesson" do
    assert_difference('VideoLesson.count', -1) do
      delete :destroy, id: @video_lesson
    end

    assert_redirected_to video_lessons_path
  end
end
