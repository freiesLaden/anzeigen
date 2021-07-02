@ECHO OFF
CLS
ECHO "Compile the Controllers"
PAUSE
SET CLASSPATH=C:\Users\W3stm\hwestmoreland\dev_jars\json-20140107.jar;C:\Users\W3stm\hwestmoreland\dev_jars\javax.servlet-5.1.11.jar;c:\Users\W3stm\hwestmoreland;
SET CONTROLLER=C:\Users\W3stm\hwestmoreland\com\anglesbyaliens\controller\
SET ARCH_CONTROLLER=C:\Users\W3stm\hwestmoreland\epsilon\ep\WEB-INF\classes\com\anglesbyaliens\controller
javac -bootclasspath "C:\Program Files\Java\jdk1.7.0_80\jre\lib\rt.jar" -target 1.8 -source 1.8 %CONTROLLER%*.java
ECHO.
DIR %CONTROLLER%*.class
PAUSE
COPY %CONTROLLER%*.class %ARCH_CONTROLLER%
DIR %ARCH_CONTROLLER%\*.class /o:d