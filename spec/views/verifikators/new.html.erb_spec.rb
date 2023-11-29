require 'rails_helper'

RSpec.describe "verifikators/new", type: :view do
  before(:each) do
    assign(:verifikator, Verifikator.new(
      jenis_dokumen: "MyString",
      menu_aplikasi: "MyString",
      kondisi_data: "MyString",
      catatan: "MyString"
    ))
  end

  it "renders new verifikator form" do
    render

    assert_select "form[action=?][method=?]", verifikators_path, "post" do

      assert_select "input[name=?]", "verifikator[jenis_dokumen]"

      assert_select "input[name=?]", "verifikator[menu_aplikasi]"

      assert_select "input[name=?]", "verifikator[kondisi_data]"

      assert_select "input[name=?]", "verifikator[catatan]"
    end
  end
end
