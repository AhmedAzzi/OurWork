class DataService {
  static final List<String> medicels = [
    'Pharmacy 1',
    'Pharmacy 2',
    'Pharmacy 3',
    'Pharmacy 4',
    'Pharmacy 5',
    'Pharmacy 6',
    'Pharmacy 7',
    'Pharmacy 8',
    'Pharmacy 9',
    'Pharmacy 10',
    'Pharmacy 11',
    'Pharmacy 12',
    'Pharmacy 13',
  ];

  static List<String> getSuggestions(String query) {
    List<String> collection = [];
    collection.addAll(medicels);
    collection
        .retainWhere((s) => s.toLowerCase().contains(query.toLowerCase()));
    return collection;
  }
}
