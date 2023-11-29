require 'rails_helper'

RSpec.describe "status_data/index", type: :view do
  before(:each) do
    assign(:status_data, [
      StatusDatum.create!(
        kondisi_data: "Kondisi Data",
        catatan: "Catatan",
        rekomendasi: "Rekomendasi",
        validasi: "Validasi"
      ),
      StatusDatum.create!(
        kondisi_data: "Kondisi Data",
        catatan: "Catatan",
        rekomendasi: "Rekomendasi",
        validasi: "Validasi"
      )
    ])
  end

  it "renders a list of status_data" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Kondisi Data".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Catatan".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Rekomendasi".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Validasi".to_s), count: 2
  end
end
