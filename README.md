# Button Task

 <img src = "https://github.com/Shalu6634/time_daily_task/assets/149373622/664c2317-134f-48fb-b764-5f566fbc275f" width = 30%  height = 25%>

# Digital clock

 <img src = "https://github.com/Shalu6634/time_daily_task/assets/149373622/299a0cc8-3591-4f07-95a6-4818b7afed0b"  width = 27%  height = 27%>
 
# Analogue clock

 <img src = "https://github.com/Shalu6634/time_daily_task/assets/149373622/5321988a-6407-4566-a46a-61911c611ee0"  width = 25%  height = 25%>


https://github.com/Shalu6634/time_daily_task/assets/149373622/d4abdcef-712e-46a3-9083-06c8e226315a

https://github.com/Shalu6634/time_daily_task/assets/149373622/2eb75470-151d-4fc3-b0e8-8c5265503164




# Asynchronous Programming
# 1) What is Asynchronous Programming?

  Asynchronous programming is a programming paradigm that allows tasks or operation to run independently and concurrently, 
  without waiting for each other to complete before moving on to the next task. 

# 2) What is Future Class ?

  The Future class represents a future result of an asynchronous computation. This result will eventually appear in the Future 
  after the processing is complete. Let's see how to write methods that create and return a Future instance.

# 3) What is Duration class & Future.delayed() constructor with Example?
Duration Class :   
The Duration class represents an interval of time in seconds or nanoseconds and is most suited for handling shorter amounts of time, in cases that require more precision.

Future.delayed() constructor :  
The Future delayed constructor enables you to create a future that runs its computation after a prespecified duration.

## Example

```bash
import 'dart:io';

void main() {
  print("Hello dart");
  Future.delayed(Duration(seconds: 3), () {
    print("Hello Java");
  });
  print("Hello Flutter");
}
```



# 4) What is the Use of the async & await keyword?
Use of async keyword:

The async keyword is used to mark a function as asynchronous. An asynchronous function can perform tasks that
may take some time to complete, such as fetching data from a network or reading from a file. 

Use of await keyword :

The await keyword is used to pause the execution of an asynchronous function until a particular asynchronous operation is completed. It can only be used inside an async function.

```bash
import 'dart:io';

void main() async {
  print("Hello dart");
  await Future.delayed(Duration(seconds: 3), () {
    print("Hello Java");
  });
  print("Hello Flutter");
}

```

# 5) What is Recursion ? With Example
Recursion is the method where a function calls itself as its subroutine.

## Example

```bash
import 'dart:io';

import 'dart:async';

void main() {

  Timer.periodic(Duration(seconds: 1), (timer) {
    print("Hello flutter");
  });
  
}
```
# 6) What is Timer class with example?
A countdown timer that can be configured to fire once or repeatedly. The timer counts down from the specified duration to 0.

```bash

import 'dart:async';
import 'dart:io';

void main() {
  print("Hello dart");
  Timer(Duration(seconds: 3), () {
    print("Hello java");
  });
}

```

# 7) What is Timer.periodic and use with Example?
periodic constructor creates a new repeating timer. The callback is invoked repeatedly with duration intervals until canceled with the cancel function.

```bash
import 'dart:io';

import 'dart:async';

void main() {
  
  Timer.periodic(Duration(seconds: 2), (timer) {
    print("Jay Shree Ram");
  });
}
```


