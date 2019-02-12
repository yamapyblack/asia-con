# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#

# Enumeration.delete_all
# Enumeration.create(	 id: 1,	 code_type: 'category',	 code_id: 1,	 value: 'Drain',			)
# Enumeration.create(	 id: 2,	 code_type: 'category',	 code_id: 2,	 value: 'Pavement',			)

# Material.delete_all
# Material.create(	 id: 1,	 category_id: 1,	 name: 'U shape Gutter 300B',	 price: 17.4,	 delivery_date: '2weeks after order',	 color: 'Gray Only',	 size: 300,	 headline: 'U shape Gutter JIS Quality',	 description: 'Japanese Standard Quality of U shape Gutter. It can be used anywhere and easy to install',	 image_path: 'paris.jpeg',	 catalog_path: '',	 company_id: 1,			)
# Material.create(	 id: 2,	 category_id: 2,	 name: 'Interlocking Straght 6cm',	 price: 10,	 delivery_date: '2weeks after order',	 color: 'Gray / Black / Red / Blue / Orange / Brown / White / Yellow ',	 size: 60,	 headline: 'Interlocking Pavement JIS Quality Suitable for parking, walkway, Motor cycle way',	 description: ' The straight and flat shape is most favorite style of the world. The shape is acceptable for every situation and contribute appearance. Available to choose one color only and three color random pattern, Almighty interlocking paver.',	 image_path: 'paris.jpeg',	 catalog_path: '',	 company_id: 1,			)

# Company.delete_all
# Company.create(	 id: 1,	 company_name: 'OMURA Concrete Co., Ltd.',	address: '	3rd Floor Phnom Penh Tower, #445, Monivong Blvd, Sangkat Boeung Pralit, Khan 7 Makara, Phnom Penh, Cambodia', phone_no: '023 964 250',	 mail_address: 'info@omura-cambodia.com',	 person: 'Hiroya Kon',	 url: 'http://omura-cambodia.com/',			)

Category.delete_all
Category.create(   category_id: 1,   name: 'Fundamental',  sort_no: 1,        )
Category.create(   category_id: 2,   name: 'Exterior',   sort_no: 2,        )
Category.create(   category_id: 3,   name: 'Interior',   sort_no: 3,        )
Category.create(   category_id: 4,   name: 'Electric',   sort_no: 4,        )
Category.create(   category_id: 5,   name: 'Bath toilet',  sort_no: 5,        )
Category.create(   category_id: 6,   name: 'Machinely',  sort_no: 6,        )
Category.create(   category_id: 7,   name: 'Pipe',   sort_no: 7,        )
