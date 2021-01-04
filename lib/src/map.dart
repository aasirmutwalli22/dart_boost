extension MapExtensions<K, V> on Map<K, V>{
  void onKey(String key, Function F, {Function E}) => containsKey(key) ? F() : E ?? (){};
}
bool asBool(dynamic item) => item as bool;
