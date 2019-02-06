class Circuit < ApplicationRecord
  belongs_to :service
  belongs_to :company
  has_many :circuitodados

  enum service: [:AC, :BL, :CI, :L2, :L3, :P2, :TX]
  enum status: [:BLOQUEADO, :CANCELADO, :DESATIVADO, :INSTALAÇÃO, :OPERAÇÃO]
  enum routing: [:ND, :BGP, :ROTA_ESTATICA]


  validates :number, length: {maximum: 12}, presence: true
  validates :service, presence: true
  validates :status, presence: true
  validates :routing, presence: true
  validates :bandwidth, presence: true
  validates :bandwidth_activated, presence: true

end
