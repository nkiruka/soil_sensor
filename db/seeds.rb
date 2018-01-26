# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

p1 = Plant.create!({name: "Spider Plant", threshold: 80})
p2 = Plant.create!({name: "English Ivy", threshold: 60})
p3 = Plant.create!({name: "Heather Plant", threshold: 40})
p4 = Plant.create!({name: "Kalachoe", threshold: 30})


Sensor.create!([
  {name: "Sensor 1", description: "moisture ", model: "Y-161",plant: Plant.first},
  {name: "Sensor 2", description: "moisture", model: "Y-161",plant: Plant.find(2)},
  {name: "Sensor 3", description: "moisture", model: "Y-161", plant: Plant.find(3)},
  {name: "Sensor 4", description: "moisture", model: "Y-161", plant: Plant.first}
])

sensor1 = Sensor.first
sensor2 = Sensor.find(2)
sensor3 = Sensor.find(3)
sensor4 = Sensor.last

Reading.create!([
  {sensor: sensor1,value: 50, plant: p1, created_at: Time.now},
  {sensor: sensor1,value: 55, plant: p1,created_at: Time.now+2},
  {sensor: sensor1,value: 60, plant: p1,created_at: Time.now+3},
  {sensor: sensor1,value: 65, plant: p1,created_at: Time.now+4},
  {sensor: sensor1,value: 70, plant: p1,created_at: Time.now+5},
  {sensor: sensor1,value: 75, plant: p1,created_at: Time.now+6},
  {sensor: sensor1,value: 80, plant: p1,created_at: Time.now+7},
  {sensor: sensor1,value: 85, plant: p1,created_at: Time.now+8},
  {sensor: sensor1,value: 90, plant: p1,created_at: Time.now+9},
  {sensor: sensor1,value: 95, plant: p1,created_at: Time.now+10},
  {sensor: sensor2, value:30, plant: p2,created_at: Time.now},
  {sensor: sensor2, value: 29, plant: p2,created_at: Time.now+2},
  {sensor: sensor2, value: 29, plant: p2,created_at: Time.now+3},
  {sensor: sensor2, value: 28, plant: p2,created_at: Time.now+4},
  {sensor: sensor2, value: 20, plant: p2,created_at: Time.now+5},
  {sensor: sensor2, value: 30, plant: p2,created_at: Time.now+6},
  {sensor: sensor2, value: 31, plant: p2,created_at: Time.now+7},
  {sensor: sensor2, value: 31, plant: p2,created_at: Time.now+8},
  {sensor: sensor2, value: 32, plant: p2,created_at: Time.now+9},
  {sensor: sensor3, value:30, plant: p3,created_at: Time.now},
  {sensor: sensor4, value: 29, plant: p4,created_at: Time.now+2}
])
