require "application_system_test_case"

class KontaksTest < ApplicationSystemTestCase
  setup do
    @kontak = kontaks(:one)
  end

  test "visiting the index" do
    visit kontaks_url
    assert_selector "h1", text: "Kontaks"
  end

  test "should create kontak" do
    visit kontaks_url
    click_on "New kontak"

    fill_in "Email", with: @kontak.email
    fill_in "Facebook", with: @kontak.facebook
    fill_in "Instagram", with: @kontak.instagram
    fill_in "Nama", with: @kontak.nama
    fill_in "Telepon", with: @kontak.telepon
    fill_in "Twitter", with: @kontak.twitter
    click_on "Create Kontak"

    assert_text "Kontak was successfully created"
    click_on "Back"
  end

  test "should update Kontak" do
    visit kontak_url(@kontak)
    click_on "Edit this kontak", match: :first

    fill_in "Email", with: @kontak.email
    fill_in "Facebook", with: @kontak.facebook
    fill_in "Instagram", with: @kontak.instagram
    fill_in "Nama", with: @kontak.nama
    fill_in "Telepon", with: @kontak.telepon
    fill_in "Twitter", with: @kontak.twitter
    click_on "Update Kontak"

    assert_text "Kontak was successfully updated"
    click_on "Back"
  end

  test "should destroy Kontak" do
    visit kontak_url(@kontak)
    click_on "Destroy this kontak", match: :first

    assert_text "Kontak was successfully destroyed"
  end
end
