FactoryBot.define do
  factory :book do
    association :author
    association :position
    title { 'A Time to Love and a Time to Die' }
    year_of_release { 1958 }
    description do
      'It tells the story of a young German soldier who is revolted by the conduct of the army in Russia and by the National Socialist German Workers Party in Germany but is killed after performing one act of humanity.'
    end
  end
end
