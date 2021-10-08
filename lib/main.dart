import 'package:flutter/material.dart';
import 'screens/input_page.dart';
import 'screens/result_page.dart';

const baseColor = Color(0xFF0A0E21);

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: myTheme(),
      home: InputPage(),
    );
  }
}

// ThemeData 를 직접 만들어서 넣어도 되고, 아래처럼 하면 dark 테마 베이스에 명시된 내용이 덮어씌워짐.
ThemeData myTheme() {
  return ThemeData.dark().copyWith(
    appBarTheme: const AppBarTheme(
      color:baseColor,
    ),
    scaffoldBackgroundColor: baseColor,
    primaryColor: baseColor,
    //platform: TargetPlatform.iOS,
  );
}


/* map 을 이용해서 루트를 만드는 법 MaterialApp() 에서 적용함.

routes: {
'/' : (context) => page0(),
'/first' : (context) => page1(),
'/second' : (context) => page2()
},

initialRoute : '/', // initialRoute 와 home 은 같이 사용할 수 없다.

// 다른 Widget 에서
onPressed: () {
  Navigator.pushNamed(context, '/first'),
}
 */