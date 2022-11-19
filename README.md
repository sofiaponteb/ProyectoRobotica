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
![1](/img/gripper2.jpeg)

Se realizó un modelo en inventor teniendo en cuenta el diámetro de la ventosa a utilizar
![1](/img/base.jpeg)

![1](/img/usogripper.mp4)


## Herramienta porta ventosas :hammer_and_wrench:

![1](/img/herramienta.jpeg)

## Modelo en Robot Studio :mag_right:

![1](/img/robotstudio.mp4)

## Código en RAPID :computer:

>        MODULE Module1
>    
>        #DEFINICION DE LOS TARGETS
>    
>        PROC Pieza1()
>    
>        MoveL RP1_2,v200,z1,Herr_Proyecto\WObj:=Workobject_2;        
>        MoveL RP1,v200,z1,Herr_Proyecto\WObj:=Workobject_2;        
>        Chupar;        
>        MoveL RP1_2,v200,z1,Herr_Proyecto\WObj:=Workobject_2;        
>        MoveL DP1_2,v200,z1,Herr_Proyecto\WObj:=Workobject_2;        
>        MoveL DP1,v200,z1,Herr_Proyecto\WObj:=Workobject_2;        
>        Soltar;       
>        MoveL DP1_2,v200,z1,Herr_Proyecto\WObj:=Workobject_2;
>                
>        ENDPROC
>    
>        PROC Pieza2()
>    
>        MoveL RP2_2,v200,z1,Herr_Proyecto\WObj:=Workobject_2;        
>        MoveL RP2,v200,z1,Herr_Proyecto\WObj:=Workobject_2;        
>        Chupar;        
>        MoveL RP2_2,v200,z1,Herr_Proyecto\WObj:=Workobject_2;        
>        MoveL DP2_2,v200,z1,Herr_Proyecto\WObj:=Workobject_2;        
>        MoveL DP2,v200,z1,Herr_Proyecto\WObj:=Workobject_2;        
>        Soltar;        
>        MoveL DP2_2,v200,z1,Herr_Proyecto\WObj:=Workobject_2;
>                
>    ENDPROC
>    
>    PROC Pieza3()
>    
>        MoveL RP3_2,v200,z1,Herr_Proyecto\WObj:=Workobject_2;        
>        MoveL RP3,v200,z1,Herr_Proyecto\WObj:=Workobject_2;        
>        Chupar;        
>        MoveL RP3_2,v200,z1,Herr_Proyecto\WObj:=Workobject_2;        
>        MoveL DP3_2,v200,z1,Herr_Proyecto\WObj:=Workobject_2;        
>        MoveL DP3,v200,z1,Herr_Proyecto\WObj:=Workobject_2;        
>        Soltar;        
>        MoveL DP3_2,v200,z1,Herr_Proyecto\WObj:=Workobject_2;
>        
>    ENDPROC
>    
>    PROC Pieza4()
>    
>        MoveL RP4_2,v200,z1,Herr_Proyecto\WObj:=Workobject_2;        
>        MoveL RP4,v200,z1,Herr_Proyecto\WObj:=Workobject_2;        
>        Chupar;        
>        MoveL RP4_2,v200,z1,Herr_Proyecto\WObj:=Workobject_2;        
>        MoveL DP4_2,v200,z1,Herr_Proyecto\WObj:=Workobject_2;        
>        MoveL DP4,v200,z1,Herr_Proyecto\WObj:=Workobject_2;                
>        Soltar;        
>        MoveL DP4_2,v200,z1,Herr_Proyecto\WObj:=Workobject_2;
>        
>    ENDPROC
>    
>    PROC Pieza5()
>    
>        MoveL RP5_2,v200,z1,Herr_Proyecto\WObj:=Workobject_2;        
>        MoveL RP5,v200,z1,Herr_Proyecto\WObj:=Workobject_2;        
>        Chupar;        
>        MoveL RP5_2,v200,z1,Herr_Proyecto\WObj:=Workobject_2;        
>        MoveL DP5_2,v200,z1,Herr_Proyecto\WObj:=Workobject_2;        
>        MoveL DP5,v200,z1,Herr_Proyecto\WObj:=Workobject_2;        
>        Soltar;        
>        MoveL DP5_2,v200,z1,Herr_Proyecto\WObj:=Workobject_2;
>        
>    ENDPROC
>    
>    PROC Pieza6()
>    
>        MoveL RP6_2,v200,z1,Herr_Proyecto\WObj:=Workobject_2;        
>        MoveL RP6,v200,z1,Herr_Proyecto\WObj:=Workobject_2;        
>        Chupar;        
>        MoveL RP6_2,v200,z1,Herr_Proyecto\WObj:=Workobject_2;        
>        MoveL DP6_2,v200,z1,Herr_Proyecto\WObj:=Workobject_2;        
>        MoveL DP6,v200,z1,Herr_Proyecto\WObj:=Workobject_2;        
>        Soltar;        
>        MoveL DP6_2,v200,z1,Herr_Proyecto\WObj:=Workobject_2;
>                
>    ENDPROC
>    
>    PROC main()    
>        Inicio;        
>        WaitDI DI_01,1;        
>        Pieza1;        
>        Pieza2;        
>        Pieza3;        
>        Pieza4;        
>        Pieza5;        
>        Pieza6;        
>        Inicio;        
>        SetDO DO_03,1;
>        
>    ENDPROC
>    
>    PROC Inicio()
>    
>        MoveAbsJ Home,v1000,z100,Herr_Proyecto\WObj:=Workobject_2;
>        
>    ENDPROC
>    
>    PROC Chupar()
>    
>        WaitTime 1;        
>        SetDO DO_02,0;        
>        SetDO DO_01,1;        
>        WaitTime 1;
>        
>    ENDPROC
>    
>    PROC Soltar()
>    
>        SetDO DO_01,0;        
>        WaitTime 1;        
>        SetDO DO_02,1;        
>        WaitTime 1;
>        
>    ENDPROC
>    
>    ENDMODULE
## Proceso de ensamble :wrench:

![1](/img/montaje.jpeg)

![1](/img/neumatica.jpeg)

![1](/img/workobject.jpeg)
![1](/img/workspace.jpeg)

![1](/img/final.mp4)

## Conclusiones :page_facing_up:


![1](/img/team.jpeg)

## Referencias :open_book:


## Autores :black_nib:
Ana Sofía Aponte Barriga

José Alejandro Peñaranda Chía

Daniel Esteban Prieto Jiménez

David Felipe Silva Chacón

Universidad Nacional de Colombia - Sede Bogotá

Ingeniería Mecatrónica

Robótica - 2022-II
