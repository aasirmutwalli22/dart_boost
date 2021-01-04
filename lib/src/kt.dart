ReturnType run<ReturnType>(ReturnType Function() action) => action();
// Used for evaluating a block of several statements where an expression is required.
// someNullable ?? run(() {
// var defaultValue = ......;
// // several process...
// return defaultValue;
// });
extension ScopeFunctionsForObject<T extends Object> on T {

  T also(void Function(T it) action) {
    action(this);
    return this;
  }
// main value can not be changed
// print("super".also((it)=>it+="man"));
// output:   super
//
// "super".also((it)=>print(it+="man"));
// output:   superman

  dynamic and(Function action) => action();
// just for single line function
  ReturnType let<ReturnType>(ReturnType Function(T it) action) => action(this);
// main value can be changed
// print("super".let((it)=>it+="man"));
// output:   superman
//
// "super".let((it)=>print(it+="man"));
// output:   superman

  T returns(dynamic val) => val;
// just for single line function with return to avoid {}
}