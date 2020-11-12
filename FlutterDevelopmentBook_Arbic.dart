/**                   [==  Dart Baiscs == ]           */     


import 'dart:io';
import 'dart:math';
import 'dart:svg';


void main() {
  /* من غير ال مين فانكشن، التطبيق مش هيشتغل */
  
  print("Hello dart!");        // semi-colon






/**             1- Variables  
 * Variables must be declared using the keywords 'const',
 * 'final', 'var' or a type name(var) or (type name)
 * ممكن اعرفه ف بداية الكود او قبل المتغير
 */  


var FirstName = "Abdelhamid"; 
String LastName = "Amin"; // String
var MiddleName = "Khamis"; // not declared = default value is null

//  Numbers Representation
num gross_salary = 3200;  // int or floating number
var net_salary = 2400;   // denoted to an int value
int Salary = 2800;         // int
double SalaryTaxes = 120.75; // float

// Boolean 
bool IsReady = true;  // boolean value, t & f are small letters
bool IsReady2 = false;








/*            2- const & final variables                */

const pi = 3.14;     // هى قيم ثابتة لايمكن تغيير قيمتها ابدا PI
final h = 9.81;     // بيسند ليها قيمة مرة واحدة 






/**           3- Arithmatic Operators   المعاملات الرياضية  
 * Addition - Subtraction - Division - Multiplication
 * % Remainder Modulus      
 * ++ increment                 -- decrement
 * += addition assignment       -= Subtraction assignment
 * /= division assignment       %= Modulus assignment
*/
int x = 10;
int y = 20;

var Result1 = x + y;
var Result2 = x / y;  // float division
var Result3 = x % y;  // remainder division

print(Result1);
print(Result2);
print(Result3);






/**         4- Conditional Operators   المعاملات الشرطية
 * تستخدم للتحقق من حالات معينة او الشروط المنطقية
*/

x == y;   // x is equal to y?
x != y;







/*            5- is / is! statement   جملة ايز التحققية     */

print( x is String);    // false
print( x is! String);   // true










/**       6- if / else statement   جمل  ايف وايلس الشرطية
 * تستخدم لاتخاذ بعض القرارات تبعاً لشروط معينة
 */

if (x == 3) {
  print(" x is equal to 3");    // skips this line
} 
else if ( x < 3 || x == 1) {  // || means or
  print(" x is smaller than 3");
}
else {
  print(" x is! equal to 3");  // prints this line
}



/**   Example 1:
 * reads integer z from user [z = stdin.readlinesync(no argument)]
 * parse this value as an integer [int.parse(z)]
 * if z > 100:
 *    print("Large value");
 */

print(" Enter a value for z: ");
var z = stdin.readLineSync();
if ( int.parse(z) >= 100) {
  print(" Large Value ");
  
}




/**       7- switch statement   جمل  سويتش الشرطية
 * بيختار قيمة للمتغير من ضمن عدة احتمالات
 * ثم يتم تنفيذ الامر بتاعه
 */

var operation = stdin.readLineSync();

switch (operation) {
  case '+':        //  الاحتمال الأول للمتغير ان يكون زائد
    print( x+y ); // الامر اللى هيتنفذ لو المتغير طلع اول احتمال
    break;        // توقف تنفيذ الحالة، ويمنع الدخول فى حالة اخرى
  
  case '-':
    print( x-y );
    break;   // The last statement of the 'case' should be 
            // 'break','continue', 'rethrow', 'return', or 'throw'. 

  default: // الاحتمال دة بيتم اختياره فى حالة خارج نطاق الاحتمالات
    print(' Input is Wrong!');
}








/**       8- for-loop   الجملة التكرارية المحدودة
 * بيتم تحديد عدد مرات تكرار أمر ما، بواسطة رقم صحيح
 * ويبنى هذا النوع على مفهوم العداد، وهو عبارة عن متغير
 * (انيشيل فاليو)يأخذ قيمة ابتدائية، 
 * تتغير بمعدل معين(ستيب)
 * الى ان تصل الى القيمة النهائية( فاينال فاليو)
 */

for (var i = 0; i < 5; i++) {
  print("Ascending Counter $i");
}






/**   Example 2:
 * Sum of odd numbers
 * sum of even numbers
 * counting range = 20:50
 */

int sumOdd = 0;
int sumEven = 0;

for (var i = 20; i < 50; i++) {
  if ( i % 2 == 0) {  // العدد الزوجى باقى قسمته على 2 يساوى 0
    sumEven = sumEven + i;
     
  } else {
    sumOdd += i;
  }
}
print("the sum of odd numbers: $sumOdd");
print("the sum of even numbers: $sumEven");









/**       9- continue / break statements  
 * [break]: تستخدم لايقاف حلقة تكرارية عند نحقق شرط معين
 * [continue]: تستخدم لعمل سكيب لحلقة تكرارية عند نحقق شرط معين
 */

for (var i = 0; i < 4; i++) {
  if (i == 2) {     // skip printing if it was number 2
    continue;
  }
  print(i);
}








/**       10- while/ do-while loops الجمل التكرارية الغير محدودة  
 * [while]: تستمر الحلقة ف التنفيذ طالما الشرط محقق،
 *  تختبر الحلقة قبل الدخول بها
 *  لا تدخل الحلقة ولا مرة لو الشرط غير محقق
 * [do-while]: تستمر الحلقة ف التنفيذ طالما الشرط محقق
 *  لا تختبر الحلقة قبل الدخول بها
 * تدخل الحلقة مرة واحدة حتى لو الشرط غير محقق
 */


var one = 0;

while (one == 1) {
  print(one);     // won't print one  
}


do {
  print(one);     // would print one, once
} while (one == 1);







/**   Example 3:
 * find the squares of numbers [pow(x, exponent)]
 * numbers range = 1:10
 */

for (var i = 1; i <= 10; i++) {
  print(pow(i, 2));
}

var i = 0;
while (i <= 10) {
  print(pow(i,2));
  i++;
}









/**         11- Lists القوائم  
 * هى مصفوفات مع بعض الخصائص الاضافية
 * عاوز تسجل 30 اسم طالب، فبدل ماتعمل لكل واحد فيهم متغير، اعمل ليست
 * ليست لعدد الدهب اللى بتجمعو ف لعبة ماريو
 */

var studentsNames = ['Amer','Taher','Shrief'];
print(studentsNames[1]);    // 2nd name(zero indexing)
studentsNames[2] ='M.Ibrahim'; // assign a new value
print(studentsNames.length);  // get the length of the list










/**         12- Functions الدوال  
 * مدخل لدراسة الكائنات، عشان احسن اكواد هى اللى يبقى اسلوبها
 * تقسيم البرنامج الى كائنات والكائنات نفسها تشتمل على دوال كتير
 * والدوال بتشتمل على اسلوب التجزئة
 */

// [find the squared of number] function
int squredNumber(int number){
  return number * number;
}

var g = squredNumber(5);  // هنا الدالة مين، استدعت الدالة
// سكويرد نامبر بالقيمة 5، ويعيد نتيجته للتابع مين
// void: تستخدم فى تعريف الدوال التى لاترجع شئ
//      او بمعنى اخر اللى مفيهاش return 








/**         13- Comments
 * معظم التعليقات مستمدة من نظام التعليقات ف C, C++
 * use        //    or     /** */       (dart-sql)
 * اضف التعليق ليشرح [مابعده] من أكواد برمجية
 */





/**         14- reserved Keywords
 * new reserved keyword + python keywords:
 * new - super - throw - rethrow - var
 */








/**         15- Dart Data Types
 * var - num - int - double
 * var - String
 * bool
 * list - map{dictionary}
 */


/**     15.1- num
 * النوع دة بيتضمن التعامل مع الماثيماتيكال اوبيراتورس،
 * والدوال الرياضيةباستخدام مكتبة [math.dart]
 * Abs() لايجاد القيمة المطلقة
 * ceil() للتقريب للقيمة الأعلى
 */
int p = 1;  // الانتيجر، هى اعداد قيم مجالها ذاكرياً، من 0 حتى 64 بت
double c = 1.02;  // الدوبل، هى اعداد قيم مجالها ذاكرياً، اكبر من 64 بت
var hex = 0xdefafe; // مكتوب بالنظام السادس عشرى




/**     15.2- string    السلاسل النصية
 * هو عبارة عن تسلسل حروف من ترميز UTF(multi language encoding)
 * 
 */


var s1 = "hello world\n I\''m medo";

// string operations
print(s1.toUpperCase());
print(s1.endsWith('is'));
print(s1.split(" "));






/**     15.3- Lists  
 * يمكن ان التكون الليستس لها 
 * طول ثابت: محدد عند التصريح عنها ولايمكن ان تتسع اكثر من طولها
 * طول متنامى: لايوجد لها حدود اتساع
 */  

var studentsRecords = [10,20,30];

// /Lists operations
studentsRecords.first;    // يعيد العنصر الاول من الليست
studentsRecords.length;   // طول الليست
studentsRecords.reversed; // يعيد اوبجكت لنفس الليست بس معكوسة








/**     15.4- Maps (Dictionaries)  
 * consists of a key-value pair
 * key is unique 
 */  

var countries = {
  "Egy":"Cairo",
  "Ger":"Berlin",
  "Usa":" Washington"
};

// /Maps operations
countries['Egy'] = "New Cairo";   // replace an old value







/**        16- `Dart Culture`  طريقة تسمية المتغيرات 
 * [Class] : الكلاس بيبدأ بحرف كابيتال
 * [object]: الاوبجكت بيبدأ بحرف صغير 
 * material_app : snake_case المكتبات بحروف صغير واندرسكور
 * Constants : CamelCase
 */







/**        17- `try - catch`  لتجنب الوقوع فى حالات فشل للبرنامج
 * [try]: بحط فيها الجزء المطلوب واللى مش عاوز يحصل فيه خطأ، زى
 * فتح قاعدة البيانات
 * [catch] : فى حالة وجود اى خطأ، هيخش ينفذ اللى ف الكاتش
 */

try {
  var value1 = 5;
  var value2 = 0;
  print(value1 / value2);

} catch (e) {
  print("Error! division by zero");
}















































}