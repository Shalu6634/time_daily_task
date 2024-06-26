# Button Task


  <img src = "https://github.com/Shalu6634/time_daily_task/assets/149373622/664c2317-134f-48fb-b764-5f566fbc275f" width = 30%  height = 25%>

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

## Digital
<img src = "https://github.com/Shalu6634/time_daily_task/assets/149373622/dadb39d0-f825-4b23-9406-0728591e8a34" width = 20%  height = 25%>


https://github.com/Shalu6634/time_daily_task/assets/149373622/e5df370d-cf67-4a50-a2c5-494ff7952973

## Analog
<img src ="https://github.com/Shalu6634/time_daily_task/assets/149373622/8ba8c6bd-d07b-4574-be1c-1a4da3e1ef90" width = 20%  height = 25%>

https://github.com/Shalu6634/time_daily_task/assets/149373622/22bb2d02-0299-4f50-8b35-84f3a88bff52



## Strap watch
<img src ="https://github.com/Shalu6634/time_daily_task/assets/149373622/63f1fb47-c8b0-4c13-954f-4f2dab3c52db" width = 20%  height = 25%>


https://github.com/Shalu6634/time_daily_task/assets/149373622/0acb73d0-880a-4457-be80-8a7f2b5cae15



