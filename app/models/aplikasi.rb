# == Schema Information
#
# Table name: aplikasis
#
#  id                    :integer          not null, primary key
#  alamat_web            :string
#  deskripsi             :string
#  nama                  :string
#  nama_penanggung_jawab :string
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#
class Aplikasi < ApplicationRecord
end
