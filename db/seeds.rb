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
    { name: "Account 1" },
    { name: "Account 2" }
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
    { name: "Phase 2", project_id: 2, account_id: 1 },
    { name: "Phase 3", project_id: 2, account_id: 1 },
    { name: "Phase 4", project_id: 2, account_id: 1 },
    { name: "Phase 5", project_id: 2, account_id: 1 },
    { name: "Phase 6", project_id: 3, account_id: 1 },
    { name: "Phase 7", project_id: 4, account_id: 2 },
    { name: "Phase 8", project_id: 4, account_id: 2 },
    { name: "Phase 9", project_id: 5, account_id: 2 },
    { name: "Phase 10", project_id: 5, account_id: 2 },
    { name: "Phase 11", project_id: 5, account_id: 2 },
    { name: "Phase 12", project_id: 5, account_id: 2 },
    { name: "Phase 13", project_id: 6, account_id: 2 },
    { name: "Phase 14", project_id: 6, account_id: 2 }
])

Division.create([
    { name: "Electrical" },
    { name: "Plumbing" },
    { name: "Other" } 
]) 

Procurable.create([
    { name: "Procurable 1", subcontractor: "Subcontractor Bob", phase_id: 1, account_id: 1, division_id: 1 },
    { name: "Procurable 2", subcontractor: "Subcontractor Bob", phase_id: 1, account_id: 1, division_id: 2 },
    { name: "Procurable 3", subcontractor: "Subcontractor Bob", phase_id: 1, account_id: 1, division_id: 3 },
    { name: "Procurable 4", subcontractor: "Subcontractor Bob", phase_id: 2, account_id: 1, division_id: 3 },
    { name: "Procurable 5", subcontractor: "Subcontractor Bob", phase_id: 3, account_id: 1, division_id: 1 },
    { name: "Procurable 6", subcontractor: "Subcontractor Bob", phase_id: 3, account_id: 1, division_id: 2 },
    { name: "Procurable 7", subcontractor: "Subcontractor Bob", phase_id: 4, account_id: 1, division_id: 3 },
    { name: "Procurable 8", subcontractor: "Subcontractor Bob", phase_id: 5, account_id: 1, division_id: 1 },
    { name: "Procurable 9", subcontractor: "Subcontractor Bob", phase_id: 6, account_id: 1, division_id: 2 },
    { name: "Procurable 10", subcontractor: "Subcontractor Bob", phase_id: 7, account_id: 2, division_id: 3 },
    { name: "Procurable 11", subcontractor: "Subcontractor Bob", phase_id: 7, account_id: 2, division_id: 1 },
    { name: "Procurable 12", subcontractor: "Subcontractor Bob", phase_id: 8, account_id: 2, division_id: 2 },
    { name: "Procurable 13", subcontractor: "Subcontractor Bob", phase_id: 9, account_id: 2, division_id: 3 },
    { name: "Procurable 14", subcontractor: "Subcontractor Bob", phase_id: 10, account_id: 2, division_id: 1 },
    { name: "Procurable 15", subcontractor: "Subcontractor Bob", phase_id: 10, account_id: 2, division_id: 2 },
    { name: "Procurable 16", subcontractor: "Subcontractor Bob", phase_id: 10, account_id: 2, division_id: 3 },
    { name: "Procurable 17", subcontractor: "Subcontractor Bob", phase_id: 10, account_id: 2, division_id: 1 },
    { name: "Procurable 18", subcontractor: "Subcontractor Bob", phase_id: 11, account_id: 2, division_id: 2 },
    { name: "Procurable 19", subcontractor: "Subcontractor Bob", phase_id: 12, account_id: 2, division_id: 3 },
    { name: "Procurable 20", subcontractor: "Subcontractor Bob", phase_id: 12, account_id: 2, division_id: 1 },
    { name: "Procurable 21", subcontractor: "Subcontractor Bob", phase_id: 12, account_id: 2, division_id: 2 },
    { name: "Procurable 22", subcontractor: "Subcontractor Bob", phase_id: 12, account_id: 2, division_id: 3 }
])