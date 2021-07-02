@ECHO OFF
CLS
ECHO "Compile the Statistics"
PAUSE
SET CLASSPATH=C:\Users\W3stm\hwestmoreland\dev_jars\json-20140107.jar;C:\Users\W3stm\hwestmoreland\dev_jars\javax.servlet-5.1.11.jar;c:\Users\W3stm\hwestmoreland;
SET USER=C:\Users\W3stm\hwestmoreland\com\anglesbyaliens\users\
SET ARCH_USER=C:\Users\W3stm\hwestmoreland\epsilon\ep\WEB-INF\classes\com\anglesbyaliens\users
javac -bootclasspath "C:\Program Files\Java\jdk1.7.0_80\jre\lib\rt.jar" -target 1.8 -source 1.8 %USER%*.java
ECHO.
DIR %USER%*.class
PAUSE
COPY %USER%*.class %ARCH_USER%
DIR %ARCH_USER%\*.class /o:d