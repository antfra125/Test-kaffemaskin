// A class that defines how a
// coffee machine shall work

class CoffeeMachine {

  constructor() {
    this.pluggedIn = false;
    this.connectedToWater = false;
    this.numberOfCups = 0;
    this.insertedMoney = 0;
    // these two properties in gram
    this.amountOfCoffee = 0;
    this.amountOfChocolatePowder = 0;
    this.amountOfMilk = 0;
    this.coffeePerCup = 13;
    this.amountOfChocolatePowderPerCup = 15;
    this.cappuccinoMilkPerCup = 12;
    this.hotChocolateMilkPerCup = 20;
    this.priceBlackCoffee = 5;
    this.prideCappuccino = 10;
    this.priceHotChocolate = 8;

  }

  // maintenance

  checkForPower() {
    this.pluggedIn = true;
  }

  checkForWater() {
    this.connectedToWater = true;
  }

  fillWithCoffee(amount) {
    // amount in grams
    this.amountOfCoffee += amount;
  }

  fillWithChocolatePowder(amount) {
    // amount in grams
    this.amountOfChocolatePowder = + amount;
  }

  fillWithMilk(amount) {
    // amount in grams
    this.amountOfMilk = + amount;
  }

  fillWithCups(amount) {
    // amount (number of cups)
    this.numberOfCups += amount;
  }

  checkCoffee() {
    return this.amountOfCoffee >= this.coffeePerCup;
  }

  checkChocolatePowder() {
    return this.amountOfChocolatePowder >= this.amountOfChocolatePowderPerCup;
  }

  checkMilk() {
    if (this.amountOfMilk >= 20) {
      return true;
    }
    else if (this.amountOfMilk >= 12) {
      return true;
    }
    else {

      return false;
    }
  }

  checkCups() {
    return this.numberOfCups >= 1;
  }

  // user choices

  insertMoney(inserted) {

    if (typeof inserted !== 'number') {
      throw (new Error('You must insert money, not ' + inserted))
    }
    this.insertedMoney += inserted;
  }

  // internals

  selectBlackCoffee() {

    if (this.checkCups() && this.checkCoffee() && this.checkForPower() && this.checkForWater()) {
      'insert ' + this.priceBlackCoffee + ' kr'
    }
    else {
      'Resorces missing'
    }
  }

  selectCappuccino() {

    if (this.checkCups() && this.checkCoffee() && this.checkMilk() && this.checkForWater() && this.checkForPower()) {
      'insert ' + this.priceCappuccino + ' kr'
    }
    else {
      'Resorces missing'
    }
  }

  selectHotChocolate() {

    if (this.checkCups() && this.checkChocolatePowder() && this.checkMilk() && this.checkForPower()) {
      'insert ' + this.priceCappuccino + ' kr'
    }
    else {
      'Resorces missing'
    }
  }


  brewBlackCoffee() {
    if (this.insertedMoney >= 10) {

      this.amountOfCoffee -= this.coffeePerCup;
      return true;
    }

    else {

      return "Not enough money";
    }
  }

  brewCappuccino() {

    if (this.insertedMoney >= priceCappuccino) {

      this.amountOfCoffee -= this.coffeePerCup;
      this.amountOfMilk -= this.cappuccinoMilkPerCup
      return true;
    }
    else {

      return "Not enough money";
    }
  }

  brewHotChocolate() {

    if (this.insertedMoney >= this.priceHotChocolate) {

      this.amountOfChocolatePowder -= this.amountOfChocolatePowderPerCup;
      this.amountOfMilk -= this.hotChocolateMilkPerCup;
      return true;
    }
    else {

      return "Not enough money";
    }
  }


  dispenseCup() {

    this.numberOfCups -= 1;
  }

  returnChangeBalckCoffee() {
    if (this.insertedMoney > this.priceBlackCoffee) {

      this.insertedMoney -= this.priceBlackCoffee;
      return this.insertedMoney;
    }
  }

  returnChangeCappuccino() {
    if (this.insertedMoney > this.priceCappuccino) {

      this.insertedMoney -= this.priceCappuccino;
      return this.insertedMoney;
    }
  }

  returnChangeHotChocolate() {
    if (this.insertedMoney > this.priceHotChocolate) {

      this.insertedMoney -= this.priceHotChocolate;
      return this.insertedMoney;
    }
  }

}


// Export the CoffeeMachine class
module.exports = CoffeeMachine;

