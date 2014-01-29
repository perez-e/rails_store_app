products = [["Laser", 325, "Good for lasering."],
            ["Shoe", 23.4, "Just the left one."],
            ["Wicker Monkey", 78.99, "It has a little wicker monkey baby."],
            ["Whiteboard", 125, "Can be written on."],
            ["Chalkboard", 100, "Can be written on.  Smells like education."],
            ["Podium", 70, "All the pieces swivel separately."],
            ["Bike", 150, "Good for biking from place to place."],
            ["Kettle", 39.99, "Good for boiling."],
            ["Toaster", 20.00, "Toasts your enemies!"],
           ]

products.each do |product|
  name = product[0]
  price = product[1]
  description = product[2]
  Product.create(name: name, price: price, description: description)
end

  categories = ["digital",
              "music",
              "shoes",
              "furniture",
              "toys", "education"
             ]
categories.each do |category|
  Category.create(name: category)
end

i=1
Category.all.each do |category|
  category.products << Product.find(i)
  i+=1
end