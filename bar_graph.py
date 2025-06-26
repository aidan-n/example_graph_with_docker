import matplotlib.pyplot as plt

# Data for the bar graph
categories = ['Apples', 'Bananas', 'Oranges', 'Grapes']
values = [10, 15, 7, 12]

# Create the bar graph
plt.bar(categories, values)

# Create labels and title
plt.xlabel('Fruit Type')
plt.ylabel('Quantity')
plt.title('Fruit Quantities in Stock')

# Save graph as an image
plt.savefig("my_plot.png")

# Display the graph
plt.show()

print("python script ran")