介绍
---
JNI函数偏移名称对照脚本
---


使用IDAPro反汇编Android so代码的时候，总会碰到很多如下的代码，使得分析函数调用很不方便：
```c
  (*(int (__fastcall **)(int, int, _DWORD))(*(_DWORD *)a1 + 676))(a1, a3, 0);
  ```
  <br/>
  <br/>
使用get_method.sh 脚本可以根据偏移直接给出对应的jni方法名<br/>
如上面反汇编的代码中，函数偏移为(a1 + 676), a1就是Env*指针，指向Env变量基地址，676就是偏移地址,执行脚本可以得到如下信息：<br/>

```java
./get_method.sh 676
const char* (*GetStringUTFChars)(JNIEnv*, jstring, jboolean*);
```
  <br/>
可以看到方法为GetStringUTFChars   <br/>
