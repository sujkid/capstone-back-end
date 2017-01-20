class MenuSerializer < ActiveModel::Serializer
  attributes :id, :foodname, :fooddescription, :foodurl, :votes, :date, :price
end
