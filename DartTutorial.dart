// لازم الكود يتكتب جوة ال main
void main() {

  // comments: use(//) or (/* */)

  // Variables must be declared using the keywords 'const', 'final',
  // 'var' or a type name(var) or (type name)
  // وممكن اعرفه ف بداية الكود او قبل المتغير
  String firstName = 'Abdelhamid';
  int age = 25;
  double weight = 87.25;
  num height = 174;
  bool isHere = true;

  var lastName = 'Khamis';
  var middleName;         // not declared = default value is null
  


  print("I'm ${firstName.toUpperCase()} $lastName\n newLine.")
  
  // string operations
  print(firstName.toUpperCase());
  print(lastName.endsWith('is'));
  print(middleName.isnotempty());
  
  print(weight * 2);
  print(age + weight + height );



  // Immutables with final 
  final planet= 'Jupiter';          // مش بيبدأ غير لما ببدأ البرنامج

  //planet= 'Mars';   // error: planet is imutable 


  // للتعبير عن قيم ثابتة لاتتغير
  // Compile-time constants 
  const PI = 3.14;    // بيرن معايا على طول وبياخد مكان من الميمورى
  // static const depth = 10;   must put const, when declaring in class                    
  




















  // full example
  /* this is a full example of the first half of the tutorial */
  int number = 5;

  while (number < 10) {
      if (number == 5) {
        for (var i = 1; i < 6; i++) {
          print("Ana ${firstName.toUpperCase()}, $i time");
      } else {
        print("number not equal to 5");
      }
      
    number = number +1;
  }
    // لو السطر دة برة ال mainمش هيرن 
  }
}
