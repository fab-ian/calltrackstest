# frozen_string_literal: true

namespace :calltrackstest do
  desc 'Add sample data for Salaries'
  task generate_sample_data_for_salaries: :environment do
    10.times do
      Salary.create!(
        employee_id: rand(1..8),
        organization_id: rand(1..3),
        amount: rand(2000..4000),
        date: Date.today - rand(-100..100)
      )
    end

    puts 'Done!'
  end
end
