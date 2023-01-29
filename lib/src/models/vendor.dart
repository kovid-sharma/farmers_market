class Vendor {
  final String vendorId;
  final String name;
  final String imageUrl;
  final String description;

  Vendor({required this.imageUrl, required this.name, required this.vendorId, required this.description});

  Map<String, dynamic> toMap() {
    return {
      'vendorId': vendorId,
      'name': name,
      'imageUrl': imageUrl,
      'description': description
    };
  }

  factory Vendor.fromFirestore(Map<String, dynamic> firestore){
    if (firestore == null) return Vendor(imageUrl: ' ', name: ' ', vendorId: ' ', description: ' ');

    return Vendor(  
      vendorId: firestore['vendorId'],
      name: firestore['name'],
      imageUrl: firestore ['imageUrl'],
      description: firestore['description']
    );
  }
}