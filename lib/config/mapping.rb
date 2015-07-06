# collection :users do
#   entity     User
#   repository UserRepository
#
#   attribute :id,   Integer
#   attribute :name, String
# end

collection :entries do
  entity Entry
  repository EntryRepository

  attribute :id, Integer
  attribute :title, String
  attribute :body, String
end