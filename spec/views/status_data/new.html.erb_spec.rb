require 'rails_helper'

RSpec.describe "status_data/new", type: :view do
  before(:each) do
    assign(:status_datum, StatusDatum.new(
      kondisi_data: "MyString",
      catatan: "MyString",
      rekomendasi: "MyString",
      validasi: "MyString"
    ))
  end

  it "renders new status_datum form" do
    render

    assert_select "form[action=?][method=?]", status_data_path, "post" do

      assert_select "input[name=?]", "status_datum[kondisi_data]"

      assert_select "input[name=?]", "status_datum[catatan]"

      assert_select "input[name=?]", "status_datum[rekomendasi]"

      assert_select "input[name=?]", "status_datum[validasi]"
    end
  end
end
