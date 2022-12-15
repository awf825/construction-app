# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# movies = Movie.create([
#     { name: 'Star Wars', year: 1977, genre: 'SCI-FI'}, 
#     { name: 'Lord of the Rings', year: 2001, genre: 'Fantasy' }
# ])
Account.create([
    { name: "Account 1" }
])

Project.create([
    { name: "Project 1", user_id: 1, account_id: 1 },
    { name: "Project 2", user_id: 1, account_id: 1 },
    { name: "Project 3", user_id: 1, account_id: 1 },
    { name: "Project 4", user_id: 2, account_id: 2 },
    { name: "Project 5", user_id: 2, account_id: 2 },
    { name: "Project 6", user_id: 2, account_id: 2 },
])

Phase.create([
    { name: "Phase 1", project_id: 1, account_id: 1 },
    { name: "Phase 2", project_id: 1, account_id: 1 },
    { name: "Phase 3", project_id: 1, account_id: 1 },
    { name: "Phase 4", project_id: 2, account_id: 1 },
    { name: "Phase 5", project_id: 2, account_id: 1 },
])

Division.create([
    { name: "Electrical", account_id: 1 },
    { name: "Plumbing", account_id: 1 },
    { name: "Other", account_id: 1 },
    { name: "Electrical", account_id: 2 }, 
    { name: "Plumbing", account_id: 2 },
    { name: "Other", account_id: 2 }  
]) 

Procurable.create([
    { 
        procurable_name: "Procurable 1", 
        subcontractor: "Subcontractor Bob", 
        submittal_number: 1,
        submittal_date: Time.now,
        architect_review_period: 2,
        submittal_return_date: Time.now,
        field_measure_date: Time.now,
        field_measure_activity: "This is what we call a riun out the clock situation",
        lead_time: 4,
        date_available: Time.now,
        activity_needed_for: "Unloading trucks at the office",
        date_needed: Time.now,
        phase_id: 1, 
        account_id: 1, 
        division_id: 1 
    },
    { 
        procurable_name: "Procurable 2", 
        subcontractor: "Subcontractor Joe", 
        submittal_number: 2,
        submittal_date: Time.now,
        architect_review_period: 2,
        submittal_return_date: Time.now,
        field_measure_date: Time.now,
        field_measure_activity: "This is what we call a riun out the clock situation",
        lead_time: 4,
        date_available: Time.now,
        activity_needed_for: "Unloading trucks at the office",
        date_needed: Time.now,
        phase_id: 2, 
        account_id: 1, 
        division_id: 2 
    },
    { 
        procurable_name: "Procurable 3", 
        subcontractor: "Subcontractor Jim", 
        submittal_number: 3,
        submittal_date: Time.now,
        architect_review_period: 2,
        submittal_return_date: Time.now,
        field_measure_date: Time.now,
        field_measure_activity: "This is what we call a riun out the clock situation",
        lead_time: 4,
        date_available: Time.now,
        activity_needed_for: "Unloading trucks at the office",
        date_needed: Time.now,
        phase_id: 2, 
        account_id: 1, 
        division_id: 3
    },
    { 
        procurable_name: "Procurable 4", 
        subcontractor: "Subcontractor Bob", 
        submittal_number: 4,
        submittal_date: Time.now,
        architect_review_period: 2,
        submittal_return_date: Time.now,
        field_measure_date: Time.now,
        field_measure_activity: "This is what we call a riun out the clock situation",
        lead_time: 4,
        date_available: Time.now,
        activity_needed_for: "Unloading trucks at the office",
        date_needed: Time.now,
        phase_id: 3, 
        account_id: 1, 
        division_id: 1 
    },
    { 
        procurable_name: "Procurable 5", 
        subcontractor: "Subcontractor Joe", 
        submittal_number: 5,
        submittal_date: Time.now,
        architect_review_period: 2,
        submittal_return_date: Time.now,
        field_measure_date: Time.now,
        field_measure_activity: "This is what we call a riun out the clock situation",
        lead_time: 4,
        date_available: Time.now,
        activity_needed_for: "Unloading trucks at the office",
        date_needed: Time.now,
        phase_id: 3, 
        account_id: 1, 
        division_id: 2 
    },
    { 
        procurable_name: "Procurable 6", 
        subcontractor: "Subcontractor Jim", 
        submittal_number: 6,
        submittal_date: Time.now,
        architect_review_period: 2,
        submittal_return_date: Time.now,
        field_measure_date: Time.now,
        field_measure_activity: "This is what we call a riun out the clock situation",
        lead_time: 4,
        date_available: Time.now,
        activity_needed_for: "Unloading trucks at the office",
        date_needed: Time.now,
        phase_id: 3, 
        account_id: 1, 
        division_id: 3
    },
    { 
        procurable_name: "Procurable 7", 
        subcontractor: "Subcontractor Bob", 
        submittal_number: 7,
        submittal_date: Time.now,
        architect_review_period: 2,
        submittal_return_date: Time.now,
        field_measure_date: Time.now,
        field_measure_activity: "This is what we call a riun out the clock situation",
        lead_time: 4,
        date_available: Time.now,
        activity_needed_for: "Unloading trucks at the office",
        date_needed: Time.now,
        phase_id: 4, 
        account_id: 1, 
        division_id: 1 
    },
    { 
        procurable_name: "Procurable 8", 
        subcontractor: "Subcontractor Joe", 
        submittal_number: 8,
        submittal_date: Time.now,
        architect_review_period: 2,
        submittal_return_date: Time.now,
        field_measure_date: Time.now,
        field_measure_activity: "This is what we call a riun out the clock situation",
        lead_time: 4,
        date_available: Time.now,
        activity_needed_for: "Unloading trucks at the office",
        date_needed: Time.now,
        phase_id: 4, 
        account_id: 1, 
        division_id: 2 
    },
    { 
        procurable_name: "Procurable 9", 
        subcontractor: "Subcontractor Jim", 
        submittal_number: 9,
        submittal_date: Time.now,
        architect_review_period: 2,
        submittal_return_date: Time.now,
        field_measure_date: Time.now,
        field_measure_activity: "This is what we call a riun out the clock situation",
        lead_time: 4,
        date_available: Time.now,
        activity_needed_for: "Unloading trucks at the office",
        date_needed: Time.now,
        phase_id: 4, 
        account_id: 1, 
        division_id: 3
    },
    { 
        procurable_name: "Procurable 10", 
        subcontractor: "Subcontractor Bob", 
        submittal_number: 10,
        submittal_date: Time.now,
        architect_review_period: 2,
        submittal_return_date: Time.now,
        field_measure_date: Time.now,
        field_measure_activity: "This is what we call a riun out the clock situation",
        lead_time: 4,
        date_available: Time.now,
        activity_needed_for: "Unloading trucks at the office",
        date_needed: Time.now,
        phase_id: 5, 
        account_id: 1, 
        division_id: 1 
    },
    { 
        procurable_name: "Procurable 11", 
        subcontractor: "Subcontractor Joe", 
        submittal_number: 11,
        submittal_date: Time.now,
        architect_review_period: 2,
        submittal_return_date: Time.now,
        field_measure_date: Time.now,
        field_measure_activity: "This is what we call a riun out the clock situation",
        lead_time: 4,
        date_available: Time.now,
        activity_needed_for: "Unloading trucks at the office",
        date_needed: Time.now,
        phase_id: 5, 
        account_id: 1, 
        division_id: 2 
    },
    { 
        procurable_name: "Procurable 12", 
        subcontractor: "Subcontractor Bob", 
        submittal_number: 12,
        submittal_date: Time.now,
        architect_review_period: 2,
        submittal_return_date: Time.now,
        field_measure_date: Time.now,
        field_measure_activity: "This is what we call a riun out the clock situation",
        lead_time: 4,
        date_available: Time.now,
        activity_needed_for: "Unloading trucks at the office",
        date_needed: Time.now,
        phase_id: 5, 
        account_id: 1, 
        division_id: 3
    }
])


