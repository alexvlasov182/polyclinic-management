# # Users
user_1 = User.create(email: 'user_1@test.com', password: 'password', password_confirmation: 'password')
user_1.save
#
user_2 = User.create(email: 'user_2@test.com', password: 'password', password_confirmation: 'password')
user_2.save
#
# # Patients
# p1 = Patient.new(first_name:"Sherry",last_name: "Moore", email:"moore@hope.com", city: 'Denver', address: '7723 Wheeler Ridge Dr', password: '1111', user_id: user_2)
# p1.save
#
# p2 = Patient.new(first_name:"Lucy",last_name: "Sanchez", email:"lucy@hope.com", city: 'Seattle', address: '8088 Lone Wolf Trail', password: '1111', user_id: user_1)
# p2.save
#
# p3 = Patient.new(first_name:"Francis",last_name: "Carr", email:"carr@hope.com", city: 'London', address: '1034 Trail', password: '1111', user_id: user_2)
# p3.save
# #
# # p4 = Patient.new(first_name:"Allison",last_name: "Cameron", email:"allison@hope.com", city: 'Los Angeles', address: '1034 Main Road street', password: '1111', user_id: user_2)
# # p4.save
# #
# # p5 = Patient.new(first_name:"Dwight",last_name: "Pearson", email:"pearson@hope.com", city: 'Chicago', address: '1125 Mockingbird Ln', password: '1111', user_id: user_2)
# # p5.save
# #
# # p6 = Patient.new(first_name:"Daisy",last_name: "Watson", email:"daisy.watson@example.com", city: 'Tunis', address: '156 Mcclellan Rd', password: '1111', user_id: user_2)
# # p6.save
# #
# # p7 = Patient.new(first_name:"Barry",last_name: "Arnold", email:"barry.arnold@example.com", city: 'Toronto', address: '9278 Preston Rd', password: '1111', user_id: user_2)
# # p7.save
# #
# # p8 = Patient.new(first_name:"Tyrone",last_name: "Steward", email:"tyrone.steward@example.com", city: 'Honolulu', address: '2766 Hamilton Ave', password: '1111', user_id: user_1)
# # p8.save
# #
# # p9 = Patient.new(first_name:"Erik",last_name: "Steward", email:"erik.steward@example.com", city: 'Karachi', address: '740 Crockett St', password: '1111', user_id: user_1)
# # p9.save
# #
# # p10 = Patient.new(first_name:"Eduardo",last_name: "Graham", email:"eduardo.graham@example.com", city: 'Dhaka', address: '9492 Edwards Rd', password: '1111', user_id: user_1)
# # p10.save
#
# # Doctors
# d1 = Doctor.new(first_name:"Gregory",last_name: "House", city: 'Princeton–Plainsboro', address: '716 Spring St', primary_practice: 'Head of Diagnostic Medicine Nephrologist', secondary_practice: 'Head of Diagnostic Medicine Nephrologist',  password: '1111', user_id: user_1)
# d1.save
#
# d2 = Doctor.new(first_name:"Eric",last_name: "Foreman", city: '5965 Forest Ln', address: '716 Spring St', primary_practice: 'Diagnostic', secondary_practice: 'Surgeon',  password: '1111', user_id: user_1)
# d2.save
#
# d3 = Doctor.new(first_name:"James",last_name: "Wilson", city: 'Princeton–Plainsboro', address: '716 Spring St', primary_practice: 'Oncologist', secondary_practice: 'Oncologist', password: '1111', user_id: user_1)
# d3.save
#
#
# # Appointments
# a1 = Appointment.new(doctor_id:1, patient_id:1)
# a1.save
#
# a2 = Appointment.new(doctor_id:1, patient_id:2)
# a2.save
#
# a3 = Appointment.new(doctor_id:1, patient_id:3)
# a3.save
#
# a4 = Appointment.new(doctor_id:1, patient_id:4)
# a4.save
#
# a5 = Appointment.new(doctor_id:1, patient_id:5)
# a5.save
#
# a6 = Appointment.new(doctor_id:2, patient_id:6)
# a6.save
#
# a7 = Appointment.new(doctor_id:2, patient_id:7)
# a7.save
#
# a8 = Appointment.new(doctor_id:3, patient_id:8)
# a8.save
#
# a9 = Appointment.new(doctor_id:3, patient_id:9)
# a9.save
#
# a10 = Appointment.new(doctor_id:3, patient_id:10)
# a10.save
#
# p "Created #{ Patient.count } patients"
# p "Created #{ Doctor.count } doctors"
# p "Created #{ Appointment.count } appointments"
# p "Created #{User.count} users"