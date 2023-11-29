require 'rails_helper'

RSpec.describe "status_data/edit", type: :view do
  let(:status_datum) {
    StatusDatum.create!(
      kondisi_data: "MyString",
      catatan: "MyString",
      rekomendasi: "MyString",
      validasi: "MyString"
    )
  }

  before(:each) do
    assign(:status_datum, status_datum)
  end

  it "renders the edit status_datum form" do
    render

    assert_select "form[action=?][method=?]", status_datum_path(status_datum), "post" do

      assert_select "input[name=?]", "status_datum[kondisi_data]"

      assert_select "input[name=?]", "status_datum[catatan]"

      assert_select "input[name=?]", "status_datum[rekomendasi]"

      assert_select "input[name=?]", "status_datum[validasi]"
    end
  end
end
