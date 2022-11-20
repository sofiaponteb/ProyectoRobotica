# ProyectoRobotica 	:robot:

### Contenido :open_book:

1. [Descripción de la solución creada](#descripción-de-la-solución-creada-📌)
2. [Gripper diseñado](#gripper-diseñado-🖊️)
3. [Herramienta porta ventosas](#herramienta-porta-ventosas-🛠️)
4. [Modelo en Robot Studio](#modelo-en-robot-studio-🔎)
5. [Código en RAPID](#código-en-rapid-💻)
6. [Proceso de ensamble](#proceso-de-ensamble-🔧)
7. [Conclusiones](#conclusiones-📄)
8. [Referencias](#referencias-📖)


## Descripción de la solución creada :pushpin:

Para solucionar el problema planteado, se propone el ensamble de un gripper de 6 piezas tipo tijera, el cual tiene 3 tipos de piezas: mango, agarre y cuerpo. Estas piezas se ensamblan usando tornillos para así obtener un producto final que permite cambiar objetos de lugar con un sencillo movimiento del mango. 

Luego de plantear el tipo de gripper se procede a realizar su modelado en inventor, teniendo en cuenta que todas las piezas tengan como ancho mínimo el diámetro de la ventosa a utilizar. Las piezas diseñadas se ubican en una base para así poder realizar el modelo en RobotStudio y obtener el código en RAPID que permita indicar al robot los movimientos que debe realizar para ensamblar la pieza.

Finalmente, se propone el uso de un circuito neumático para realizar las labores de pick and place, para esto se realiza un montaje en el robot que permita controlar el flujo de aire a través de salidas digitales en el tablero de control del robot IRB 140, el control de estas salidas digitales se programa en RobotStudio para ser incluido en el código de Rapid. Adicionalmente, se incluye una entrada digital que permite iniciar la rutina solamente al presionar un botón en el tablero, así como un indicador del fin de la rutina usando una salida digital conectada a un bombillo.

## Gripper diseñado :pen:
El gripper a ser ensamblado por el robot ABB IRB140 se presenta a continuación:

![1](/img/gripper1.jpeg)

El gripper se fabricó en madera MDF con un proceso de corte láser, se emplearon tornillos de 1/4 de pulgada para unir las piezas, así como las tuercas y arandelas correspondientes. Se realizó un modelo en inventor, y se diseñó teniendo en cuenta el diámetro de la ventosa a utilizar.

![1](/img/gripper2.jpeg)

Se diseñó también una base en madera MDF de 9 mm, la cual contiene dos secciones:
La sección superior tiene los agujeros donde se insertan los tornillos, es en esta sección donde se ensamblará el gripper. La parte inferior mantiene las piezas desde el inicio del proceso hasta el momento en que son tomadas por el robot. Las dimensiones de esta base son 40x37 cm.

![1](/img/base.jpeg)

A continuación se muestra una imagen obtenida con el software Inventor donde se presenta la base con el gripper en la posición inicial y después de realizar el ensamblaje.

![1](/img/baseRender.png)

## Herramienta porta ventosas :hammer_and_wrench:

La herramienta se diseñó para ser creada con corte láser en MDF de 6 mm. Se hizo a partir de dos círculos de madera con cuatro agujeros que se ajustan al plato del robot. El círculo superior tiene un agujero donde se coloca la ventosa. Para la herramienta se usaron además 4 tornillos de 6 milímetros, 8 tuercas de este mismo diámetro, y 4 tubos de aluminio con un diámetro interior de 6 mm que se colocaron en los tornillos para mantener una distancia fija entre los dos extremos de la herramienta.

![1](/img/herramienta.jpeg)
![1](/img/herramientaRender.png)
![1](/img/herramientaPlano.png)

## Modelo en Robot Studio :mag_right:

![1](/img/robotstudio.mp4)

## Código en RAPID :computer:

>        MODULE Module1
>    
>           CONST robtarget RP1_2:=[[-369.89,317.424,-104],[0,0,0,1],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
>           CONST robtarget RP1:=[[-369.89,317.424,-4],[0,0,0,1],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];>>
>           CONST robtarget DP1_2:=[[-152.102,100.031,-105.74],[0.342020143,0,0,0.939692621],[0,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
>           CONST robtarget DP1:=[[-149.284335895,100.277513669,-25.74],[0.342020143,0,0,0.939692621],[0,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
>           CONST robtarget RP2_2:=[[-324.887,309.835,-104],[0,0,0,1],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
>           CONST robtarget RP2:=[[-324.887,309.835,-4],[0,0,0,1],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
>           CONST robtarget DP2_2:=[[-243.579,100.06,-105.74],[0.422618262,0,0,0.906307787],[0,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
>           CONST robtarget DP2:=[[-239.872034617,101.865105994,-25.74],[0.422618262,0,0,0.906307787],[0,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
>           CONST robtarget RP3_2:=[[-233.547,319.901,-104],[0,0,0,1],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
>           CONST robtarget RP3:=[[-233.547,319.901,-4],[0,0,0,1],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
>           CONST robtarget DP3_2:=[[-116.213,49.052,-105.74],[0.965925826,0,0,-0.258819045],[0,0,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
>           CONST robtarget DP3:=[[-111.382872981,47.418025403,-25.74],[0.965925826,0,0,-0.258819045],[0,0,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
>           CONST robtarget RP4_2:=[[-188.506,319.963,-104],[0,0,0,1],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
>           CONST robtarget RP4:=[[-188.506,319.963,-4],[0,0,0,1],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
>           CONST robtarget DP4_2:=[[-116.119,100.061,-110.74],[0.258819045,0,0,-0.965925826],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
>           CONST robtarget DP4:=[[-116.119,100.061,-30.74],[0.284015345,0,0,-0.958819735],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
>           CONST robtarget RP5_2:=[[-97.186,309.933,-104],[0,0,0,1],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
>           CONST robtarget RP5:=[[-97.186,309.933,-4],[0,0,0,1],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
>           CONST robtarget DP5_2:=[[-243.674,49.165,-110.74],[0.906307787,0,0,0.422618262],[0,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
>           CONST robtarget DP5:=[[-238.161928623,51.06685939,-30.74],[0.906307787,0,0,0.422618262],[0,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
>           CONST robtarget RP6_2:=[[-52.155,317.46,-104],[0,0,0,1],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
>           CONST robtarget RP6:=[[-52.155,317.46,-4],[0,0,0,1],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
>           CONST robtarget DP6_2:=[[-192.646,100.039,-110.74],[0.342020143,0,0,-0.939692621],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
>           CONST robtarget DP6:=[[-194.944133331,98.110637174,-30.74],[0.342020143,0,0,-0.939692621],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
>           CONST jointtarget Home:=[[0,0,0,0,30,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
>    
>        PROC Pieza1()
>           MoveL RP1_2,v200,z1,Herr_Proyecto\WObj:=Workobject_2;        
>           MoveL RP1,v200,z1,Herr_Proyecto\WObj:=Workobject_2;        
>           Chupar;        
>           MoveL RP1_2,v200,z1,Herr_Proyecto\WObj:=Workobject_2;        
>           MoveL DP1_2,v200,z1,Herr_Proyecto\WObj:=Workobject_2;        
>           MoveL DP1,v200,z1,Herr_Proyecto\WObj:=Workobject_2;        
>           Soltar;       
>           MoveL DP1_2,v200,z1,Herr_Proyecto\WObj:=Workobject_2;                
>        ENDPROC
>    
>        PROC Pieza2()    
>           MoveL RP2_2,v200,z1,Herr_Proyecto\WObj:=Workobject_2;        
>           MoveL RP2,v200,z1,Herr_Proyecto\WObj:=Workobject_2;        
>           Chupar;        
>           MoveL RP2_2,v200,z1,Herr_Proyecto\WObj:=Workobject_2;        
>           MoveL DP2_2,v200,z1,Herr_Proyecto\WObj:=Workobject_2;        
>           MoveL DP2,v200,z1,Herr_Proyecto\WObj:=Workobject_2;        
>           Soltar;        
>           MoveL DP2_2,v200,z1,Herr_Proyecto\WObj:=Workobject_2;
>        ENDPROC
>    
>        PROC Pieza3()
>           MoveL RP3_2,v200,z1,Herr_Proyecto\WObj:=Workobject_2;        
>           MoveL RP3,v200,z1,Herr_Proyecto\WObj:=Workobject_2;        
>           Chupar;        
>           MoveL RP3_2,v200,z1,Herr_Proyecto\WObj:=Workobject_2;        
>           MoveL DP3_2,v200,z1,Herr_Proyecto\WObj:=Workobject_2;        
>           MoveL DP3,v200,z1,Herr_Proyecto\WObj:=Workobject_2;        
>           Soltar;        
>           MoveL DP3_2,v200,z1,Herr_Proyecto\WObj:=Workobject_2;
>        ENDPROC
>    
>        PROC Pieza4()    
>           MoveL RP4_2,v200,z1,Herr_Proyecto\WObj:=Workobject_2;        
>           MoveL RP4,v200,z1,Herr_Proyecto\WObj:=Workobject_2;        
>           Chupar;        
>           MoveL RP4_2,v200,z1,Herr_Proyecto\WObj:=Workobject_2;        
>           MoveL DP4_2,v200,z1,Herr_Proyecto\WObj:=Workobject_2;        
>           MoveL DP4,v200,z1,Herr_Proyecto\WObj:=Workobject_2;                
>           Soltar;        
>           MoveL DP4_2,v200,z1,Herr_Proyecto\WObj:=Workobject_2;
>        ENDPROC
>    
>        PROC Pieza5()
>           MoveL RP5_2,v200,z1,Herr_Proyecto\WObj:=Workobject_2;        
>           MoveL RP5,v200,z1,Herr_Proyecto\WObj:=Workobject_2;        
>           Chupar;        
>           MoveL RP5_2,v200,z1,Herr_Proyecto\WObj:=Workobject_2;        
>           MoveL DP5_2,v200,z1,Herr_Proyecto\WObj:=Workobject_2;        
>           MoveL DP5,v200,z1,Herr_Proyecto\WObj:=Workobject_2;        
>           Soltar;        
>           MoveL DP5_2,v200,z1,Herr_Proyecto\WObj:=Workobject_2;
>        ENDPROC
>    
>        PROC Pieza6()
>           MoveL RP6_2,v200,z1,Herr_Proyecto\WObj:=Workobject_2;        
>           MoveL RP6,v200,z1,Herr_Proyecto\WObj:=Workobject_2;        
>           Chupar;        
>           MoveL RP6_2,v200,z1,Herr_Proyecto\WObj:=Workobject_2;        
>           MoveL DP6_2,v200,z1,Herr_Proyecto\WObj:=Workobject_2;        
>           MoveL DP6,v200,z1,Herr_Proyecto\WObj:=Workobject_2;        
>           Soltar;        
>           MoveL DP6_2,v200,z1,Herr_Proyecto\WObj:=Workobject_2;      
>        ENDPROC
>    
>        PROC main()    
>           Inicio;        
>           WaitDI DI_01,1;        
>           Pieza1;        
>           Pieza2;        
>           Pieza3;        
>           Pieza4;        
>           Pieza5;        
>           Pieza6;        
>           Inicio;        
>           SetDO DO_03,1;
>        ENDPROC
>    
>        PROC Inicio()
>           MoveAbsJ Home,v1000,z100,Herr_Proyecto\WObj:=Workobject_2; 
>        ENDPROC
>    
>        PROC Chupar()
>           WaitTime 1;        
>           SetDO DO_02,0;        
>           SetDO DO_01,1;        
>           WaitTime 1;
>        ENDPROC
>    
>        PROC Soltar()
>           WaitTime 1;
>           SetDO DO_01,0;      
>           SetDO DO_02,1;        
>           WaitTime 1; 
>        ENDPROC
>    
>        ENDMODULE

En la primera parte de codigo se puede observar la definicion de los targets a los cuales se desea que la herramienta se mueva durante su recorrido, en el proceso nombrado ```pieza1``` se realizan los movimientos correspondientes a la recogida, desplazamiento y ubicacion de la ```pieza1```, de igual forma este proceso se repite para las  ```pieza2```, ```pieza3```, ```pieza4```, ```pieza5``` y ```pieza6```; Posterior a esto se define el path  ```Home``` el cual ubica la herramienta en la posicion de home con las arriculaciones en q=[0,0,0,0,0,0] ; posteriormente se definen los procesos de ```chupar``` y ```soltar``` los cuales constan en ubicar la herramienta, esperar un tiempo, energizar una de las bobinas de la valvula e inmediatamente desactivar la otra, de forma tal que en la secuancia ```chupar``` se genere el vacio y en la secuencia ```soltar``` se finalice el vacio; y por ultimo se define el ```main``` en el cual se indica el orden de la secuencia movimientos deseados y al finalizar el proceso se activa el indicativo de finalizado. 

Para el proceso de energizar y desenegizar las bobinas de la válvula se asignan las salidas del controlador DO_01 y DO_02. Además, se utilizó la salida DO_03 para encender un indicador luminoso al finalizar el proceso de ensamblaje. También se asignó la entrada digital DI_01 para conectar el botón que da inicio al proceso.

En resumen se diseño una secuencia de movimiento por pieza en la cual se incluyen los procesos de activar y desactivar la ventosa, mediante la manipulacion de las salidas digitales del controlador, ademas, se definio el movimiento de ida a home, y por ultimo se realiza la activacion del indicativo de finalizado.

## Proceso de ensamble :wrench:

Inicialmente se colocó la herramienta en el plato con ayuda de una llave de 10mm.
![1](/img/montaje.jpeg)

A continuación, se instaló la válvula y el sistema neumático que sería usado en el proceso. Se tendieron cables desde la válvula (atornillada al manipulador) hasta el tablero de control del robot, se instaló la ventosa en la herramienta y se conectaron las mangueras que transportan el aire.
![1](/img/neumatica.jpeg)

Seguidamente, se ubicó la base en el espacio de trabajo del robot, y usando el FlexPendant se definió el WorkObject ubicando la herramienta en las 3 esquinas correspondientes de la base. Este WorkObject se almacenó en la memoria del controlador para poder probar varias versiones de código sin necesidad de volver a hacer el proceso.
![1](/img/workobject.jpeg)

A continuación se muestra el espacio de trabajo con todos los sistemas instalados y definidos, es decir, listo para iniciar el proceso de ensamblaje.
![1](/img/workspace.jpeg)

Finalmente, se muestra el video en el que se evidencia el proceso de ensamblaje tanto en la simulación como en la práctica:

## Conclusiones :page_facing_up:
+ Los robots industriales pueden ser usados para facilitar y automatizar procesos de ensamblaje, lo que reduce la necesidad de trabajo humano y permite obtener resultados más eficientes.
+ En tareas que requieren una precisión media, como la que desarrolló el equipo de trabajo, intervienen varios factores que pueden perjudicar el resultado del proceso, como una definición errónea de workobject, el uso de tolerancias demasiado ajustadas, o las diferencias entre los objetos reales con las representaciones virtuales de los mismos.
+ Se identifica la neumática como una herramienta de particular utilidad en procesos industriales.

![1](/img/team.jpeg)

## Referencias :open_book:
+ Ramírez, R. y Rodríguez, J. (2022). Guías de Robot Studio. Universidad Nacional de Colombia.
+ Cárdenas, P. y Ramírez, R. (2020). Robótica - Proyecto Final. Universidad Nacional de Colombia.
+ Spong, M. Hutchinson, S. y Vidyasagar, M. (2006). Robot modeling and control. John Wiley & Sons, Inc.

## Autores :black_nib:
Ana Sofía Aponte Barriga

José Alejandro Peñaranda Chía

Daniel Esteban Prieto Jiménez

David Felipe Silva Chacón

Universidad Nacional de Colombia - Sede Bogotá

Ingeniería Mecatrónica

Robótica - 2022-II
