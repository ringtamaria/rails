class Company < ApplicationRecord
    validates :name, presence: true
    validates :address, presence: true
    validates :contact, presence: true
    validates :company_name, presence: true
    validates :listing_status, presence: true
  
    # シリアライズ（JSON出力）の設定
    def serializable_hash(options = nil)
      super(options).merge(id: id, name: name)
    end
end
  