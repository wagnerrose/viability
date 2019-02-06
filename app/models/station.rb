class Station < ApplicationRecord
  belongs_to :states, class_name: "states", foreign_key: "states_id"


  has_many :equipaments
  has_many :circuitodados

  enum status: [:SD, :AGUARDA_ACORDO, :AGUARDA_LOCAÇÃO, :CANCELADO,
                        :DESATIVADO, :IMPLANTAÇÃO, :OPERAÇÃO, :PLANEJADO,
                        :PROSPECÇÃO, :SEM_INFO]
  # LEGENDA
  # :AA -> AGUARDANDO ACORDO, :AL -> AGUARDANDO LOCACAO
  # :CAN -> CANCELADO, :DES -> DESATIVADO
  # :IMP -> IMPLANTACAO, :OPE -> OPERACAO
  # :PLAN -> PLANEJAMENTO, :PROS -> PROSPECCAO
  # :SI -> SEM INFORMACAO
  enum tipoEstacao: [ :PONTO_PRESENÇA, :ESTAÇÃO_CLIENTE, :PONTO_METROPOLITANO,
                      :CENTRO_DE_MANUTENÇÃO,:INTERCONEXÃO_OPTICA, :REPETIDOR_RÁDIO,
                      :ESTACAO_ATENDIMENTO_REM, :ESTACAO_SATÉLITE]

  validates :latitude, :longitude, :presence => {:message => 'As coordenadas devem ser preenchidas.'}
  validates :code, :length => { maximum: 11 }, :presence => {:message => 'A Estação deve ser preenchido.'}
  validates :code, :uniqueness => {:message => 'A Estação já esta cadastrada.'}
  validates :name, :presence => {:message => 'O Nome deve ser preenchido.'}
  validates :status, :presence => {:message => 'A Status da Estação deve ser preenchido.'}
  validates :county, :state, :presence => {:message => 'A UF e a cidade devem ser preenchidas.'}


end
