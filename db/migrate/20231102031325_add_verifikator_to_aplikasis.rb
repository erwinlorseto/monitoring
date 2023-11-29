class AddVerifikatorToAplikasis < ActiveRecord::Migration[7.1]
  def change
    add_reference :verifikators, :aplikasi 
  end
end
