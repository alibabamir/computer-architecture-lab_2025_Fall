/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/Lenovo/Desktop/H_B/encoder02/tb22.vhd";



static void work_a_2303558411_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    unsigned char t8;
    unsigned char t9;
    unsigned char t10;
    unsigned char t11;
    unsigned char t12;
    unsigned char t13;
    unsigned char t14;
    unsigned char t15;

LAB0:    t1 = (t0 + 3152U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(37, ng0);
    t2 = (t0 + 3536);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(37, ng0);
    t2 = (t0 + 3600);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(37, ng0);
    t2 = (t0 + 3664);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(37, ng0);
    t2 = (t0 + 3728);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(38, ng0);
    t7 = (10 * 1000LL);
    t2 = (t0 + 2960);
    xsi_process_wait(t2, t7);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(39, ng0);
    t2 = (t0 + 1832U);
    t3 = *((char **)t2);
    t10 = *((unsigned char *)t3);
    t11 = (t10 == (unsigned char)2);
    if (t11 == 1)
        goto LAB13;

LAB14:    t9 = (unsigned char)0;

LAB15:    if (t9 == 1)
        goto LAB10;

LAB11:    t8 = (unsigned char)0;

LAB12:    if (t8 == 0)
        goto LAB8;

LAB9:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 3536);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(43, ng0);
    t2 = (t0 + 3600);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(43, ng0);
    t2 = (t0 + 3664);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(43, ng0);
    t2 = (t0 + 3728);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(44, ng0);
    t7 = (10 * 1000LL);
    t2 = (t0 + 2960);
    xsi_process_wait(t2, t7);

LAB18:    *((char **)t1) = &&LAB19;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    t2 = (t0 + 5723);
    xsi_report(t2, 24U, (unsigned char)2);
    goto LAB9;

LAB10:    t2 = (t0 + 1992U);
    t5 = *((char **)t2);
    t14 = *((unsigned char *)t5);
    t15 = (t14 == (unsigned char)2);
    t8 = t15;
    goto LAB12;

LAB13:    t2 = (t0 + 1672U);
    t4 = *((char **)t2);
    t12 = *((unsigned char *)t4);
    t13 = (t12 == (unsigned char)2);
    t9 = t13;
    goto LAB15;

LAB16:    xsi_set_current_line(45, ng0);
    t2 = (t0 + 1832U);
    t3 = *((char **)t2);
    t10 = *((unsigned char *)t3);
    t11 = (t10 == (unsigned char)2);
    if (t11 == 1)
        goto LAB25;

LAB26:    t9 = (unsigned char)0;

LAB27:    if (t9 == 1)
        goto LAB22;

LAB23:    t8 = (unsigned char)0;

LAB24:    if (t8 == 0)
        goto LAB20;

LAB21:    xsi_set_current_line(49, ng0);
    t2 = (t0 + 3536);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(49, ng0);
    t2 = (t0 + 3600);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(49, ng0);
    t2 = (t0 + 3664);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(49, ng0);
    t2 = (t0 + 3728);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(50, ng0);
    t7 = (10 * 1000LL);
    t2 = (t0 + 2960);
    xsi_process_wait(t2, t7);

LAB30:    *((char **)t1) = &&LAB31;
    goto LAB1;

LAB17:    goto LAB16;

LAB19:    goto LAB17;

LAB20:    t2 = (t0 + 5747);
    xsi_report(t2, 25U, (unsigned char)2);
    goto LAB21;

LAB22:    t2 = (t0 + 1992U);
    t5 = *((char **)t2);
    t14 = *((unsigned char *)t5);
    t15 = (t14 == (unsigned char)3);
    t8 = t15;
    goto LAB24;

LAB25:    t2 = (t0 + 1672U);
    t4 = *((char **)t2);
    t12 = *((unsigned char *)t4);
    t13 = (t12 == (unsigned char)2);
    t9 = t13;
    goto LAB27;

LAB28:    xsi_set_current_line(51, ng0);
    t2 = (t0 + 1832U);
    t3 = *((char **)t2);
    t10 = *((unsigned char *)t3);
    t11 = (t10 == (unsigned char)2);
    if (t11 == 1)
        goto LAB37;

LAB38:    t9 = (unsigned char)0;

LAB39:    if (t9 == 1)
        goto LAB34;

LAB35:    t8 = (unsigned char)0;

LAB36:    if (t8 == 0)
        goto LAB32;

LAB33:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 3536);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(55, ng0);
    t2 = (t0 + 3600);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(55, ng0);
    t2 = (t0 + 3664);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(55, ng0);
    t2 = (t0 + 3728);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(56, ng0);
    t7 = (10 * 1000LL);
    t2 = (t0 + 2960);
    xsi_process_wait(t2, t7);

LAB42:    *((char **)t1) = &&LAB43;
    goto LAB1;

LAB29:    goto LAB28;

LAB31:    goto LAB29;

LAB32:    t2 = (t0 + 5772);
    xsi_report(t2, 25U, (unsigned char)2);
    goto LAB33;

LAB34:    t2 = (t0 + 1992U);
    t5 = *((char **)t2);
    t14 = *((unsigned char *)t5);
    t15 = (t14 == (unsigned char)3);
    t8 = t15;
    goto LAB36;

LAB37:    t2 = (t0 + 1672U);
    t4 = *((char **)t2);
    t12 = *((unsigned char *)t4);
    t13 = (t12 == (unsigned char)3);
    t9 = t13;
    goto LAB39;

LAB40:    xsi_set_current_line(57, ng0);
    t2 = (t0 + 1832U);
    t3 = *((char **)t2);
    t10 = *((unsigned char *)t3);
    t11 = (t10 == (unsigned char)3);
    if (t11 == 1)
        goto LAB49;

LAB50:    t9 = (unsigned char)0;

LAB51:    if (t9 == 1)
        goto LAB46;

LAB47:    t8 = (unsigned char)0;

LAB48:    if (t8 == 0)
        goto LAB44;

LAB45:    xsi_set_current_line(61, ng0);
    t2 = (t0 + 3536);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(61, ng0);
    t2 = (t0 + 3600);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(61, ng0);
    t2 = (t0 + 3664);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(61, ng0);
    t2 = (t0 + 3728);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(62, ng0);
    t7 = (10 * 1000LL);
    t2 = (t0 + 2960);
    xsi_process_wait(t2, t7);

LAB54:    *((char **)t1) = &&LAB55;
    goto LAB1;

LAB41:    goto LAB40;

LAB43:    goto LAB41;

LAB44:    t2 = (t0 + 5797);
    xsi_report(t2, 25U, (unsigned char)2);
    goto LAB45;

LAB46:    t2 = (t0 + 1992U);
    t5 = *((char **)t2);
    t14 = *((unsigned char *)t5);
    t15 = (t14 == (unsigned char)3);
    t8 = t15;
    goto LAB48;

LAB49:    t2 = (t0 + 1672U);
    t4 = *((char **)t2);
    t12 = *((unsigned char *)t4);
    t13 = (t12 == (unsigned char)2);
    t9 = t13;
    goto LAB51;

LAB52:    xsi_set_current_line(63, ng0);
    t2 = (t0 + 1832U);
    t3 = *((char **)t2);
    t10 = *((unsigned char *)t3);
    t11 = (t10 == (unsigned char)3);
    if (t11 == 1)
        goto LAB61;

LAB62:    t9 = (unsigned char)0;

LAB63:    if (t9 == 1)
        goto LAB58;

LAB59:    t8 = (unsigned char)0;

LAB60:    if (t8 == 0)
        goto LAB56;

LAB57:    xsi_set_current_line(67, ng0);
    t2 = (t0 + 3536);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(67, ng0);
    t2 = (t0 + 3600);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(67, ng0);
    t2 = (t0 + 3664);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(67, ng0);
    t2 = (t0 + 3728);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(68, ng0);
    t7 = (10 * 1000LL);
    t2 = (t0 + 2960);
    xsi_process_wait(t2, t7);

LAB66:    *((char **)t1) = &&LAB67;
    goto LAB1;

LAB53:    goto LAB52;

LAB55:    goto LAB53;

LAB56:    t2 = (t0 + 5822);
    xsi_report(t2, 25U, (unsigned char)2);
    goto LAB57;

LAB58:    t2 = (t0 + 1992U);
    t5 = *((char **)t2);
    t14 = *((unsigned char *)t5);
    t15 = (t14 == (unsigned char)3);
    t8 = t15;
    goto LAB60;

LAB61:    t2 = (t0 + 1672U);
    t4 = *((char **)t2);
    t12 = *((unsigned char *)t4);
    t13 = (t12 == (unsigned char)3);
    t9 = t13;
    goto LAB63;

LAB64:    xsi_set_current_line(69, ng0);
    t2 = (t0 + 1832U);
    t3 = *((char **)t2);
    t10 = *((unsigned char *)t3);
    t11 = (t10 == (unsigned char)3);
    if (t11 == 1)
        goto LAB73;

LAB74:    t9 = (unsigned char)0;

LAB75:    if (t9 == 1)
        goto LAB70;

LAB71:    t8 = (unsigned char)0;

LAB72:    if (t8 == 0)
        goto LAB68;

LAB69:    xsi_set_current_line(73, ng0);
    t2 = (t0 + 3536);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(73, ng0);
    t2 = (t0 + 3600);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(73, ng0);
    t2 = (t0 + 3664);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(73, ng0);
    t2 = (t0 + 3728);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(74, ng0);
    t7 = (10 * 1000LL);
    t2 = (t0 + 2960);
    xsi_process_wait(t2, t7);

LAB78:    *((char **)t1) = &&LAB79;
    goto LAB1;

LAB65:    goto LAB64;

LAB67:    goto LAB65;

LAB68:    t2 = (t0 + 5847);
    xsi_report(t2, 31U, (unsigned char)2);
    goto LAB69;

LAB70:    t2 = (t0 + 1992U);
    t5 = *((char **)t2);
    t14 = *((unsigned char *)t5);
    t15 = (t14 == (unsigned char)3);
    t8 = t15;
    goto LAB72;

LAB73:    t2 = (t0 + 1672U);
    t4 = *((char **)t2);
    t12 = *((unsigned char *)t4);
    t13 = (t12 == (unsigned char)3);
    t9 = t13;
    goto LAB75;

LAB76:    xsi_set_current_line(75, ng0);
    t2 = (t0 + 1832U);
    t3 = *((char **)t2);
    t10 = *((unsigned char *)t3);
    t11 = (t10 == (unsigned char)3);
    if (t11 == 1)
        goto LAB85;

LAB86:    t9 = (unsigned char)0;

LAB87:    if (t9 == 1)
        goto LAB82;

LAB83:    t8 = (unsigned char)0;

LAB84:    if (t8 == 0)
        goto LAB80;

LAB81:    xsi_set_current_line(79, ng0);
    t2 = (t0 + 3536);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(79, ng0);
    t2 = (t0 + 3600);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(79, ng0);
    t2 = (t0 + 3664);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(79, ng0);
    t2 = (t0 + 3728);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(80, ng0);
    t7 = (10 * 1000LL);
    t2 = (t0 + 2960);
    xsi_process_wait(t2, t7);

LAB90:    *((char **)t1) = &&LAB91;
    goto LAB1;

LAB77:    goto LAB76;

LAB79:    goto LAB77;

LAB80:    t2 = (t0 + 5878);
    xsi_report(t2, 32U, (unsigned char)2);
    goto LAB81;

LAB82:    t2 = (t0 + 1992U);
    t5 = *((char **)t2);
    t14 = *((unsigned char *)t5);
    t15 = (t14 == (unsigned char)3);
    t8 = t15;
    goto LAB84;

LAB85:    t2 = (t0 + 1672U);
    t4 = *((char **)t2);
    t12 = *((unsigned char *)t4);
    t13 = (t12 == (unsigned char)2);
    t9 = t13;
    goto LAB87;

LAB88:    xsi_set_current_line(81, ng0);
    t2 = (t0 + 1832U);
    t3 = *((char **)t2);
    t10 = *((unsigned char *)t3);
    t11 = (t10 == (unsigned char)2);
    if (t11 == 1)
        goto LAB97;

LAB98:    t9 = (unsigned char)0;

LAB99:    if (t9 == 1)
        goto LAB94;

LAB95:    t8 = (unsigned char)0;

LAB96:    if (t8 == 0)
        goto LAB92;

LAB93:    xsi_set_current_line(84, ng0);
    t2 = (t0 + 5942);
    xsi_report(t2, 45U, 0);
    xsi_set_current_line(85, ng0);

LAB102:    *((char **)t1) = &&LAB103;
    goto LAB1;

LAB89:    goto LAB88;

LAB91:    goto LAB89;

LAB92:    t2 = (t0 + 5910);
    xsi_report(t2, 32U, (unsigned char)2);
    goto LAB93;

LAB94:    t2 = (t0 + 1992U);
    t5 = *((char **)t2);
    t14 = *((unsigned char *)t5);
    t15 = (t14 == (unsigned char)3);
    t8 = t15;
    goto LAB96;

LAB97:    t2 = (t0 + 1672U);
    t4 = *((char **)t2);
    t12 = *((unsigned char *)t4);
    t13 = (t12 == (unsigned char)3);
    t9 = t13;
    goto LAB99;

LAB100:    goto LAB2;

LAB101:    goto LAB100;

LAB103:    goto LAB101;

}


extern void work_a_2303558411_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2303558411_3212880686_p_0};
	xsi_register_didat("work_a_2303558411_3212880686", "isim/Encoder4to2_tb_isim_beh.exe.sim/work/a_2303558411_3212880686.didat");
	xsi_register_executes(pe);
}
