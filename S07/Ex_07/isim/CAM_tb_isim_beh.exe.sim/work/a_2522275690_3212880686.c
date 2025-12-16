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

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/ise/VM/computer-architecture-lab_2025_Fall/S07/Ex_07/CAM.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_10420449594411817395_1035706684(char *, char *, int , int );
unsigned char ieee_p_2592010699_sub_2763492388968962707_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_2522275690_3212880686_p_0(char *t0)
{
    char t38[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    int t11;
    int t12;
    int t13;
    unsigned char t14;
    int t15;
    int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned char t20;
    unsigned char t21;
    int t22;
    int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    char *t27;
    char *t28;
    char *t29;
    unsigned char t30;
    unsigned int t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;

LAB0:    xsi_set_current_line(32, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 992U);
    t3 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 4144);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(33, ng0);
    t1 = xsi_get_transient_memory(16U);
    memset(t1, 0, 16U);
    t5 = t1;
    memset(t5, (unsigned char)2, 16U);
    t6 = (t0 + 4224);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 16U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(34, ng0);
    t1 = (t0 + 4288);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(35, ng0);
    t1 = xsi_get_transient_memory(4U);
    memset(t1, 0, 4U);
    t2 = t1;
    memset(t2, (unsigned char)2, 4U);
    t5 = (t0 + 4352);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB3;

LAB5:    xsi_set_current_line(38, ng0);
    t2 = (t0 + 4288);
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(41, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB7;

LAB9:    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB31;

LAB32:
LAB8:    goto LAB3;

LAB7:    xsi_set_current_line(42, ng0);
    t11 = (16 - 1);
    t1 = (t0 + 7408);
    *((int *)t1) = 0;
    t5 = (t0 + 7412);
    *((int *)t5) = t11;
    t12 = 0;
    t13 = t11;

LAB10:    if (t12 <= t13)
        goto LAB11;

LAB13:    goto LAB8;

LAB11:    xsi_set_current_line(44, ng0);
    t6 = (t0 + 2312U);
    t7 = *((char **)t6);
    t6 = (t0 + 7408);
    t15 = *((int *)t6);
    t16 = (t15 - 0);
    t17 = (t16 * 1);
    xsi_vhdl_check_range_of_index(0, 15, 1, *((int *)t6));
    t18 = (1U * t17);
    t19 = (0 + t18);
    t8 = (t7 + t19);
    t20 = *((unsigned char *)t8);
    t21 = (t20 == (unsigned char)3);
    if (t21 == 1)
        goto LAB17;

LAB18:    t14 = (unsigned char)0;

LAB19:    if (t14 != 0)
        goto LAB14;

LAB16:    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t1 = (t0 + 7408);
    t11 = *((int *)t1);
    t15 = (t11 - 0);
    t17 = (t15 * 1);
    xsi_vhdl_check_range_of_index(0, 15, 1, *((int *)t1));
    t18 = (1U * t17);
    t19 = (0 + t18);
    t5 = (t2 + t19);
    t3 = *((unsigned char *)t5);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB27;

LAB28:
LAB15:
LAB12:    t1 = (t0 + 7408);
    t12 = *((int *)t1);
    t2 = (t0 + 7412);
    t13 = *((int *)t2);
    if (t12 == t13)
        goto LAB13;

LAB30:    t11 = (t12 + 1);
    t12 = t11;
    t5 = (t0 + 7408);
    *((int *)t5) = t12;
    goto LAB10;

LAB14:    xsi_set_current_line(45, ng0);
    t33 = (t0 + 4288);
    t34 = (t33 + 56U);
    t35 = *((char **)t34);
    t36 = (t35 + 56U);
    t37 = *((char **)t36);
    *((unsigned char *)t37) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t33);
    xsi_set_current_line(46, ng0);
    t1 = (t0 + 7408);
    t2 = ieee_p_1242562249_sub_10420449594411817395_1035706684(IEEE_P_1242562249, t38, *((int *)t1), 4);
    t5 = (t0 + 4352);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 4U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(47, ng0);
    goto LAB13;

LAB17:    t9 = (t0 + 2152U);
    t10 = *((char **)t9);
    t9 = (t0 + 7408);
    t22 = *((int *)t9);
    t23 = (t22 - 0);
    t24 = (t23 * 1);
    xsi_vhdl_check_range_of_index(0, 15, 1, *((int *)t9));
    t25 = (8U * t24);
    t26 = (0 + t25);
    t27 = (t10 + t26);
    t28 = (t0 + 1672U);
    t29 = *((char **)t28);
    t30 = 1;
    if (8U == 8U)
        goto LAB20;

LAB21:    t30 = 0;

LAB22:    t14 = t30;
    goto LAB19;

LAB20:    t31 = 0;

LAB23:    if (t31 < 8U)
        goto LAB24;
    else
        goto LAB22;

LAB24:    t28 = (t27 + t31);
    t32 = (t29 + t31);
    if (*((unsigned char *)t28) != *((unsigned char *)t32))
        goto LAB21;

LAB25:    t31 = (t31 + 1);
    goto LAB23;

LAB26:    goto LAB15;

LAB27:    xsi_set_current_line(50, ng0);
    t6 = (t0 + 1672U);
    t7 = *((char **)t6);
    t6 = (t0 + 7408);
    t16 = *((int *)t6);
    t22 = (t16 - 0);
    t24 = (t22 * 1);
    t25 = (8U * t24);
    t26 = (0U + t25);
    t8 = (t0 + 4416);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t27 = (t10 + 56U);
    t28 = *((char **)t27);
    memcpy(t28, t7, 8U);
    xsi_driver_first_trans_delta(t8, t26, 8U, 0LL);
    xsi_set_current_line(51, ng0);
    t1 = (t0 + 7408);
    t11 = *((int *)t1);
    t15 = (t11 - 0);
    t17 = (t15 * 1);
    t18 = (1 * t17);
    t19 = (0U + t18);
    t2 = (t0 + 4224);
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_delta(t2, t19, 1, 0LL);
    xsi_set_current_line(52, ng0);
    t1 = (t0 + 7408);
    t2 = ieee_p_1242562249_sub_10420449594411817395_1035706684(IEEE_P_1242562249, t38, *((int *)t1), 4);
    t5 = (t0 + 4352);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 4U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(53, ng0);
    t1 = (t0 + 4288);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(54, ng0);
    goto LAB13;

LAB29:    goto LAB15;

LAB31:    xsi_set_current_line(60, ng0);
    t11 = (16 - 1);
    t1 = (t0 + 7416);
    *((int *)t1) = 0;
    t5 = (t0 + 7420);
    *((int *)t5) = t11;
    t12 = 0;
    t13 = t11;

LAB33:    if (t12 <= t13)
        goto LAB34;

LAB36:    goto LAB8;

LAB34:    xsi_set_current_line(61, ng0);
    t6 = (t0 + 2312U);
    t7 = *((char **)t6);
    t6 = (t0 + 7416);
    t15 = *((int *)t6);
    t16 = (t15 - 0);
    t17 = (t16 * 1);
    xsi_vhdl_check_range_of_index(0, 15, 1, *((int *)t6));
    t18 = (1U * t17);
    t19 = (0 + t18);
    t8 = (t7 + t19);
    t20 = *((unsigned char *)t8);
    t21 = (t20 == (unsigned char)3);
    if (t21 == 1)
        goto LAB40;

LAB41:    t14 = (unsigned char)0;

LAB42:    if (t14 != 0)
        goto LAB37;

LAB39:
LAB38:
LAB35:    t1 = (t0 + 7416);
    t12 = *((int *)t1);
    t2 = (t0 + 7420);
    t13 = *((int *)t2);
    if (t12 == t13)
        goto LAB36;

LAB50:    t11 = (t12 + 1);
    t12 = t11;
    t5 = (t0 + 7416);
    *((int *)t5) = t12;
    goto LAB33;

LAB37:    xsi_set_current_line(62, ng0);
    t33 = (t0 + 4288);
    t34 = (t33 + 56U);
    t35 = *((char **)t34);
    t36 = (t35 + 56U);
    t37 = *((char **)t36);
    *((unsigned char *)t37) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t33);
    xsi_set_current_line(63, ng0);
    t1 = (t0 + 7416);
    t2 = ieee_p_1242562249_sub_10420449594411817395_1035706684(IEEE_P_1242562249, t38, *((int *)t1), 4);
    t5 = (t0 + 4352);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 4U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(64, ng0);
    goto LAB36;

LAB40:    t9 = (t0 + 2152U);
    t10 = *((char **)t9);
    t9 = (t0 + 7416);
    t22 = *((int *)t9);
    t23 = (t22 - 0);
    t24 = (t23 * 1);
    xsi_vhdl_check_range_of_index(0, 15, 1, *((int *)t9));
    t25 = (8U * t24);
    t26 = (0 + t25);
    t27 = (t10 + t26);
    t28 = (t0 + 1672U);
    t29 = *((char **)t28);
    t30 = 1;
    if (8U == 8U)
        goto LAB43;

LAB44:    t30 = 0;

LAB45:    t14 = t30;
    goto LAB42;

LAB43:    t31 = 0;

LAB46:    if (t31 < 8U)
        goto LAB47;
    else
        goto LAB45;

LAB47:    t28 = (t27 + t31);
    t32 = (t29 + t31);
    if (*((unsigned char *)t28) != *((unsigned char *)t32))
        goto LAB44;

LAB48:    t31 = (t31 + 1);
    goto LAB46;

LAB49:    goto LAB38;

}


extern void work_a_2522275690_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2522275690_3212880686_p_0};
	xsi_register_didat("work_a_2522275690_3212880686", "isim/CAM_tb_isim_beh.exe.sim/work/a_2522275690_3212880686.didat");
	xsi_register_executes(pe);
}
