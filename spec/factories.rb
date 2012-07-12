FactoryGirl.define do
  factory :gallery do
    name        'Art Gallery'
    address     '630 Yates Street, Victoria, BC, V8W 1L2'
    email       'cr@uvic.ca'
    phone       '250.721.6562'
    website     'www.legacygallery.ca'
    description "The University of Victoria's Legacy Art Gallery (at the corner of Broad and Yates Streets in the heart of downtown Victoria) invites you to experience engaging exhibitions. Their programs focus on remarkable collections and involve notable west coast artists. For details on current exhibitions, please visit their website at www.legacygallery.ca"
    exhibition_description "The Legacy Art Gallery will feature: \"Transformation: A Retrospective Works and Writing by Duncan Regehr"" until August 18th. Through a wide-ranging presentation of media, including a series of paintings, sculptures, drawings and writings, the viewer will become acquainted with the artist's working method. This is a project that explores a common theme or philosophy. By delving into the collective subconscious and the psyche, Regehr produces images of an intensely personal nature, which invites reciprocal identification by the viewer. In pairing both visual art and poetry, this exhibition brings to life this remarkable artist's investigations of the notions of transformation and metamorphosis. Recent series ""Omiscience"", ""Revenant"" and ""Doppelganger"" reflect a new intensity and the scale of Regehr's reflection on the human experience and brings together the recurring leitmotifs of his work. Regehr was awarded an honorary degree from the University of Victoria in 2008 for his accomplishments in theatre and fine arts.  The Legacy Art Gallery is pleased to feature the work of this distinguished honorand." 
  end

  factory :location do
    address     '630 Yates Street'
    city        'Victoria'
    postal_code 'V8W 1L2'
  end
end
