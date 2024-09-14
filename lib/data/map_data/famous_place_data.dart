// List of famous places with details including image paths
List<Map<String?, dynamic>> famousPlaces = [
  {
    "placeName": "Eiffel Tower",
    "country": "France",
    "description":
        "An iconic symbol of France located in Paris, offering stunning views of the city.",
    "categories": ["Landmark", "Historical", "City View", "Cultural"],
    "imagePath":
        "image/eiffel_tower.jpg" // Local asset image path or a network URL
  },
  {
    "placeName": "Great Wall of China",
    "country": "China",
    "description":
        "A historic wall stretching across northern China, built to protect against invasions.",
    "categories": [
      "Historical",
      "Adventure",
      "UNESCO World Heritage",
      "Scenic"
    ],
    "imagePath": "image/greatwallchina.jpg"
  },
  {
    "placeName": "Colosseum",
    "country": "Italy",
    "description":
        "A grand amphitheater in Rome, once used for gladiatorial contests and public spectacles.",
    "categories": ["Historical", "Cultural", "Architecture", "Landmark"],
    "imagePath": "image/colosseum.jpg"
  },
  {
    "placeName": "Santorini",
    "country": "Greece",
    "description":
        "A beautiful island known for its white-washed buildings, crystal-clear waters, and stunning sunsets.",
    "categories": ["Island", "Romantic", "Beach", "Cultural"],
    "imagePath": "image/santorini.jpg"
  },
  {
    "placeName": "Machu Picchu",
    "country": "Peru",
    "description":
        "A 15th-century Incan citadel located in the Andes Mountains, known for its archeological significance.",
    "categories": [
      "Adventure",
      "Historical",
      "Nature",
      "UNESCO World Heritage"
    ],
    "imagePath": "image/machu_picchu.jpg"
  },
  {
    "placeName": "Statue of Liberty",
    "country": "USA",
    "description":
        "A symbol of freedom and democracy, located in New York Harbor, welcoming visitors from around the world.",
    "categories": ["Landmark", "Cultural", "Historical", "City View"],
    "imagePath": "image/statue_liberty.jpg"
  },
];

// Example of how to access the data including the image path
void main() {
  famousPlaces.forEach((place) {
    print('Place: ${place['placeName']}, Country: ${place['country']}');
    print('Description: ${place['description']}');
    print('Categories: ${place['categories'].join(', ')}');
    print('Image Path: ${place['imagePath']}');
    print('-------------------');
  });
}
