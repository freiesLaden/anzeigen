@ECHO OFF
CLS
ECHO "Compile the Statistics"
PAUSE
SET CLASSPATH=C:\Users\W3stm\hwestmoreland\dev_jars\json-20140107.jar;C:\Users\W3stm\hwestmoreland\dev_jars\javax.servlet-5.1.11.jar;c:\Users\W3stm\hwestmoreland;
SET STATS=C:\Users\W3stm\hwestmoreland\com\anglesbyaliens\statistics\
SET ARCH_STATS=C:\Users\W3stm\hwestmoreland\epsilon\ep\WEB-INF\classes\com\anglesbyaliens\statistics
javac -bootclasspath "C:\Program Files\Java\jdk1.7.0_80\jre\lib\rt.jar" -target 1.8 -source 1.8 %STATS%*.java
ECHO.
DIR %STATS%*.class
PAUSE
COPY %STATS%*.class %ARCH_STATS%
DIR %ARCH_STATS%\*.class /o:d