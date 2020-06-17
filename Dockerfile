from openjdk:8    --运行容器的环境：java或者tomcat
ADD demo.jar demo.jar     -- 两个参数：项目原路径 Dockerfile路径
ENV JAVA_HOME /usr/java/jdk1.8.0_131    --java环境
ENV CLASSPATH $JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar    
ENV PATH $PATH:$JAVA_HOME/bin

ENV LANG C.UTF-8

ENV TZ=Asia/Shangha
RUN bash -c 'touch /demo.jar'   --需要运行的jar包
ENTRYPOINT ["java","-jar","/demo.jar"]    --运行指令
