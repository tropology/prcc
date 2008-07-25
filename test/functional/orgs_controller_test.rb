require 'test_helper'

class OrgsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:orgs)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_org
    assert_difference('Org.count') do
      post :create, :org => { }
    end

    assert_redirected_to org_path(assigns(:org))
  end

  def test_should_show_org
    get :show, :id => orgs(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => orgs(:one).id
    assert_response :success
  end

  def test_should_update_org
    put :update, :id => orgs(:one).id, :org => { }
    assert_redirected_to org_path(assigns(:org))
  end

  def test_should_destroy_org
    assert_difference('Org.count', -1) do
      delete :destroy, :id => orgs(:one).id
    end

    assert_redirected_to orgs_path
  end
end
