class CreateAplikasis < ActiveRecord::Migration[7.1]
  def change
    create_table :aplikasis do |t|
      t.string :nama
      t.string :alamat_web
      t.string :nama_penanggung_jawab
      t.string :deskripsi

      t.timestamps
    end
  end
end
