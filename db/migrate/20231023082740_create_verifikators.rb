class CreateVerifikators < ActiveRecord::Migration[7.1]
  def change
    create_table :verifikators do |t|
      t.string :jenis_dokumen
      t.string :menu_aplikasi
      t.string :kondisi_data
      t.string :catatan

      t.timestamps
    end
  end
end
