
# contains required info to store in db
class ParsedItem

  include Mongoid::Document

  field :post_id, type: String

  field :author, type: String

  field :title, type: String

  field :url, type: String

  field :site, type: String

end

