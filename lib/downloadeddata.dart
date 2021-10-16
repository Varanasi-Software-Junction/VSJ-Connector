class DownloadedData {
  final int id;
  final String data;


  DownloadedData(this.id, this.data) {}

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'data': data,
    };
  }

// Implement toString to make it easier to see information about
// each book.
  @override
  String toString() {
    return 'Downloaded Data k{id: $id, data: $data}';
  }
}