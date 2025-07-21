void main() {
  Map<String, String> accounts = {
    'alice': '1234',
    'bob': 'qwerty',
    'admin': 'root'
  };

  print(isValid(accounts, 'alice', '1234') == true ? 'Test 1 Passed' : 'Test 1 Failed');
  print(isValid(accounts, 'bob', 'wrong') == false ? 'Test 2 Passed' : 'Test 2 Failed');
  print(isValid(accounts, 'admin', 'root') == true ? 'Test 3 Passed' : 'Test 3 Failed');
  print(isValid(accounts, 'user', '1234') == false ? 'Test 4 Passed' : 'Test 4 Failed');
}

// TODO: реализуй функцию
bool isValid(Map<String, String> accounts, String login, String password) {
  // Здесь должен быть твой код
  return false;
}
