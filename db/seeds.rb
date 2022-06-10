# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
    
Program.create([{code: "BSIT", name: "Bachelor of Science in Information Technology"},
                {code: "BSCS", name: "Bachelor of Science in Computer Science"},
                {code: "BSBA", name: "Bachelor of Science in Business Administration"},
                {code: "BSHRM", name: "Bachelor of Science in Human Resource Management"},
                {code: "BSHRD", name: "Bachelor of Science in Human Resource Development"}])

Program.create([{code: "MHRD", name: "Masters in Human Resource Development"},
                {code: "MBA", name: "Masters in Business Administration"}])

AcadamicYear.create([{year: "2020-2021"},
                     {year: "2021-2022"},
                     {year: "2022-2023"},
                     {year: "2023-2024"},
                     {year: "2024-2025"}])

ProgramLevel.create([{code: "UG", name: "Undergraduate"},
                     {code: "PG", name: "Postgraduate"}])
                    
ProgramType.create([{code: "RG", name: "Regular"},
                    {code: "WK", name: "Weekend"},
                    {code: "SM", name: "Summer"}])
    
    

    

