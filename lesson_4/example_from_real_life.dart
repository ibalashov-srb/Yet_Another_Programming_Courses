void main() {
  if (!checkGoods()) {
    sayUserNotGoodsOnStorage();
    return;
  }
  
  reserveGood();
  buyGood();
  sendGood();
}

// Проверить товар есть ли на складе
// Зарезервировать товар
// Списать деньги
// Отправть товар

bool checkGoods() {
  return true;
}

bool reserveGood() {
  return true;
}

int buyGood() {
  return 100;
}

bool sendGood() {
  return true;
}

String sayUserNotGoodsOnStorage() {
  return "nothing";
}