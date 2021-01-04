//function extensions
typedef ExceptionHandler = Function(Exception);
//try shortcut for try and catch with
// ignore: always_declare_return_types
handleError(Function doSomething, { ExceptionHandler onError}){
  try { doSomething();}
  catch (error) { onError(error);}
}
dynamic printError(Function doSomething) => handleError(doSomething, onError: print);
extension FunctionExtension<T extends Function> on T{
  dynamic _handleError({ExceptionHandler onError}) => handleError(this, onError: onError);
  dynamic _printError() => printError(this);
}
//ex.
//  handleError(() async => GoogleSignIn.signIn(), onError: print);
// future extensions
extension FutureFunctionExtension<T extends Future<Function>> on T{
//  _handleError({ExceptionHandler onError}) => handleError(this, onError: onError);
//   _printError() => printError(() async => await this);
}
/////////////////////////////////////////////////////////////////////////////////////////////////////^ under process
