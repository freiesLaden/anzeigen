@ECHO OFF
CLS
ECHO "Compile the Models"
PAUSE
SET CLASSPATH=C:\Users\W3stm\hwestmoreland\dev_jars\json-20140107.jar;C:\Users\W3stm\hwestmoreland\dev_jars\javax.servlet-5.1.11.jar;c:\Users\W3stm\hwestmoreland;
SET MODEL=C:\Users\W3stm\hwestmoreland\com\anglesbyaliens\model\
SET ARCH_MODEL=C:\Users\W3stm\hwestmoreland\epsilon\ep\WEB-INF\classes\com\anglesbyaliens\model
javac -bootclasspath "C:\Program Files\Java\jdk1.7.0_80\jre\lib\rt.jar" -target 1.8 -source 1.8 %MODEL%*.java
ECHO.
DIR %MODEL%*.class
PAUSE
COPY %MODEL%*.class %ARCH_MODEL%
DIR %ARCH_MODEL%\*.class /o:d