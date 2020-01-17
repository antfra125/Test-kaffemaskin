// Import our program
// (in this case an instance of a coffee machine
// so that we can run unit tests methods)
let CoffeeMachine = require('../index.js');
let myMachine;

// Export the step-definitions
// (tests) so that Cucumber can
// read/use them
module.exports = function () {

  this.Given(/^that the machine is plugged in$/, function () {
    // Make a new machine for each scenario
    myMachine = new CoffeeMachine();
    // tell the machine that it is plugged in
    myMachine.checkForPower();
    // check if the property pluggedIn is true
    // this also works: assert(myMachine.pluggedIn)
    // but this is clearer
    assert.strictEqual(
      myMachine.pluggedIn,
      true,
      'Expected the property pluggedIn to be true after calling the plugIn() method.'
    );
  });

  this.Given(/^that water is available$/, function () {
    // tell the machine to connect to water
    myMachine.checkForWater();
    // check if the property connectedToWater is true
    assert.strictEqual(
      myMachine.connectedToWater,
      true,
      'Expected the property connectedToWater to be true after calling the connectToWater() method.'
    );
  });

  this.Given(/^that the machine has ground coffee$/, function () {

    assert.deepEqual(myMachine.checkCoffee(),
      false,
      "Excpect a new machin not to have coffee"
    );

    myMachine.fillWithCoffee(100);

    assert.deepEqual(myMachine.checkCoffee(),
      true,
      "Expect the machine to have enough coffee for a cup (if filled with 100 gram)"
    );
  });

  this.Given(/^that the machine has chocolatepowder$/, function () {

    assert.deepEqual(myMachine.checkChocolatePowder(),
      false,
      "Excpect a new machin not to have chocolatepowder"
    );

    myMachine.fillWithChocolatePowder(100);

    assert.deepEqual(myMachine.checkChocolatePowder(),
      true,
      "Expect the machine to have enough chocolatepowder for a cup (if filled with 100 gram)"
    );
  });

  this.Given(/^that the machine has milk$/, function () {

    assert.deepEqual(myMachine.checkMilk(),
      false,
      "Excpect a new machin not to have milk"
    );

    myMachine.fillWithMilk(100);

    assert.deepEqual(myMachine.checkMilk(),
      true,
      "Expect the machine to have enough milk for a cup of hotchocolate or a cappuccino (if filled with 100 cl)"
    );
  });




  this.Given(/^that the machine has cups$/, function () {

    myMachine.fillWithCups(5);

    assert.isAtLeast(myMachine.numberOfCups,
      1,
      "Excpect a new machin not to have cups"
    );
  });

  this.When(/^the user selects black coffee$/, function () {
    // Write code here that turns the phrase above into concrete actions
    assert.notStrictEqual(myMachine.selectBlackCoffee(),
      true,
      "Insert " + myMachine.priceBlackCoffee + " kr"
    );
  });

  this.When(/^the user inserts a (\d+) kr coin$/, function (amountOfMoney) {

    amountOfMoney /= 1;

    let moneyBefore = myMachine.insertedMoney;
    myMachine.insertMoney(amountOfMoney);
    assert.deepEqual(
      myMachine.insertedMoney,
      moneyBefore + amountOfMoney,
      "Expect the amount of money to increease with the money inserted"
    );
  });

  this.When(/^the user inserts a "([^"]*)" kr coin$/, function (nonMoney) {
    nonMoney /= 1;
    global.nonMoney = nonMoney;
    assert.throws(
      function () {
        myMachine.insertedMoney(global.nonMoney);
      },
      Error,
      'You must insert money, not ' + nonMoney,
      'Did not get an error from the program (which we should) we try to insert ' + nonMoney
    );
  });

  this.Given(/^the the machine dispense a cup$/, function () {

    assert.isAtLeast(
      myMachine.numberOfCups,
      1,
      "Excpect the machin to have atleast one cup"
    );
    myMachine.dispenseCup();
  });



  this.Then(/^the user recieves a cup of black coffee$/, function () {
    assert.deepEqual(myMachine.brewBlackCoffee(),
      true,
      "Here is your blackcup off coffee"
    );
  });

  this.Given(/^that the machine has no ground coffee$/, function () {
    assert.deepEqual(myMachine.checkCoffee(),
      false,
      "Expect the machine to not have coffee"
    );
  });

  this.Given(/^that the machine has no milk$/, function () {
    assert.deepEqual(myMachine.checkMilk(),
      false,
      "Expect the machine to not have milk"
    );
  });

  this.Given(/^that the machine has no chocolatepowder$/, function () {
    assert.deepEqual(myMachine.checkChocolatePowder(),
      false,
      "Expect the machine to not have chocolatepowder"
    );
  });

  this.Then(/^the user gets change for the blackcoffee if there is any$/, function () {
    assert.deepEqual(myMachine.returnChangeBalckCoffee(),
      true,
      "Expect if the user instrted more then the lest amount off money, the user should get change back"
    );
  });

  this.Then(/^the user gets change for the cappuccino if there is any$/, function () {
    assert.deepEqual(myMachine.returnChangeCappuccino(),
      true,
      "Expect if the user instrted more then the lest amount off money, the user should get change back"
    );
  });

  this.Then(/^the user gets change for the hotchocolate if there is any$/, function () {
    assert.deepEqual(myMachine.returnChangeHotChocolate(),
      true,
      "Expect if the user instrted more then the lest amount off money, the user should get change back"
    );
  });




}