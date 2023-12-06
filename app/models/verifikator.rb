class Verifikator < ApplicationRecord
    has_many :aplikasis

    require 'csv'

belongs_to :aplikasi

    def self.to_csv
        CSV.generate(col_sep: ";") do |csv|
            csv << attribute_names
            #csv << column_names
            all.each do |record|
                csv << record.attributes.values
            end
        end
    end
end
