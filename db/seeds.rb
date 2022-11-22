Category.create!(name: 'Anesthesiologists')
Category.create!(name: 'Pediatricians')
Category.create!(name: 'Cardiologists')
Category.create!(name: 'Psychiatrists')
Category.create!(name: 'Emergency physicians')
Category.create!(name: 'Internists')
Category.create!(name: 'Family physicians')
Category.create!(name: 'Head of Diagnostic Medicine Nephrologist')

User.create!(full_name: 'John Doe', phone: '1112223334', password: '111111')
User.create!(full_name: 'Jane Doe', phone: '4333222111', password: '111111')

Doctor.create!(full_name: 'Gregory House', phone: '4445557778', password: '111111', category_id: 2)
Doctor.create!(full_name: 'Omar Epps', phone: '4445557779', password: '111111', category_id: 1)
Doctor.create!(full_name: 'Robert Sean Leonard', phone: '4445557777', password: '111111', category_id: 2)
Doctor.create!(full_name: 'Jesse Spencer', phone: '4445557776', password: '111111', category_id: 3)
Doctor.create!(full_name: 'Peter Jacobson', phone: '4445557775', password: '111111', category_id: 4)
Doctor.create!(full_name: 'Lisa Edelstein', phone: '4445557774', password: '111111', category_id: 5)
Doctor.create!(full_name: 'Kal Penn', phone: '4445557773', password: '111111', category_id: 6)
Doctor.create!(full_name: 'Olivia Wilde', phone: '4445557772', password: '111111', category_id: 7)

AdminUser.create!(full_name: 'Admin User', phone: '1111111111', password: '111111')

p "Created #{ User.count } patients"
p "Created #{ Doctor.count } doctors"
p "Created #{ Category.count} categories"
p "Created #{ AdminUser.count} admin_user"