# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Plant.create!([
  {name: "Spider Plant", threshold: 80},
  {name: "English Ivy", threshold: 60},
  {name: "Heather Plant", threshold: 40},
  {name: "Kalachoe", threshold: 30}
  ])

Sensor.create!([
  {name: "Sensor 1", description: "moisture ", model: "Y-161",plant_id: Plant.first},
  {name: "Sensor 2", description: "moisture", model: "Y-161",plant_id: Plant.find(2)},
  {name: "Sensor 3", description: "moisture", model: "Y-161", plant_id: Plant.find(3)},
  {name: "Sensor 4", description: "moisture", model: "Y-161", plant_id: Plant.first}
])

sensor1 = Sensor.first
sensor2 = Sensor.find(2)
sensor3 = Sensor.find(3)
sensor4 = Sensor.last

Reading.create!([
  {sensor_id: 1,value: 50, plant_id: 1, created_at: Time.now},
  {sensor_id: 1,value: 55, plant_id: 1,created_at: Time.now+2},
  {sensor_id: 1,value: 60, plant_id: 1,created_at: Time.now+3},
  {sensor_id: 1,value: 65, plant_id: 1,created_at: Time.now+4},
  {sensor_id: 1,value: 70, plant_id: 1,created_at: Time.now+5},
  {sensor_id: 1,value: 75, plant_id: 1,created_at: Time.now+6},
  {sensor_id: 1,value: 80, plant_id: 1,created_at: Time.now+7},
  {sensor_id: 1,value: 85, plant_id: 1,created_at: Time.now+8},
  {sensor_id: 1,value: 90, plant_id: 1,created_at: Time.now+9},
  {sensor_id: 1,value: 95, plant_id: 1,created_at: Time.now+10},
  {sensor_id: 2, value:30, plant_id: 2,created_at: Time.now},
  {sensor_id: 2, value: 29, plant_id: 2,created_at: Time.now+2},
  {sensor_id: 2, value: 29, plant_id: 2,created_at: Time.now+3},
  {sensor_id: 2, value: 28, plant_id: 2,created_at: Time.now+4},
  {sensor_id: 2, value: 20, plant_id: 2,created_at: Time.now+5},
  {sensor_id: 2, value: 30, plant_id: 2,created_at: Time.now+6},
  {sensor_id: 2, value: 31, plant_id: 2,created_at: Time.now+7},
  {sensor_id: 2, value: 31, plant_id: 2,created_at: Time.now+8},
  {sensor_id: 2, value: 32, plant_id: 2,created_at: Time.now+9},
  {sensor_id: 3, value:30, plant_id: 3,created_at: Time.now},
  {sensor_id: 4, value: 29, plant_id: 4,created_at: Time.now+2}
])
