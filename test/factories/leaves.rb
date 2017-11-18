FactoryBot.define do
  factory :leave, class: 'Leaves' do
    start_date { Date.today }
    end_date { 6.days.from_now }
    association(:student)
  end
end
