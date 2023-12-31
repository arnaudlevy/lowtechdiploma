require "test_helper"

class CertificatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @certificate = certificates(:one)
  end

  test "should get index" do
    get certificates_url
    assert_response :success
  end

  test "should get new" do
    get new_certificate_url
    assert_response :success
  end

  test "should create certificate" do
    assert_difference("Certificate.count") do
      post certificates_url, params: { certificate: { birth_date: @certificate.birth_date, birth_place: @certificate.birth_place, ects: @certificate.ects, first_name: @certificate.first_name, ine: @certificate.ine, last_name: @certificate.last_name, name: @certificate.name, quality: @certificate.quality, year: @certificate.year } }
    end

    assert_redirected_to certificate_url(Certificate.last)
  end

  test "should show certificate" do
    get certificate_url(@certificate)
    assert_response :success
  end

  test "should get edit" do
    get edit_certificate_url(@certificate)
    assert_response :success
  end

  test "should update certificate" do
    patch certificate_url(@certificate), params: { certificate: { birth_date: @certificate.birth_date, birth_place: @certificate.birth_place, ects: @certificate.ects, first_name: @certificate.first_name, ine: @certificate.ine, last_name: @certificate.last_name, name: @certificate.name, quality: @certificate.quality, year: @certificate.year } }
    assert_redirected_to certificate_url(@certificate)
  end

  test "should destroy certificate" do
    assert_difference("Certificate.count", -1) do
      delete certificate_url(@certificate)
    end

    assert_redirected_to certificates_url
  end
end
