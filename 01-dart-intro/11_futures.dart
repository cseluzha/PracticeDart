void main() {
  
  print('Inicio del programa');
  // Use Future
  httpGet('https://fernando-herrera.com/cursos')
    .then( 
      (value){
        print( value );
      })
    .catchError( (err) {
    print('Error: $err');
  });
  
  print('Fin del programa');
}

// Future is similar works on Java, wait a result of promise.
// Similar the promise on React native but with more power.  
Future<String> httpGet( String url ){
  
  return Future.delayed( const Duration(seconds: 1), () {
    
    // When faile the future: 
     throw 'Error en la petición http';
    
// return 'Respuesta de la petición http';
    
  });
  
}