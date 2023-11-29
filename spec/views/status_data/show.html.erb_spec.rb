require 'rails_helper'

RSpec.describe "status_data/show", type: :view do
  before(:each) do
    assign(:status_datum, StatusDatum.create!(
      kondisi_data: "Kondisi Data",
      catatan: "Catatan",
      rekomendasi: "Rekomendasi",
      validasi: "Validasi"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Kondisi Data/)
    expect(rendered).to match(/Catatan/)
    expect(rendered).to match(/Rekomendasi/)
    expect(rendered).to match(/Validasi/)
  end
end
