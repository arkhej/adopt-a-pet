# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :pet do
    name          { "#{ case specie when :dog then 'Perrito';when :cat then 'Gatito';when :rodent then 'Ratoncito';end } #{ %w(guay viejete happy).sample }" }
    specie        { [:dog, :cat, :rodent].sample }
    breed         { case specie when :dog then %w(dogo pontier golden).sample;when :cat then %w(persa tigre).sample;when :rodent then 'común';end }
    sex           { Pet.sexes.keys.sample }
    description   { Faker::Lorem.paragraphs(rand(4) + 1).join "\n\n" }
    shelter_name  { Faker::Company.name }
    province_id   { Province.where(id: [46, 8, 28, 50, 20, 41, 27]).to_a.sample.id }
    location      { province.name }
    age           { Pet.ages.keys.sample }
    size          { Pet.sizes.keys.sample }
    more_info_url { Faker::Internet.http_url }
    urgent        { [true, false].sample }
  end
end
