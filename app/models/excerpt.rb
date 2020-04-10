class Excerpt < Document
  include Neo4j::ActiveNode
  
  property :url, type: String
  property :reference, type: String
  property :content, type: String

  has_one :out, :author, type: :author
  has_one :out, :audience, type: :audience 
  has_one :out, :topic, type: :topic
end