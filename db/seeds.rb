# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

asystent1 = Asystent.create!(name: "AAA1",salary: 100,email: "aaa1@email.com",hiredate: Date.today )
asystent2 = Asystent.create!(name: "AAA2",salary: 150,email: "aaa2@email.com",hiredate: Date.today )

ct=Certificate.create!([
    {short_name: "UPD",full_name: "Universal..."},
    {short_name: "SSS",full_name: "Super..."}
])

# asocjacja Kwalifikowana
pharmaceut1= Pharmaceut.create!(name: "PHT1",salary: 250,email: "pht1@email.com",hiredate: Date.today,certificate_ids: [ct.first.id,ct.last.id] )
pharmaceut2= Pharmaceut.create!(name: "PHT2",salary: 300,email: "pht2@email.com",hiredate: Date.today,certificate_ids: [ct.first.id,ct.last.id] )


#Limit on attribute
branches=Branch.create!([{kind: "apteka",address: "All. 45342" },{kind: "punkt",address: "Ul1,542"}])


# asocjacja z atrybutem
practices=Practice.create!( [ 
    {worker:asystent1, branch: branches.first, start_date: Date.parse('2001-02-03') },
    {worker:asystent2, branch: branches.last, start_date: Date.parse('2005-02-03') },
    {worker:pharmaceut1, branch: branches.first, start_date: Date.parse('2000-02-03') },
    {worker:pharmaceut2, branch: branches.last, start_date: Date.parse('2001-02-03') }
      ] )

orders = Order.create!([
    {state: "almost",order_date: Date.yesterday,receive_date: Date.today,value: 1000, branch: branches.first},
    {state: "complete",order_date: Date.yesterday,receive_date: Date.today,value: 2000, branch: branches.first}
])

group1 = Group.create!(purpose: "Dla zdrowia",side_effects: ["Glowa","Nogi","ITD"])

manf= Manufacturer.create!(name: "SuperFabryka")

med=Medication.create!([
    {name:"Aspartam",price:10 ,total: 20,group: group1,manufacturer: manf},
    {name:"Spiritus",price:10 ,total: 20,group: group1,manufacturer: manf}
])

ws=Wholesaler.create!(name: "Sprzedawca1",discount: 10)

whp = WholesalePurchase.create!(wholesaler:ws,purchase_date: Date.yesterday,sum: 2000)

#Composition
batch=Batch.create!(due_date: Date.today.months_since(15),number: 10,order: orders.first,wholesale_purchase:whp,medication: med.first)



