class User < ApplicationRecord
  validates :mome, acceptance: true
  validates :idade, acceptance: true
  validates :sexo, acceptance: true
  validates :uf, acceptance: true

  uf = CS.states(:br).map do |key, value| key end
  enum uf: uf
  enum sexo: [:masculino, :feminino, :outro]
end
