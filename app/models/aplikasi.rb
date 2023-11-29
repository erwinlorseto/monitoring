class Aplikasi < ApplicationRecord
has_many :verifikators
def to_s
    nama
    end
end
