FactoryBot.define do
  factory :author do
    first_name { 'Erich Maria' }
    last_name { 'Remarque' }
    year_of_birth { 1989 }
    biography do
      'Erich Maria Remarque was a German novelist. His landmark novel Im Westen nichts Neues (All Quiet on the Western Front) (1928), about the German military experience of World War I, was an international best-seller which created a new literary genre, and was adapted into a film in 1930.'
    end
  end
end
