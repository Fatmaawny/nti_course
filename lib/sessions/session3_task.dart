// Today task
// - write 10 problem that use them
// - creat a class for this methods and use it in main
// - 🚨 Ai answer will get you zero
//for
//while
//do-while
class LoopTasks {
  //problem no.1 => print numbers from 1 to 100
  void printNumbers() {
    for (int i = 1; i <= 100; i++) {
      print(i);
    }
  }

  //problem no.2 => print sum of numbers from 1 to n
  void sumToN(int n) {
    int sum = 0;
    for (int i = 1; i <= n; i++) {
      sum += i;
    }
    print(sum);
  }

  //problem no.3 => print multiplication table for n
  void multiplicationTable(int n) {
    for (int i = 1; i <= 10; i++) {
      print('$n x $i = ${n * i}');
    }
  }

  //problem no.4 => print even numbers from 1 to n
  void sumOfEvenNumbers(int n) {
    for (int i = 1; i <= n; i++) {
      if (i % 2 == 0) {
        print(i);
      }
    }
  }

  //problem no.5 => print sum of even numbers from 1 to n
  void printEvenNumbers(int n) {
    for (int i = 1; i <= n; i++) {
      if (i % 2 == 0) {
        print(i);
      }
    }
  }

  //problem no.6 => count even numbers in a list
  int countEvenNumbers(List<int> numbers) {
    int count = 0;
    for (int num in numbers) {
      if (num % 2 == 0) {
        count++;
      }
    }
    return count;
  }
//problem no.7 => find max number in a list
  int findMax(List<int> numbers) {
    int max = numbers[0];
    for (int i = 1; i < numbers.length; i++) {
      if (numbers[i] > max) {
        max = numbers[i];
      }
    }
    return max;
  }
  //problem no.8 => reverse a list of numbers
  List<int> reverseList(List<int> numbers) {
    List<int> reversed = [];
    for (int i = numbers.length - 1; i >= 0; i--) {
      reversed.add(numbers[i]);
    }
    return reversed;
  }
  //problem no.9 => find factorial
  int factorial(int n) {
    int result = 1;
    for (int i = 1; i <= n; i++) {
      result *= i;
    }
    return result;
  }

//problem no.10 => print stars pattern
  void printStars(int n) {
    for (int i = 1; i <= n; i++) {
      String stars = "";
      for (int j = 1; j <= i; j++) {
        stars += "*";
      }
      print(stars);
    }
  }

}

void main() {
  LoopTasks task = LoopTasks();
  task.printNumbers();
  task.sumToN(5);
  task.multiplicationTable(7);
}
