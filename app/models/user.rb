class User < ApplicationRecord
  uf = CS.states(:br).map do |key, value| key end
  enum uf: uf
  enum sex: [:male, :female, :other]
end
