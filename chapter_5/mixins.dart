abstract class SnickersOrginal {
  bool hasHazelNut = true;
  bool hasRice = false;
  bool hasAlmond = false;
  bool hasButter = true;
}

abstract class SnickersCrisp {
  bool hasHazelNut = true;
  bool hasRice = true;
  bool hasAlmond = false;
  bool hasButter = true;
}

abstract class SnickersAlmonds {
  bool hasHazelNut = false;
  bool hasRice = false;
  bool hasAlmond = true;
  bool hasButter = true;
}

abstract class SnickersAlmondButter {
  bool hasHazelNut = false;
  bool hasRice = false;
  bool hasAlmond = true;
  bool hasButter = true;
}

abstract class ChocolateBar {
  bool hasChocolate = true;
}

class CandyBarOriginal extends ChocolateBar with SnickersOrginal {
  List<String> ingredients = [];

  CandyBar() {
    if (hasChocolate) {
      ingredients.add('Chocolate');
    }
    if (hasHazelNut) {
      ingredients.add('Hazelnut');
    }
    if (hasRice) {
      ingredients.add('Rice');
    }
    if (hasAlmond) {
      ingredients.add('Almonds');
    }
  }

  List<String> getIngredients() {
    return ingredients;
  }
}

class CandyBarCrisp extends ChocolateBar with SnickersCrisp {
  List<String> ingredients = [];

  CandyBarCrisp() {
    if (hasChocolate) {
      ingredients.add('Chocolate');
    }
    if (hasHazelNut) {
      ingredients.add('Hazelnut');
    }
    if (hasRice) {
      ingredients.add('Rice');
    }
    if (hasAlmond) {
      ingredients.add('Almonds');
    }
  }

  List<String> getIngredients() {
    return ingredients;
  }
}

class CandyBarAlmonds extends ChocolateBar with SnickersAlmonds {
  List<String> ingredients = [];

  CandyBarAlmonds() {
    if (hasChocolate) {
      ingredients.add('Chocolate');
    }
    if (hasHazelNut) {
      ingredients.add('Hazelnut');
    }
    if (hasRice) {
      ingredients.add('Rice');
    }
    if (hasAlmond) {
      ingredients.add('Almonds');
    }
  }

  List<String> getIngredients() {
    return ingredients;
  }
}

class CandyBarAlmondButter extends ChocolateBar with SnickersAlmondButter {
  List<String> ingredients = [];

  CandyBarAlmondButter() {
    if (hasChocolate) {
      ingredients.add('Chocolate');
    }
    if (hasHazelNut) {
      ingredients.add('Hazelnut');
    }
    if (hasRice) {
      ingredients.add('Rice');
    }
    if (hasAlmond) {
      ingredients.add('Almonds');
    }
    if (hasButter) {
      ingredients.add('Butter');
    }
  }

  List<String> getIngredients() {
    return ingredients;
  }
}

void main(List<String> args) {
  // var snickersOriginal = CandyBarOriginal();
  // var snickersCrisp = CandyBarCrisp();
  // var snickersAlmonds = CandyBarAlmonds();
  var snickersAlmondButter = CandyBarAlmondButter();

  print('Ingredients of Snickers Almond Butter:');
  snickersAlmondButter
      .getIngredients()
      .forEach((ingredient) => print(ingredient));
}
