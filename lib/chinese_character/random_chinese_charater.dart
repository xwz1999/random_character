import 'dart:math';

class RandomCharacter {
  static String getChinese({int length}) {
    int max = 0x9FEF - 0x4e00 + 1;
    int base = 0x4e00;
    int r;
    String rc = '';
    for (var i = 0; i < length ?? 2; i++) {
      r = base + Random().nextInt(max);
      rc = rc + String.fromCharCode(r);
    }
    return rc;
  }

  static String getYijing({int length}) {
    int max = 0x4DE0 - 0x4DC0 + 1;
    int base = 0x4DC0;
    int r;
    String rc = '';
    for (var i = 0; i < length ?? 2; i++) {
      r = base + Random().nextInt(max);
      rc = rc + String.fromCharCode(r);
    }
    return rc;
  }

  static String getHiragana({int length}) {
    int max = 0x3080 - 0x3040 + 1;
    int base = 0x3040;
    int r;
    String rc = '';
    for (var i = 0; i < length ?? 2; i++) {
      r = base + Random().nextInt(max);
      rc = rc + String.fromCharCode(r);
    }
    return rc;
  }

  static String getkatakana({int length}) {
    int max = 0x30E0 - 0x30A0 + 1;
    int base = 0x30A0;
    int r;
    String rc = '';
    for (var i = 0; i < length ?? 2; i++) {
      r = base + Random().nextInt(max);
      rc = rc + String.fromCharCode(r);
    }
    return rc;
  }

  static String getJPCharacter({int length}) {
    int max = 0x30E0 - 0x3040 + 1;
    int base = 0x3040;
    int r;
    String rc = '';
    for (var i = 0; i < length ?? 2; i++) {
      r = base + Random().nextInt(max);
      rc = rc + String.fromCharCode(r);
    }
    return rc;
  }

  static String getEmoji({int length}) {
    int max = 0x1F64F - 0x1F601 + 1;
    int base = 0x1F601;
    int r;
    String rc = '';
    for (var i = 0; i < length ?? 2; i++) {
      r = base + Random().nextInt(max);
      rc = rc + String.fromCharCode(r);
    }
    return rc;
  }

  static String getNum({int length}) {
    int max = 0x003A - 0x0030 + 1;
    int base = 0x0030;
    int r;
    String rc = '';
    for (var i = 0; i < length ?? 2; i++) {
      r = base + Random().nextInt(max);
      rc = rc + String.fromCharCode(r);
    }
    return rc;
  }

  static String getENCharacter({int length}) {
    String _alphabet = 'qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM';
    String rc = '';
    for (var i = 0; i < length ?? 2; i++) {
      rc = rc + _alphabet[Random().nextInt(_alphabet.length)];
    }
    return rc;
  }

  static String getLowerCase({int length}) {
    String _alphabet = 'qwertyuiopasdfghjklzxcvbnm';
    String rc = '';
    for (var i = 0; i < length ?? 2; i++) {
      rc = rc + _alphabet[Random().nextInt(_alphabet.length)];
    }
    return rc;
  }

  static String getUpperCase({int length}) {
    String _alphabet = 'QWERTYUIOPASDFGHJKLZXCVBNM';
    String rc = '';
    for (var i = 0; i < length ?? 2; i++) {
      rc = rc + _alphabet[Random().nextInt(_alphabet.length)];
    }
    return rc;
  }

  static String getCustom(String string, {int length}) {
    assert(string != null);
    String rc = '';
    for (var i = 0; i < length ?? 2; i++) {
      rc = rc + string[Random().nextInt(string.length)];
    }
    return rc;
  }
}
