require "test_helper"

class KontaksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @kontak = kontaks(:one)
  end

  test "should get index" do
    get kontaks_url
    assert_response :success
  end

  test "should get new" do
    get new_kontak_url
    assert_response :success
  end

  test "should create kontak" do
    assert_difference("Kontak.count") do
      post kontaks_url, params: { kontak: { email: @kontak.email, facebook: @kontak.facebook, instagram: @kontak.instagram, nama: @kontak.nama, telepon: @kontak.telepon, twitter: @kontak.twitter } }
    end

    assert_redirected_to kontak_url(Kontak.last)
  end

  test "should show kontak" do
    get kontak_url(@kontak)
    assert_response :success
  end

  test "should get edit" do
    get edit_kontak_url(@kontak)
    assert_response :success
  end

  test "should update kontak" do
    patch kontak_url(@kontak), params: { kontak: { email: @kontak.email, facebook: @kontak.facebook, instagram: @kontak.instagram, nama: @kontak.nama, telepon: @kontak.telepon, twitter: @kontak.twitter } }
    assert_redirected_to kontak_url(@kontak)
  end

  test "should destroy kontak" do
    assert_difference("Kontak.count", -1) do
      delete kontak_url(@kontak)
    end

    assert_redirected_to kontaks_url
  end
end
