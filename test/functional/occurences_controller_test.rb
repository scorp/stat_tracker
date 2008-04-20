require 'test_helper'

class OccurencesControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:occurences)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_occurence
    assert_difference('Occurence.count') do
      post :create, :occurence => { }
    end

    assert_redirected_to occurence_path(assigns(:occurence))
  end

  def test_should_show_occurence
    get :show, :id => occurences(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => occurences(:one).id
    assert_response :success
  end

  def test_should_update_occurence
    put :update, :id => occurences(:one).id, :occurence => { }
    assert_redirected_to occurence_path(assigns(:occurence))
  end

  def test_should_destroy_occurence
    assert_difference('Occurence.count', -1) do
      delete :destroy, :id => occurences(:one).id
    end

    assert_redirected_to occurences_path
  end
end
