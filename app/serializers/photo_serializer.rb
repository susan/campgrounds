class PhotoSerializer < ActiveModel::Serializer
  belongs_to :park
  attributes :id,
      :park_id,
      :credit1,
      :alt_text1,
      :title1,
     :id1,
     :caption1,
     :url1,
     :credit2,
     :alt_text2,
     :title2,
     :id2,
     :caption2,
     :url2,
     :credit3,
     :alt_text3,
     :title3,
     :id3,
     :url3,
     :credit4,
     :alt_text4,
     :title4,
     :id4,
     :caption4,
     :url4

end
