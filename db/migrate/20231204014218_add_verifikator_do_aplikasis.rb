class AddVerifikatorDoAplikasis < ActiveRecord::Migration[7.1]
  def change
    add_reference :aplikasis, :verifikators 
  end
end
