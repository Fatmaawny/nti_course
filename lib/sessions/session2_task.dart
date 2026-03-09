// import 'dart:io';
//task-1
// Q-1
// accessPermission(String username, String password, bool isAccountActive) {
//   if (username == "student" && password == "iti123" && isAccountActive == true)
//     return "Login Successful";
//   else
//     return "Access Denied";
// }
// void main() {
//   print(accessPermission("student", 'iti123', true));
// }

//Q-2
// discount(double price, bool isPremium, bool hasCoupon) {
//   if (isPremium == true || hasCoupon == true) {
//     return price * 0.85;
//   } else {
//     return price;
//   }
// }
//
// void main() {
//   print(discount(100, true, true));
// }

// Q-3
// finalDegree(int examScore, int attendancePercentage){
//   if(examScore >= 50 && attendancePercentage >= 75)
//     return "Passed";
//   else
//     return "Failed";
// }
// void main(){
//   print(finalDegree(50,75));
// }

// Q-4
// loanApproval(int salary,int age,bool hasExistingLoan){
//   if(salary >= 5000 && age >= 21 && age <= 60 && hasExistingLoan == false)
//     return "Loan Approved";
//   else
//     return "Loan Rejected";
// }
// void main(){
//   print(loanApproval(5000, 40, false));
// }

// Q-5
// deliveryFee(int orderAmount,int distance){
//   if(orderAmount>=300){
//     return orderAmount;
//   }
//   else {
//     return (distance*5) + orderAmount;
//   }
// }
// void main(){
//   print(deliveryFee(200,10));
// }

// Q-6
// bonus(int experience,int rating){
//   if(experience >= 3&& rating>=4)
//     return "Bonus Granted";
//   else
//     return "No Bonus";
// }
// void main(){
//   print(bonus(3,4));
// }

// Q-7
// doorAccess(bool hasAccessCard,bool knowsPassword){
//   if(hasAccessCard == true && knowsPassword == true)
//     return "Door Opened";
//   else
//     return "Access Restricted";
// }
// void main(){
//   print(doorAccess(true,true));
// }

// Q-8
// electricityConsumption(int usage){
//   if(usage <200)
//     return "Low Consumption";
//   else if(usage>=200 && usage <=500)
//     return "Medium Consumption";
//   else
//     return "High Consumption";
// }
// void main(){
//   print(electricityConsumption(100));
// }

// Q-9
// toNextLevel(int completedLessons, int quizScore){
//   if(completedLessons >=10 &&quizScore>=70)
//     return "Level Unlocked";
//   else
//     return "Complete Requirements";
// }
// void main(){
//   print(toNextLevel(30,72 ));
// }

// Q-10
// rideAvailability(bool driverAvailability, double userBalance,double tripCost){
//   if(driverAvailability == true && userBalance >= tripCost)
//     return "Ride Confirmed";
//   else
//     return "Insufficient Conditions";
// }
// void main(){
//   print(rideAvailability(true, 400,210));
// }