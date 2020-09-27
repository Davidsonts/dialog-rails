class User < ApplicationRecord
  validates :nome, :presence => true
  validates :idade, :presence => true
  validates :sexo, :presence => true
  validates :uf, :presence => true
  validates :cidade, :presence => true

  uf = CS.states(:br).map do |key, value| key end
  enum uf: uf
  enum sexo: [:masculino, :feminino, :outro]
end
