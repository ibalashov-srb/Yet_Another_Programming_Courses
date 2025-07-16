
void main() {
  String email = "test@test.test";
  String password = "123_123+q";

  String user_email = "test@test.test";
  String user_password = "123_123+";
  if (email == user_email && password == user_password) {
    print("success &&");
  } else {
    print("fail &&");
  }

  if (email == user_email || password == user_password) {
    print("success ||");
  } else {
    print("fail ||");
  }

  var t = email == user_email; 
  if (!t) {
    print("success !");
  } else {
    print("fail !");
  }


  if (!(email == user_email) && password == user_password) {
    print("success ! &&");
  } else {
    print("fail ! &&");
  }
}