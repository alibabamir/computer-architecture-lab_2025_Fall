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
static const char *ng0 = "C:/Users/Lenovo/Desktop/H_B/decoder/test.vhd";
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_180853171_1035706684(char *, char *, int , int );


static void work_a_3441938565_3553469787_p_0(char *t0)
{
    char t6[16];
    char *t1;
    char *t2;
    char *t3;
    int t4;
    int t5;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    unsigned int t12;
    int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned char t16;
    int64 t17;
    unsigned char t18;
    unsigned char t19;

LAB0:    t1 = (t0 + 3592U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(30, ng0);
    t2 = (t0 + 6200);
    *((int *)t2) = 0;
    t3 = (t0 + 6204);
    *((int *)t3) = 3;
    t4 = 0;
    t5 = 3;

LAB4:    if (t4 <= t5)
        goto LAB5;

LAB7:    xsi_set_current_line(51, ng0);
    if ((unsigned char)0 == 0)
        goto LAB30;

LAB31:    xsi_set_current_line(52, ng0);

LAB34:    *((char **)t1) = &&LAB35;

LAB1:    return;
LAB5:    xsi_set_current_line(31, ng0);
    t7 = (t0 + 6200);
    t8 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t6, *((int *)t7), 2);
    t9 = (t0 + 2128U);
    t10 = *((char **)t9);
    t9 = (t10 + 0);
    t11 = (t6 + 12U);
    t12 = *((unsigned int *)t11);
    t12 = (t12 * 1U);
    memcpy(t9, t8, t12);
    xsi_set_current_line(32, ng0);
    t2 = (t0 + 2128U);
    t3 = *((char **)t2);
    t13 = (1 - 1);
    t12 = (t13 * -1);
    t14 = (1U * t12);
    t15 = (0 + t14);
    t2 = (t3 + t15);
    t16 = *((unsigned char *)t2);
    t7 = (t0 + 3976);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = t16;
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(33, ng0);
    t2 = (t0 + 2128U);
    t3 = *((char **)t2);
    t13 = (0 - 1);
    t12 = (t13 * -1);
    t14 = (1U * t12);
    t15 = (0 + t14);
    t2 = (t3 + t15);
    t16 = *((unsigned char *)t2);
    t7 = (t0 + 4040);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = t16;
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(34, ng0);
    t17 = (10 * 1000LL);
    t2 = (t0 + 3400);
    xsi_process_wait(t2, t17);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB6:    t2 = (t0 + 6200);
    t4 = *((int *)t2);
    t3 = (t0 + 6204);
    t5 = *((int *)t3);
    if (t4 == t5)
        goto LAB7;

LAB29:    t13 = (t4 + 1);
    t4 = t13;
    t7 = (t0 + 6200);
    *((int *)t7) = t4;
    goto LAB4;

LAB8:    xsi_set_current_line(37, ng0);
    t2 = (t0 + 6200);
    if (*((int *)t2) == 0)
        goto LAB13;

LAB17:    if (*((int *)t2) == 1)
        goto LAB14;

LAB18:    if (*((int *)t2) == 2)
        goto LAB15;

LAB19:
LAB16:    xsi_set_current_line(41, ng0);
    t2 = (t0 + 2248U);
    t3 = *((char **)t2);
    t2 = (t3 + 0);
    *((unsigned char *)t2) = (unsigned char)2;
    xsi_set_current_line(41, ng0);
    t2 = (t0 + 2368U);
    t3 = *((char **)t2);
    t2 = (t3 + 0);
    *((unsigned char *)t2) = (unsigned char)2;
    xsi_set_current_line(41, ng0);
    t2 = (t0 + 2488U);
    t3 = *((char **)t2);
    t2 = (t3 + 0);
    *((unsigned char *)t2) = (unsigned char)2;
    xsi_set_current_line(41, ng0);
    t2 = (t0 + 2608U);
    t3 = *((char **)t2);
    t2 = (t3 + 0);
    *((unsigned char *)t2) = (unsigned char)3;

LAB12:    xsi_set_current_line(45, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t16 = *((unsigned char *)t3);
    t2 = (t0 + 2248U);
    t7 = *((char **)t2);
    t18 = *((unsigned char *)t7);
    t19 = (t16 == t18);
    if (t19 == 0)
        goto LAB21;

LAB22:    xsi_set_current_line(46, ng0);
    t2 = (t0 + 1512U);
    t3 = *((char **)t2);
    t16 = *((unsigned char *)t3);
    t2 = (t0 + 2368U);
    t7 = *((char **)t2);
    t18 = *((unsigned char *)t7);
    t19 = (t16 == t18);
    if (t19 == 0)
        goto LAB23;

LAB24:    xsi_set_current_line(47, ng0);
    t2 = (t0 + 1672U);
    t3 = *((char **)t2);
    t16 = *((unsigned char *)t3);
    t2 = (t0 + 2488U);
    t7 = *((char **)t2);
    t18 = *((unsigned char *)t7);
    t19 = (t16 == t18);
    if (t19 == 0)
        goto LAB25;

LAB26:    xsi_set_current_line(48, ng0);
    t2 = (t0 + 1832U);
    t3 = *((char **)t2);
    t16 = *((unsigned char *)t3);
    t2 = (t0 + 2608U);
    t7 = *((char **)t2);
    t18 = *((unsigned char *)t7);
    t19 = (t16 == t18);
    if (t19 == 0)
        goto LAB27;

LAB28:    goto LAB6;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB13:    xsi_set_current_line(38, ng0);
    t3 = (t0 + 2248U);
    t7 = *((char **)t3);
    t3 = (t7 + 0);
    *((unsigned char *)t3) = (unsigned char)3;
    xsi_set_current_line(38, ng0);
    t2 = (t0 + 2368U);
    t3 = *((char **)t2);
    t2 = (t3 + 0);
    *((unsigned char *)t2) = (unsigned char)2;
    xsi_set_current_line(38, ng0);
    t2 = (t0 + 2488U);
    t3 = *((char **)t2);
    t2 = (t3 + 0);
    *((unsigned char *)t2) = (unsigned char)2;
    xsi_set_current_line(38, ng0);
    t2 = (t0 + 2608U);
    t3 = *((char **)t2);
    t2 = (t3 + 0);
    *((unsigned char *)t2) = (unsigned char)2;
    goto LAB12;

LAB14:    xsi_set_current_line(39, ng0);
    t2 = (t0 + 2248U);
    t3 = *((char **)t2);
    t2 = (t3 + 0);
    *((unsigned char *)t2) = (unsigned char)2;
    xsi_set_current_line(39, ng0);
    t2 = (t0 + 2368U);
    t3 = *((char **)t2);
    t2 = (t3 + 0);
    *((unsigned char *)t2) = (unsigned char)3;
    xsi_set_current_line(39, ng0);
    t2 = (t0 + 2488U);
    t3 = *((char **)t2);
    t2 = (t3 + 0);
    *((unsigned char *)t2) = (unsigned char)2;
    xsi_set_current_line(39, ng0);
    t2 = (t0 + 2608U);
    t3 = *((char **)t2);
    t2 = (t3 + 0);
    *((unsigned char *)t2) = (unsigned char)2;
    goto LAB12;

LAB15:    xsi_set_current_line(40, ng0);
    t2 = (t0 + 2248U);
    t3 = *((char **)t2);
    t2 = (t3 + 0);
    *((unsigned char *)t2) = (unsigned char)2;
    xsi_set_current_line(40, ng0);
    t2 = (t0 + 2368U);
    t3 = *((char **)t2);
    t2 = (t3 + 0);
    *((unsigned char *)t2) = (unsigned char)2;
    xsi_set_current_line(40, ng0);
    t2 = (t0 + 2488U);
    t3 = *((char **)t2);
    t2 = (t3 + 0);
    *((unsigned char *)t2) = (unsigned char)3;
    xsi_set_current_line(40, ng0);
    t2 = (t0 + 2608U);
    t3 = *((char **)t2);
    t2 = (t3 + 0);
    *((unsigned char *)t2) = (unsigned char)2;
    goto LAB12;

LAB20:;
LAB21:    t2 = (t0 + 6208);
    xsi_report(t2, 24U, (unsigned char)2);
    goto LAB22;

LAB23:    t2 = (t0 + 6232);
    xsi_report(t2, 24U, (unsigned char)2);
    goto LAB24;

LAB25:    t2 = (t0 + 6256);
    xsi_report(t2, 24U, (unsigned char)2);
    goto LAB26;

LAB27:    t2 = (t0 + 6280);
    xsi_report(t2, 24U, (unsigned char)2);
    goto LAB28;

LAB30:    t2 = (t0 + 6304);
    xsi_report(t2, 27U, (unsigned char)0);
    goto LAB31;

LAB32:    goto LAB2;

LAB33:    goto LAB32;

LAB35:    goto LAB33;

}


extern void work_a_3441938565_3553469787_init()
{
	static char *pe[] = {(void *)work_a_3441938565_3553469787_p_0};
	xsi_register_didat("work_a_3441938565_3553469787", "isim/tb_Decoder2to4_isim_beh.exe.sim/work/a_3441938565_3553469787.didat");
	xsi_register_executes(pe);
}
