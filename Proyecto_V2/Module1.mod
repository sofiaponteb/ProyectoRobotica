MODULE Module1
    CONST robtarget RP1_2:=[[-369.89,317.424,-104],[0,0,0,1],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget RP1:=[[-369.89,317.424,-4],[0,0,0,1],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget DP1_2:=[[-152.102,100.031,-105.74],[0.342020143,0,0,0.939692621],[0,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget DP1:=[[-149.284335895,100.277513669,-25.74],[0.342020143,0,0,0.939692621],[0,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget RP2_2:=[[-324.887,309.835,-104],[0,0,0,1],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget RP2:=[[-324.887,309.835,-4],[0,0,0,1],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget DP2_2:=[[-243.579,100.06,-105.74],[0.422618262,0,0,0.906307787],[0,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget DP2:=[[-239.872034617,101.865105994,-25.74],[0.422618262,0,0,0.906307787],[0,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget RP3_2:=[[-233.547,319.901,-104],[0,0,0,1],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget RP3:=[[-233.547,319.901,-4],[0,0,0,1],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget DP3_2:=[[-116.213,49.052,-105.74],[0.965925826,0,0,-0.258819045],[0,0,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget DP3:=[[-111.382872981,47.418025403,-25.74],[0.965925826,0,0,-0.258819045],[0,0,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget RP4_2:=[[-188.506,319.963,-104],[0,0,0,1],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget RP4:=[[-188.506,319.963,-4],[0,0,0,1],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget DP4_2:=[[-116.119,100.061,-110.74],[0.258819045,0,0,-0.965925826],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget DP4:=[[-116.119,100.061,-30.74],[0.284015345,0,0,-0.958819735],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget RP5_2:=[[-97.186,309.933,-104],[0,0,0,1],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget RP5:=[[-97.186,309.933,-4],[0,0,0,1],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget DP5_2:=[[-243.674,49.165,-110.74],[0.906307787,0,0,0.422618262],[0,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget DP5:=[[-238.161928623,51.06685939,-30.74],[0.906307787,0,0,0.422618262],[0,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget RP6_2:=[[-52.155,317.46,-104],[0,0,0,1],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget RP6:=[[-52.155,317.46,-4],[0,0,0,1],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget DP6_2:=[[-192.646,100.039,-110.74],[0.342020143,0,0,-0.939692621],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget DP6:=[[-194.944133331,98.110637174,-30.74],[0.342020143,0,0,-0.939692621],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST jointtarget Home:=[[0,0,0,0,30,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    PROC Pieza1()
        MoveL RP1_2,v200,z1,Herr_Proyecto\WObj:=Workobject_2;
        MoveL RP1,v200,z1,Herr_Proyecto\WObj:=Workobject_2;
        WaitTime 1;
        SetDO DO_01,1;
        SetDO DO_02,0;
        WaitTime 1;
        MoveL RP1_2,v200,z1,Herr_Proyecto\WObj:=Workobject_2;
        MoveL DP1_2,v200,z1,Herr_Proyecto\WObj:=Workobject_2;
        MoveL DP1,v200,z1,Herr_Proyecto\WObj:=Workobject_2;
        WaitTime 1;
        SetDO DO_01,0;
        SetDO DO_02,1;
        WaitTime 1;
        MoveL DP1_2,v200,z1,Herr_Proyecto\WObj:=Workobject_2;
    ENDPROC
    PROC Pieza2()
        MoveL RP2_2,v200,z1,Herr_Proyecto\WObj:=Workobject_2;
        MoveL RP2,v200,z1,Herr_Proyecto\WObj:=Workobject_2;
        WaitTime 1;
        SetDO DO_02,0;
        SetDO DO_01,1;
        WaitTime 1;
        MoveL RP2_2,v200,z1,Herr_Proyecto\WObj:=Workobject_2;
        MoveL DP2_2,v200,z1,Herr_Proyecto\WObj:=Workobject_2;
        MoveL DP2,v200,z1,Herr_Proyecto\WObj:=Workobject_2;
        WaitTime 1;
        SetDO DO_01,0;
        SetDO DO_02,1;
        WaitTime 1;
        MoveL DP2_2,v200,z1,Herr_Proyecto\WObj:=Workobject_2;
    ENDPROC
    PROC Pieza3()
        MoveL RP3_2,v200,z1,Herr_Proyecto\WObj:=Workobject_2;
        MoveL RP3,v200,z1,Herr_Proyecto\WObj:=Workobject_2;
        WaitTime 1;
        SetDO DO_02,0;
        SetDO DO_01,1;
        WaitTime 1;
        MoveL RP3_2,v200,z1,Herr_Proyecto\WObj:=Workobject_2;
        MoveL DP3_2,v200,z1,Herr_Proyecto\WObj:=Workobject_2;
        MoveL DP3,v200,z1,Herr_Proyecto\WObj:=Workobject_2;
        WaitTime 1;
        SetDO DO_01,0;
        SetDO DO_02,1;
        WaitTime 1;
        MoveL DP3_2,v200,z1,Herr_Proyecto\WObj:=Workobject_2;
    ENDPROC
    PROC Pieza4()
        MoveL RP4_2,v200,z1,Herr_Proyecto\WObj:=Workobject_2;
        MoveL RP4,v200,z1,Herr_Proyecto\WObj:=Workobject_2;
        WaitTime 1;
        SetDO DO_02,0;
        SetDO DO_01,1;
        WaitTime 1;
        MoveL RP4_2,v200,z1,Herr_Proyecto\WObj:=Workobject_2;
        MoveL DP4_2,v200,z1,Herr_Proyecto\WObj:=Workobject_2;
        MoveL DP4,v200,z1,Herr_Proyecto\WObj:=Workobject_2;
        WaitTime 1;
        SetDO DO_01,0;
        SetDO DO_02,1;
        WaitTime 1;
        MoveL DP4_2,v200,z1,Herr_Proyecto\WObj:=Workobject_2;
    ENDPROC
    PROC Pieza5()
        MoveL RP5_2,v200,z1,Herr_Proyecto\WObj:=Workobject_2;
        MoveL RP5,v200,z1,Herr_Proyecto\WObj:=Workobject_2;
        WaitTime 1;
        SetDO DO_02,0;
        SetDO DO_01,1;
        WaitTime 1;
        MoveL RP5_2,v200,z1,Herr_Proyecto\WObj:=Workobject_2;
        MoveL DP5_2,v200,z1,Herr_Proyecto\WObj:=Workobject_2;
        MoveL DP5,v200,z1,Herr_Proyecto\WObj:=Workobject_2;
        WaitTime 1;
        SetDO DO_01,0;
        SetDO DO_02,1;
        WaitTime 1;
        MoveL DP5_2,v200,z1,Herr_Proyecto\WObj:=Workobject_2;
    ENDPROC
    PROC Pieza6()
        MoveL RP6_2,v200,z1,Herr_Proyecto\WObj:=Workobject_2;
        MoveL RP6,v200,z1,Herr_Proyecto\WObj:=Workobject_2;
        WaitTime 1;
        SetDO DO_02,0;
        SetDO DO_01,1;
        WaitTime 1;
        MoveL RP6_2,v200,z1,Herr_Proyecto\WObj:=Workobject_2;
        MoveL DP6_2,v200,z1,Herr_Proyecto\WObj:=Workobject_2;
        MoveL DP6,v200,z1,Herr_Proyecto\WObj:=Workobject_2;
        WaitTime 1;
        SetDO DO_01,0;
        SetDO DO_02,1;
        WaitTime 1;
        MoveL DP6_2,v200,z1,Herr_Proyecto\WObj:=Workobject_2;
    ENDPROC
    PROC main()
        Inicio;
        WaitDI DI_01,1;
        Pieza1;
        Pieza2;
        Pieza3;
        Pieza4;
        Pieza5;
        Pieza6;
        Inicio;
        SetDO DO_03,1;
    ENDPROC
    PROC Inicio()
        MoveAbsJ Home,v1000,z100,Herr_Proyecto\WObj:=Workobject_2;
    ENDPROC
ENDMODULE