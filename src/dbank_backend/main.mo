import Debug "mo:base/Debug";

actor DBank{
  var currentValue: Nat = 300;
  currentValue := 100;

//let is like const in js
  let id = 234567;

  Debug.print(debug_show(currentValue));
  //Debug.print("id:");
  //Debug.print(debug_show(id));

  public func topUp(amount: Nat){
    currentValue += amount;
    Debug.print(debug_show(currentValue));
  };

  public func withdraw(amount: Nat){
    let tempValue: Int = currentValue - amount;

    if(tempValue >= 0){
      currentValue -= amount;
      Debug.print(debug_show(currentValue));
    }else{
      Debug.print("The number is under 0");
    }
  };

  //topUp();
}
