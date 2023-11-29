require 'rails_helper'

RSpec.describe "verifikators/index", type: :view do
  before(:each) do
    assign(:verifikators, [
      Verifikator.create!(
        jenis_dokumen: "Jenis Dokumen",
        menu_aplikasi: "Menu Aplikasi",
        kondisi_data: "Kondisi Data",
        catatan: "Catatan"
      ),
      Verifikator.create!(
        jenis_dokumen: "Jenis Dokumen",
        menu_aplikasi: "Menu Aplikasi",
        kondisi_data: "Kondisi Data",
        catatan: "Catatan"
      )
    ])
  end

  it "renders a list of verifikators" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Jenis Dokumen".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Menu Aplikasi".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Kondisi Data".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Catatan".to_s), count: 2
  end
end
