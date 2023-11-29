class CreateStatusData < ActiveRecord::Migration[7.1]
  def change
    create_table :status_data do |t|
      t.string :kondisi_data
      t.string :catatan
      t.string :rekomendasi
      t.string :validasi

      t.timestamps
    end
  end
end
