require 'rails_helper'

RSpec.describe "verifikators/edit", type: :view do
  let(:verifikator) {
    Verifikator.create!(
      jenis_dokumen: "MyString",
      menu_aplikasi: "MyString",
      kondisi_data: "MyString",
      catatan: "MyString"
    )
  }

  before(:each) do
    assign(:verifikator, verifikator)
  end

  it "renders the edit verifikator form" do
    render

    assert_select "form[action=?][method=?]", verifikator_path(verifikator), "post" do

      assert_select "input[name=?]", "verifikator[jenis_dokumen]"

      assert_select "input[name=?]", "verifikator[menu_aplikasi]"

      assert_select "input[name=?]", "verifikator[kondisi_data]"

      assert_select "input[name=?]", "verifikator[catatan]"
    end
  end
end
