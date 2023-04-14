## Code Challenge: Bank Account

Create a `BankAccount` class that represents a bank account. The class should have the following properties:

- `accountNumber` (a string)
- `balance` (a double)

The class should have the following methods:

- `deposit(amount)` (void) - adds `amount` to the balance.
- `withdraw(amount)` (void) - subtracts `amount` from the balance.
- `getBalance()` (double) - returns the current balance.
- `toString()` (String) - returns a string representation of the object, in the following format: "Account #${accountNumber}, Balance: ${balance}".

Create a `SavingsAccount` class that extends `BankAccount`. The `SavingsAccount` class should have an additional property:

- `interestRate` (a double)

The `SavingsAccount` class should also have an additional method:

- `addInterest()` (void) - adds interest to the account based on the current balance and the interest rate. The interest rate is given as an annual percentage, but interest should be calculated monthly.

Create a `CheckingAccount` class that extends `BankAccount`. The `CheckingAccount` class should have an additional property:

- `overdraftLimit` (a double)

The `CheckingAccount` class should also have an additional method:

- `withdraw(amount)` (void) - subtracts `amount` from the balance. If the resulting balance would be less than zero but greater than `-overdraftLimit`, then the withdrawal should be allowed, but a fee of `$10` should be charged to the account. If the resulting balance would be less than `-overdraftLimit`, then the withdrawal should not be allowed.

Implement each of these classes and their methods. Then, write a simple test program that creates instances of each class and performs some transactions to test their behavior. For example:

```dart
void main() {
  var account1 = new SavingsAccount("1234", 1000.0, 0.02);
  account1.addInterest();
  print(account1); // should print "Account #1234, Balance: 1020.0"

  var account2 = new CheckingAccount("5678", 500.0, -100.0);
  account2.withdraw(200.0);
  print(account2); // should print "Account #5678, Balance: 290.0"
  account2.withdraw(200.0);
  print(account2); // should print "Account #5678, Balance: -20.0"
  account2.withdraw(10.0);
  print(account2); // should print "Account #5678, Balance: -30.0"
}
