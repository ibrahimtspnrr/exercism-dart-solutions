class EmptyBufferException implements Exception {}

class FullBufferException implements Exception {}

class CircularBuffer<T> {
  final int _capacity;
  final List<T?> _buffer;
  int _readPos = 0;
  int _writePos = 0;
  int _size = 0;

  CircularBuffer(this._capacity) : _buffer = List<T?>.filled(_capacity, null);

  void write(T value, {bool force = false}) {
    if (_size == _capacity) {
      if (!force) {
        throw FullBufferException();
      } else {
        _buffer[_writePos] = value;
        _writePos = (_writePos + 1) % _capacity;
        _readPos = _writePos; // en eski veri silindi, okuma noktası da kayar
      }
    } else {
      _buffer[_writePos] = value;
      _writePos = (_writePos + 1) % _capacity;
      _size++;
    }
  }

  T read() {
    if (_size == 0) {
      throw EmptyBufferException();
    }

    final value = _buffer[_readPos];
    _buffer[_readPos] = null; // temizlik
    _readPos = (_readPos + 1) % _capacity;
    _size--;
    return value as T;
  }

  void clear() {
    for (int i = 0; i < _capacity; i++) {
      _buffer[i] = null;
    }
    _readPos = 0;
    _writePos = 0;
    _size = 0;
  }
}
