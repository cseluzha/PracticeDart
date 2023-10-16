enum FromWho { mine, hers }

class Message {
  final String text;
  final String? imageUrl;
  final FromWho fromWho;
  // We can add mor properties like to date, isRead, isReceive etc. 

  Message({required this.text, this.imageUrl, required this.fromWho});
}
