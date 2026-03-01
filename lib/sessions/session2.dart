//operators
//is - is! (for data type) - as (casting)
//Task no.1
check_type({required var x}) {
  if (x is int)
    return "type is int";
  else if (x is String)
    return "type is string";
  else if (x is double)
    return "type is double";
}

void main() {
  print(discounts(1000, premium_member: true));
}
//ternary operation
//Task no.2
user_access([bool? login]) {
  bool email_verifying = true;
  if (login == true && email_verifying == true)
      return "Dashboard Access Granted";
      else return "Access Denied";
}

//Task no.3
discounts(int total_purchase,{required bool premium_member} ) {

  if (premium_member == true || total_purchase > 1000)
      return "Discount Applied";
      else return "No Discount";
}
//cascade notation
//.      --->
//..     ---> cascade notation
//...    --->
//lambda function