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
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;
static const char *ng2 = "C:/Users/Lenovo/Desktop/H_B/coprator/test.vhd";

char *ieee_p_1242562249_sub_180853171_1035706684(char *, char *, int , int );


void work_a_1001415958_3553469787_sub_2815677875_3396091961(char *t0, char *t1, char *t2, unsigned int t3, unsigned int t4, char *t5, char *t6, unsigned int t7, unsigned int t8, char *t9, int t10, int t11)
{
    char t12[368];
    char t13[16];
    char t14[16];
    char t19[16];
    char t24[8];
    char t30[8];
    char t36[8];
    char t41[16];
    char *t15;
    char *t16;
    int t17;
    unsigned int t18;
    char *t20;
    int t21;
    char *t22;
    char *t23;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    char *t46;
    char *t47;
    unsigned int t48;
    char *t49;
    unsigned int t50;
    unsigned int t51;
    int64 t52;
    unsigned char t53;
    unsigned char t54;
    unsigned char t55;

LAB0:    t15 = (t14 + 0U);
    t16 = (t15 + 0U);
    *((int *)t16) = 3;
    t16 = (t15 + 4U);
    *((int *)t16) = 0;
    t16 = (t15 + 8U);
    *((int *)t16) = -1;
    t17 = (0 - 3);
    t18 = (t17 * -1);
    t18 = (t18 + 1);
    t16 = (t15 + 12U);
    *((unsigned int *)t16) = t18;
    t16 = (t19 + 0U);
    t20 = (t16 + 0U);
    *((int *)t20) = 3;
    t20 = (t16 + 4U);
    *((int *)t20) = 0;
    t20 = (t16 + 8U);
    *((int *)t20) = -1;
    t21 = (0 - 3);
    t18 = (t21 * -1);
    t18 = (t18 + 1);
    t20 = (t16 + 12U);
    *((unsigned int *)t20) = t18;
    t20 = (t12 + 4U);
    t22 = ((IEEE_P_2592010699) + 3320);
    t23 = (t20 + 88U);
    *((char **)t23) = t22;
    t25 = (t20 + 56U);
    *((char **)t25) = t24;
    xsi_type_set_default_value(t22, t24, 0);
    t26 = (t20 + 80U);
    *((unsigned int *)t26) = 1U;
    t27 = (t12 + 124U);
    t28 = ((IEEE_P_2592010699) + 3320);
    t29 = (t27 + 88U);
    *((char **)t29) = t28;
    t31 = (t27 + 56U);
    *((char **)t31) = t30;
    xsi_type_set_default_value(t28, t30, 0);
    t32 = (t27 + 80U);
    *((unsigned int *)t32) = 1U;
    t33 = (t12 + 244U);
    t34 = ((IEEE_P_2592010699) + 3320);
    t35 = (t33 + 88U);
    *((char **)t35) = t34;
    t37 = (t33 + 56U);
    *((char **)t37) = t36;
    xsi_type_set_default_value(t34, t36, 0);
    t38 = (t33 + 80U);
    *((unsigned int *)t38) = 1U;
    t39 = (t13 + 4U);
    *((int *)t39) = t10;
    t40 = (t13 + 8U);
    *((int *)t40) = t11;
    t42 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t41, t10, 4);
    t18 = (0 + t3);
    t43 = (t5 + 56U);
    t44 = *((char **)t43);
    t45 = (t44 + 56U);
    t46 = *((char **)t45);
    t47 = (t14 + 12U);
    t48 = *((unsigned int *)t47);
    t48 = (t48 * 1U);
    memcpy(t46, t42, t48);
    t49 = (t14 + 12U);
    t50 = *((unsigned int *)t49);
    t51 = (1U * t50);
    xsi_driver_first_trans_delta(t5, t18, t51, 0LL);
    t15 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t41, t11, 4);
    t18 = (0 + t7);
    t16 = (t9 + 56U);
    t22 = *((char **)t16);
    t23 = (t22 + 56U);
    t25 = *((char **)t23);
    t26 = (t19 + 12U);
    t48 = *((unsigned int *)t26);
    t48 = (t48 * 1U);
    memcpy(t25, t15, t48);
    t28 = (t19 + 12U);
    t50 = *((unsigned int *)t28);
    t51 = (1U * t50);
    xsi_driver_first_trans_delta(t9, t18, t51, 0LL);
    t15 = (t0 + 1968U);
    t16 = *((char **)t15);
    t52 = *((int64 *)t16);
    xsi_process_wait(t1, t52);

LAB5:    t15 = (t1 + 88U);
    t22 = *((char **)t15);
    t23 = (t22 + 2480U);
    *((unsigned int *)t23) = 1U;
    t25 = (t1 + 88U);
    t26 = *((char **)t25);
    t28 = (t26 + 0U);
    getcontext(t28);
    t29 = (t1 + 88U);
    t31 = *((char **)t29);
    t32 = (t31 + 2480U);
    t18 = *((unsigned int *)t32);
    if (t18 == 1)
        goto LAB6;

LAB7:    t34 = (t1 + 88U);
    t35 = *((char **)t34);
    t37 = (t35 + 2480U);
    *((unsigned int *)t37) = 3U;

LAB3:
LAB4:
LAB2:    t53 = (t10 == t11);
    if (t53 != 0)
        goto LAB8;

LAB10:    t53 = (t10 > t11);
    if (t53 != 0)
        goto LAB11;

LAB12:    t15 = (t20 + 56U);
    t16 = *((char **)t15);
    t15 = (t16 + 0);
    *((unsigned char *)t15) = (unsigned char)2;
    t15 = (t27 + 56U);
    t16 = *((char **)t15);
    t15 = (t16 + 0);
    *((unsigned char *)t15) = (unsigned char)2;
    t15 = (t33 + 56U);
    t16 = *((char **)t15);
    t15 = (t16 + 0);
    *((unsigned char *)t15) = (unsigned char)3;

LAB9:    t15 = (t0 + 1512U);
    t16 = *((char **)t15);
    t53 = *((unsigned char *)t16);
    t15 = (t20 + 56U);
    t22 = *((char **)t15);
    t54 = *((unsigned char *)t22);
    t55 = (t53 == t54);
    if (t55 == 0)
        goto LAB13;

LAB14:    t15 = (t0 + 1352U);
    t16 = *((char **)t15);
    t53 = *((unsigned char *)t16);
    t15 = (t27 + 56U);
    t22 = *((char **)t15);
    t54 = *((unsigned char *)t22);
    t55 = (t53 == t54);
    if (t55 == 0)
        goto LAB15;

LAB16:    t15 = (t0 + 1672U);
    t16 = *((char **)t15);
    t53 = *((unsigned char *)t16);
    t15 = (t33 + 56U);
    t22 = *((char **)t15);
    t54 = *((unsigned char *)t22);
    t55 = (t53 == t54);
    if (t55 == 0)
        goto LAB17;

LAB18:
LAB1:    return;
LAB6:    xsi_saveStackAndSuspend(t1);
    goto LAB7;

LAB8:    t15 = (t20 + 56U);
    t16 = *((char **)t15);
    t15 = (t16 + 0);
    *((unsigned char *)t15) = (unsigned char)3;
    t15 = (t27 + 56U);
    t16 = *((char **)t15);
    t15 = (t16 + 0);
    *((unsigned char *)t15) = (unsigned char)2;
    t15 = (t33 + 56U);
    t16 = *((char **)t15);
    t15 = (t16 + 0);
    *((unsigned char *)t15) = (unsigned char)2;
    goto LAB9;

LAB11:    t15 = (t20 + 56U);
    t16 = *((char **)t15);
    t15 = (t16 + 0);
    *((unsigned char *)t15) = (unsigned char)2;
    t15 = (t27 + 56U);
    t16 = *((char **)t15);
    t15 = (t16 + 0);
    *((unsigned char *)t15) = (unsigned char)3;
    t15 = (t33 + 56U);
    t16 = *((char **)t15);
    t15 = (t16 + 0);
    *((unsigned char *)t15) = (unsigned char)2;
    goto LAB9;

LAB13:    t15 = (t0 + 5593);
    xsi_report(t15, 11U, (unsigned char)2);
    goto LAB14;

LAB15:    t15 = (t0 + 5604);
    xsi_report(t15, 11U, (unsigned char)2);
    goto LAB16;

LAB17:    t15 = (t0 + 5615);
    xsi_report(t15, 11U, (unsigned char)2);
    goto LAB18;

}

static void work_a_1001415958_3553469787_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    unsigned char t7;
    int t8;
    int t9;
    int t10;
    int t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    int t19;

LAB0:    t1 = (t0 + 3072U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(66, ng2);
    t2 = (t0 + 2880);
    t3 = (t0 + 992U);
    t4 = (t0 + 3456);
    t5 = (t0 + 1152U);
    t6 = (t0 + 3520);
    work_a_1001415958_3553469787_sub_2815677875_3396091961(t0, t2, t3, 0U, 0U, t4, t5, 0U, 0U, t6, 0, 0);
    xsi_set_current_line(67, ng2);
    t2 = (t0 + 2880);
    t3 = (t0 + 992U);
    t4 = (t0 + 3456);
    t5 = (t0 + 1152U);
    t6 = (t0 + 3520);
    work_a_1001415958_3553469787_sub_2815677875_3396091961(t0, t2, t3, 0U, 0U, t4, t5, 0U, 0U, t6, 1, 0);
    xsi_set_current_line(68, ng2);
    t2 = (t0 + 2880);
    t3 = (t0 + 992U);
    t4 = (t0 + 3456);
    t5 = (t0 + 1152U);
    t6 = (t0 + 3520);
    work_a_1001415958_3553469787_sub_2815677875_3396091961(t0, t2, t3, 0U, 0U, t4, t5, 0U, 0U, t6, 0, 1);
    xsi_set_current_line(69, ng2);
    t2 = (t0 + 2880);
    t3 = (t0 + 992U);
    t4 = (t0 + 3456);
    t5 = (t0 + 1152U);
    t6 = (t0 + 3520);
    work_a_1001415958_3553469787_sub_2815677875_3396091961(t0, t2, t3, 0U, 0U, t4, t5, 0U, 0U, t6, 5, 5);
    xsi_set_current_line(70, ng2);
    t2 = (t0 + 2880);
    t3 = (t0 + 992U);
    t4 = (t0 + 3456);
    t5 = (t0 + 1152U);
    t6 = (t0 + 3520);
    work_a_1001415958_3553469787_sub_2815677875_3396091961(t0, t2, t3, 0U, 0U, t4, t5, 0U, 0U, t6, 9, 7);
    xsi_set_current_line(71, ng2);
    t2 = (t0 + 2880);
    t3 = (t0 + 992U);
    t4 = (t0 + 3456);
    t5 = (t0 + 1152U);
    t6 = (t0 + 3520);
    work_a_1001415958_3553469787_sub_2815677875_3396091961(t0, t2, t3, 0U, 0U, t4, t5, 0U, 0U, t6, 7, 9);
    xsi_set_current_line(72, ng2);
    t2 = (t0 + 2880);
    t3 = (t0 + 992U);
    t4 = (t0 + 3456);
    t5 = (t0 + 1152U);
    t6 = (t0 + 3520);
    work_a_1001415958_3553469787_sub_2815677875_3396091961(t0, t2, t3, 0U, 0U, t4, t5, 0U, 0U, t6, 15, 0);
    xsi_set_current_line(73, ng2);
    t2 = (t0 + 2880);
    t3 = (t0 + 992U);
    t4 = (t0 + 3456);
    t5 = (t0 + 1152U);
    t6 = (t0 + 3520);
    work_a_1001415958_3553469787_sub_2815677875_3396091961(t0, t2, t3, 0U, 0U, t4, t5, 0U, 0U, t6, 0, 15);
    xsi_set_current_line(76, ng2);
    t2 = (t0 + 2088U);
    t3 = *((char **)t2);
    t7 = *((unsigned char *)t3);
    if (t7 != 0)
        goto LAB4;

LAB6:
LAB5:    xsi_set_current_line(84, ng2);
    if ((unsigned char)0 == 0)
        goto LAB17;

LAB18:    xsi_set_current_line(85, ng2);

LAB21:    *((char **)t1) = &&LAB22;

LAB1:    return;
LAB4:    xsi_set_current_line(77, ng2);
    t2 = (t0 + 5626);
    *((int *)t2) = 0;
    t4 = (t0 + 5630);
    *((int *)t4) = 15;
    t8 = 0;
    t9 = 15;

LAB7:    if (t8 <= t9)
        goto LAB8;

LAB10:    goto LAB5;

LAB8:    xsi_set_current_line(78, ng2);
    t5 = (t0 + 5634);
    *((int *)t5) = 0;
    t6 = (t0 + 5638);
    *((int *)t6) = 15;
    t10 = 0;
    t11 = 15;

LAB11:    if (t10 <= t11)
        goto LAB12;

LAB14:
LAB9:    t2 = (t0 + 5626);
    t8 = *((int *)t2);
    t3 = (t0 + 5630);
    t9 = *((int *)t3);
    if (t8 == t9)
        goto LAB10;

LAB16:    t10 = (t8 + 1);
    t8 = t10;
    t4 = (t0 + 5626);
    *((int *)t4) = t8;
    goto LAB7;

LAB12:    xsi_set_current_line(79, ng2);
    t12 = (t0 + 2880);
    t13 = (t0 + 992U);
    t14 = (t0 + 3456);
    t15 = (t0 + 1152U);
    t16 = (t0 + 3520);
    t17 = (t0 + 5626);
    t18 = (t0 + 5634);
    work_a_1001415958_3553469787_sub_2815677875_3396091961(t0, t12, t13, 0U, 0U, t14, t15, 0U, 0U, t16, *((int *)t17), *((int *)t18));

LAB13:    t2 = (t0 + 5634);
    t10 = *((int *)t2);
    t3 = (t0 + 5638);
    t11 = *((int *)t3);
    if (t10 == t11)
        goto LAB14;

LAB15:    t19 = (t10 + 1);
    t10 = t19;
    t4 = (t0 + 5634);
    *((int *)t4) = t10;
    goto LAB11;

LAB17:    t2 = (t0 + 5642);
    xsi_report(t2, 37U, (unsigned char)0);
    goto LAB18;

LAB19:    goto LAB2;

LAB20:    goto LAB19;

LAB22:    goto LAB20;

}


extern void work_a_1001415958_3553469787_init()
{
	static char *pe[] = {(void *)work_a_1001415958_3553469787_p_0};
	static char *se[] = {(void *)work_a_1001415958_3553469787_sub_2815677875_3396091961};
	xsi_register_didat("work_a_1001415958_3553469787", "isim/tb_Comparator4bit_isim_par.exe.sim/work/a_1001415958_3553469787.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}
