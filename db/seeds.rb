# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

districts = District.create([
    {name: ''}, 
    {name: 'Lima'}, 
    {name: 'Ancón'}, 
    {name: 'Ate'}, 
    {name: 'Barranco'}, 
    {name: 'Breña'}, 
    {name: 'Carabayllo'}, 
    {name: 'Chaclacayo'}, 
    {name: 'Chorrillos'}, 
    {name: 'Cieneguilla'}, 
    {name: 'Comas'}, 
    {name: 'El Agustino'}, 
    {name: 'Independencia'}, 
    {name: 'Jesús Maria'}, 
    {name: 'La Molina'}, 
    {name: 'La Victoria'}, 
    {name: 'Lince'}, 
    {name: 'Los Olivos'}, 
    {name: 'Lurigancho-Chosica'}, 
    {name: 'Lurin'}, 
    {name: 'Magdalena del Mar'}, 
    {name: 'Pueblo Libre'}, 
    {name: 'Miraflores'}, 
    {name: 'Pachacámac'}, 
    {name: 'Pucusana'}, 
    {name: 'Puente Piedra'}, 
    {name: 'Punta Hermosa'}, 
    {name: 'Punta Negra'}, 
    {name: 'Rimac'}, 
    {name: 'San Bartolo'}, 
    {name: 'San Borja'}, 
    {name: 'San Isidro'}, 
    {name: 'San Juan de Lurigancho'}, 
    {name: 'San Juan de Miraflores'}, 
    {name: 'San Luis'}, 
    {name: 'San Martín de Porres'}, 
    {name: 'San Miguel'}, 
    {name: 'Santa Anita'}, 
    {name: 'Santa Maria del Mar'}, 
    {name: 'Santa Rosa'}, 
    {name: 'Santiago de Surco'}, 
    {name: 'Surquillo'}, 
    {name: 'Villa el Salvador'}, 
    {name: 'Villa Maria del Triunfo'}
    ])
    
statuses = Status.create([
    {name: 'On going'},
    {name: 'Reported'},
    {name: 'Cleared'},
    {name: 'Unresolved'},
    ])
    
categories = Category.create([
    {name: '', description: ''},
    {name: 'Assault', description: 'Assault crime'},
    {name: 'Theft', description: 'Theft crime'},
    {name: 'Car Theft', description: 'Car Theft crime'},
    {name: 'Arson', description: 'Arson crime'},
    {name: 'Shooting', description: 'Shooting crime'},
    {name: 'Kidnapping', description: 'Kidnapping crime'}
    ])