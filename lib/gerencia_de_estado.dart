class GerenciaDeEstado<T> {
  T _value;
  final List<Function(T value)> _onChanges = [];
  GerenciaDeEstado(this._value);
  get value => _value;

  void changeValue(T value) {
    _value = value;
    _update();
  }

  void _update() {
    _onChanges[_onChanges.length - 1](_value);
  }

  void listen(void Function(T value) onUpdate) {
    _onChanges.add(onUpdate);
  }
}
