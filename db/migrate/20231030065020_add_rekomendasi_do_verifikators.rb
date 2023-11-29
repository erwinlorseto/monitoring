class AddRekomendasiDoVerifikators < ActiveRecord::Migration[7.1]
  def change
    add_column :verifikators, :rekomendasi, :string
  end
end
