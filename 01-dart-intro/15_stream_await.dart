void main() {
  
  emitNumber()
     .listen( (int value) {
        
       print( 'Stream value: $value' );
       
     }); 
}

// Stream with Future, other works is stream with async/await
Stream<int> emitNumber() async* {
  
  final valuesToEmit = [1,2,3,4,5]; // All emits
  
  for( int i in valuesToEmit ) {
    await Future.delayed( const Duration(seconds: 1));
    yield i; // Take the emit
  }
}

