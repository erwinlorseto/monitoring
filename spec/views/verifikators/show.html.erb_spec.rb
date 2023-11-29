require 'rails_helper'

RSpec.describe "verifikators/show", type: :view do
  before(:each) do
    assign(:verifikator, Verifikator.create!(
      jenis_dokumen: "Jenis Dokumen",
      menu_aplikasi: "Menu Aplikasi",
      kondisi_data: "Kondisi Data",
      catatan: "Catatan"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Jenis Dokumen/)
    expect(rendered).to match(/Menu Aplikasi/)
    expect(rendered).to match(/Kondisi Data/)
    expect(rendered).to match(/Catatan/)
  end
end
