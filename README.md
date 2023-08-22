# DemoblazeAutomationAPI_v3
Automatización de pruebas API al sitio web "demoblaze".

1. Prerequisitos:
  - Maquina local con el sistema operativo Windows 11
  - IDE: IntelliJ IDEA 2023.2 (Ultimate Edition):
    - Runtime version: 17.0.7+7-b1000.6 amd64
    - VM: OpenJDK 64-Bit Server VM by JetBrains s.r.o.
  - Gradle versión 7.6.1: https://gradle.org/next-steps/?version=7.6.2&format=all 
  - correto-17 Amazon Correto Version 17.0.8 (Una opción de JDK ofrecida por IntelliJ)
  - Java SE Development Kit 19.0.2: https://www.oracle.com/java/technologies/javase/jdk19-archive-downloads.html (El jdk que tengo istalado en mi pc, el cual es compatible con la versión de Gradle 7.6.1... y la cual utilizo para mi variable de entorno "JAVA_HOME" la cual tiene como path "C:\Program Files\Java\jdk-19")

2. Comandos de instalación:
  - Seguir estos pasos para la instalación de Gradle 7.6.1: https://gradle.org/install/#manually

3. Instrucciones para ejecutar el test.
  - Clonar/descargar el zip del branch "main".
  - Extraer el proyecto en un directorio y abrir ese directorio con el IDE de IntelliJ
  - Cambiar el path de la versión de Gradle:
    - Ir a: File -> Settings -> Build, Execution, Deployment -> Build Tools -> Gradle -> Gradle Projects -> Gradle -> Distribution
    - Escoger la opción "Local installation" y corregir el path a donde usted haya ubicado la instalación de Gradle. (En mi caso: "C:/Gradle/gradle-7.6.1")
  - Cargar los cambios de Gradle en "build.gradle": Ctrl+Mayús+O (en Windows ) ... "Load Gradle Changes" 
  - Esperar a que el IDE importe las librerías correctamente (que gradle logre cargar las dependencias)
  - Asegurarse de que no haya errores en el código por falta de importar alguna librería.
  - Correr la clase "ManagementTest" que está ubicado en:
    - "DemoblazeAutomationAPI-main/src/test/java/users/ManagementTest.java"
  - Ver el reporte que se genera en:
    - "DemoblazeAutomationAPI-main/build/cucumber-html-reports/overview-features.html"

4. Información adicional
  - Hay que darle tiempo al IDE para que cargue las dependencias del "build.gradle", una vez se han establecido las dependencias, todas las librerías importadas se activan y se logra correr la prueba.
  - Con el Gradle 7.6.1 descargado manualmente y con el JDK 17, luego de clonar el proyecto y abrirlo con Intellij... Se logró correr exitosamente la prueba.
