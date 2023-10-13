void main() {
  
  // Need listen for receive the information. Other works, need observer that emit.
  emitNumbers().listen( (value) {
     print('Stream value: $value');
  });
  
  
} 

// Streams like the observer pattern
Stream<int> emitNumbers() {
  
  return Stream.periodic( const Duration(seconds: 1), (value){
//     print('desde periodic $value');
    return value;
  }).take(5);  // Take: Limit the emits for the stream
  
}