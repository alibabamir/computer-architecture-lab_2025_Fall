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
static const char *ng0 = "/home/ise/VM/computer-architecture-lab_2025_Fall/S09/S09_1/Processor_Unit.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;

unsigned char ieee_p_2592010699_sub_2763492388968962707_503743352(char *, char *, unsigned int , unsigned int );
char *ieee_p_3620187407_sub_1496620905533649268_3965413181(char *, char *, char *, char *, char *, char *);
char *ieee_p_3620187407_sub_1496620905533721142_3965413181(char *, char *, char *, char *, char *, char *);
char *ieee_p_3620187407_sub_2255506239096166994_3965413181(char *, char *, char *, char *, int );


static void work_a_2700724180_2372691052_p_0(char *t0)
{
    char t14[16];
    char t21[16];
    char t30[16];
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
    unsigned char t11;
    int t12;
    char *t13;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    int t22;
    unsigned int t23;
    char *t24;
    unsigned char t25;
    char *t26;
    char *t27;
    unsigned int t28;
    unsigned int t29;
    char *t31;
    char *t32;
    int t33;
    unsigned int t34;
    char *t35;
    unsigned char t36;
    char *t37;
    char *t38;
    unsigned int t39;
    unsigned int t40;
    char *t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    int t46;
    int t47;

LAB0:    xsi_set_current_line(44, ng0);
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
LAB3:    t1 = (t0 + 6040);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(46, ng0);
    t1 = xsi_get_transient_memory(4U);
    memset(t1, 0, 4U);
    t5 = t1;
    memset(t5, (unsigned char)2, 4U);
    t6 = (t0 + 6152);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 4U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(47, ng0);
    t1 = xsi_get_transient_memory(4U);
    memset(t1, 0, 4U);
    t2 = t1;
    memset(t2, (unsigned char)2, 4U);
    t5 = (t0 + 6216);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(48, ng0);
    t1 = xsi_get_transient_memory(9U);
    memset(t1, 0, 9U);
    t2 = t1;
    memset(t2, (unsigned char)2, 9U);
    t5 = (t0 + 6280);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 9U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(49, ng0);
    t1 = (t0 + 6344);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(50, ng0);
    t1 = (t0 + 6408);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((int *)t7) = 0;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(51, ng0);
    t1 = (t0 + 6472);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 3112U);
    t5 = *((char **)t2);
    t4 = *((unsigned char *)t5);
    t11 = (t4 == (unsigned char)2);
    if (t11 != 0)
        goto LAB7;

LAB9:
LAB8:    goto LAB3;

LAB7:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 2952U);
    t6 = *((char **)t2);
    t12 = *((int *)t6);
    if (t12 == 0)
        goto LAB11;

LAB14:    if (t12 == 1)
        goto LAB12;

LAB15:
LAB13:    xsi_set_current_line(92, ng0);
    t1 = (t0 + 6472);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(94, ng0);
    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t15 = (7 - 7);
    t16 = (t15 * 1U);
    t17 = (0 + t16);
    t1 = (t2 + t17);
    t5 = (t0 + 3408U);
    t6 = *((char **)t5);
    t12 = xsi_mem_cmp(t6, t1, 4U);
    if (t12 == 1)
        goto LAB46;

LAB50:    t5 = (t0 + 3648U);
    t7 = *((char **)t5);
    t22 = xsi_mem_cmp(t7, t1, 4U);
    if (t22 == 1)
        goto LAB47;

LAB51:    t5 = (t0 + 3768U);
    t8 = *((char **)t5);
    t33 = xsi_mem_cmp(t8, t1, 4U);
    if (t33 == 1)
        goto LAB48;

LAB52:
LAB49:    xsi_set_current_line(98, ng0);

LAB45:    xsi_set_current_line(101, ng0);
    t1 = (t0 + 6408);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((int *)t7) = 0;
    xsi_driver_first_trans_fast(t1);

LAB10:    goto LAB8;

LAB11:    xsi_set_current_line(59, ng0);
    t2 = (t0 + 2312U);
    t7 = *((char **)t2);
    t2 = (t0 + 6216);
    t8 = (t2 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t13 = *((char **)t10);
    memcpy(t13, t7, 4U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(60, ng0);
    t1 = (t0 + 6408);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((int *)t7) = 1;
    xsi_driver_first_trans_fast(t1);
    goto LAB10;

LAB12:    xsi_set_current_line(64, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 6536);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 8U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(65, ng0);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t1 = (t0 + 10616U);
    t5 = ieee_p_3620187407_sub_2255506239096166994_3965413181(IEEE_P_3620187407, t14, t2, t1, 1);
    t6 = (t14 + 12U);
    t15 = *((unsigned int *)t6);
    t16 = (1U * t15);
    t3 = (4U != t16);
    if (t3 == 1)
        goto LAB17;

LAB18:    t7 = (t0 + 6152);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t13 = *((char **)t10);
    memcpy(t13, t5, 4U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(68, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t15 = (7 - 7);
    t16 = (t15 * 1U);
    t17 = (0 + t16);
    t1 = (t2 + t17);
    t5 = (t14 + 0U);
    t6 = (t5 + 0U);
    *((int *)t6) = 7;
    t6 = (t5 + 4U);
    *((int *)t6) = 4;
    t6 = (t5 + 8U);
    *((int *)t6) = -1;
    t12 = (4 - 7);
    t18 = (t12 * -1);
    t18 = (t18 + 1);
    t6 = (t5 + 12U);
    *((unsigned int *)t6) = t18;
    t6 = (t0 + 3408U);
    t7 = *((char **)t6);
    t6 = (t0 + 10696U);
    t11 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t1, t14, t7, t6);
    if (t11 == 1)
        goto LAB25;

LAB26:    t8 = (t0 + 1352U);
    t9 = *((char **)t8);
    t18 = (7 - 7);
    t19 = (t18 * 1U);
    t20 = (0 + t19);
    t8 = (t9 + t20);
    t10 = (t21 + 0U);
    t13 = (t10 + 0U);
    *((int *)t13) = 7;
    t13 = (t10 + 4U);
    *((int *)t13) = 4;
    t13 = (t10 + 8U);
    *((int *)t13) = -1;
    t22 = (4 - 7);
    t23 = (t22 * -1);
    t23 = (t23 + 1);
    t13 = (t10 + 12U);
    *((unsigned int *)t13) = t23;
    t13 = (t0 + 3648U);
    t24 = *((char **)t13);
    t13 = (t0 + 10728U);
    t25 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t8, t21, t24, t13);
    t4 = t25;

LAB27:    if (t4 == 1)
        goto LAB22;

LAB23:    t26 = (t0 + 1352U);
    t27 = *((char **)t26);
    t23 = (7 - 7);
    t28 = (t23 * 1U);
    t29 = (0 + t28);
    t26 = (t27 + t29);
    t31 = (t30 + 0U);
    t32 = (t31 + 0U);
    *((int *)t32) = 7;
    t32 = (t31 + 4U);
    *((int *)t32) = 4;
    t32 = (t31 + 8U);
    *((int *)t32) = -1;
    t33 = (4 - 7);
    t34 = (t33 * -1);
    t34 = (t34 + 1);
    t32 = (t31 + 12U);
    *((unsigned int *)t32) = t34;
    t32 = (t0 + 3768U);
    t35 = *((char **)t32);
    t32 = (t0 + 10744U);
    t36 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t26, t30, t35, t32);
    t3 = t36;

LAB24:    if (t3 != 0)
        goto LAB19;

LAB21:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t15 = (7 - 7);
    t16 = (t15 * 1U);
    t17 = (0 + t16);
    t1 = (t2 + t17);
    t5 = (t14 + 0U);
    t6 = (t5 + 0U);
    *((int *)t6) = 7;
    t6 = (t5 + 4U);
    *((int *)t6) = 4;
    t6 = (t5 + 8U);
    *((int *)t6) = -1;
    t12 = (4 - 7);
    t18 = (t12 * -1);
    t18 = (t18 + 1);
    t6 = (t5 + 12U);
    *((unsigned int *)t6) = t18;
    t6 = (t0 + 3528U);
    t7 = *((char **)t6);
    t6 = (t0 + 10712U);
    t3 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t1, t14, t7, t6);
    if (t3 != 0)
        goto LAB28;

LAB29:    xsi_set_current_line(80, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t15 = (7 - 7);
    t16 = (t15 * 1U);
    t17 = (0 + t16);
    t1 = (t2 + t17);
    t5 = (t0 + 3888U);
    t6 = *((char **)t5);
    t12 = xsi_mem_cmp(t6, t1, 4U);
    if (t12 == 1)
        goto LAB31;

LAB36:    t5 = (t0 + 4008U);
    t7 = *((char **)t5);
    t22 = xsi_mem_cmp(t7, t1, 4U);
    if (t22 == 1)
        goto LAB32;

LAB37:    t5 = (t0 + 4128U);
    t8 = *((char **)t5);
    t33 = xsi_mem_cmp(t8, t1, 4U);
    if (t33 == 1)
        goto LAB33;

LAB38:    t5 = (t0 + 4248U);
    t9 = *((char **)t5);
    t46 = xsi_mem_cmp(t9, t1, 4U);
    if (t46 == 1)
        goto LAB34;

LAB39:
LAB35:    xsi_set_current_line(85, ng0);

LAB30:    xsi_set_current_line(87, ng0);
    t1 = (t0 + 6408);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((int *)t7) = 0;
    xsi_driver_first_trans_fast(t1);

LAB20:    goto LAB10;

LAB16:;
LAB17:    xsi_size_not_matching(4U, t16, 0);
    goto LAB18;

LAB19:    xsi_set_current_line(71, ng0);
    t37 = (t0 + 1352U);
    t38 = *((char **)t37);
    t34 = (7 - 3);
    t39 = (t34 * 1U);
    t40 = (0 + t39);
    t37 = (t38 + t40);
    t41 = (t0 + 6216);
    t42 = (t41 + 56U);
    t43 = *((char **)t42);
    t44 = (t43 + 56U);
    t45 = *((char **)t44);
    memcpy(t45, t37, 4U);
    xsi_driver_first_trans_fast(t41);
    xsi_set_current_line(72, ng0);
    t1 = (t0 + 6408);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((int *)t7) = 2;
    xsi_driver_first_trans_fast(t1);
    goto LAB20;

LAB22:    t3 = (unsigned char)1;
    goto LAB24;

LAB25:    t4 = (unsigned char)1;
    goto LAB27;

LAB28:    xsi_set_current_line(74, ng0);
    t8 = (t0 + 1352U);
    t9 = *((char **)t8);
    t18 = (7 - 3);
    t19 = (t18 * 1U);
    t20 = (0 + t19);
    t8 = (t9 + t20);
    t10 = (t0 + 6216);
    t13 = (t10 + 56U);
    t24 = *((char **)t13);
    t26 = (t24 + 56U);
    t27 = *((char **)t26);
    memcpy(t27, t8, 4U);
    xsi_driver_first_trans_fast(t10);
    xsi_set_current_line(75, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t15 = (8 - 7);
    t16 = (t15 * 1U);
    t17 = (0 + t16);
    t1 = (t2 + t17);
    t5 = (t0 + 6600);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 8U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(76, ng0);
    t1 = (t0 + 6472);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(77, ng0);
    t1 = (t0 + 6408);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((int *)t7) = 2;
    xsi_driver_first_trans_fast(t1);
    goto LAB20;

LAB31:    xsi_set_current_line(81, ng0);
    t5 = (t0 + 2632U);
    t10 = *((char **)t5);
    t18 = (8 - 8);
    t19 = (t18 * 1U);
    t20 = (0 + t19);
    t5 = (t10 + t20);
    t24 = ((IEEE_P_2592010699) + 4000);
    t26 = (t21 + 0U);
    t27 = (t26 + 0U);
    *((int *)t27) = 8;
    t27 = (t26 + 4U);
    *((int *)t27) = 1;
    t27 = (t26 + 8U);
    *((int *)t27) = -1;
    t47 = (1 - 8);
    t23 = (t47 * -1);
    t23 = (t23 + 1);
    t27 = (t26 + 12U);
    *((unsigned int *)t27) = t23;
    t13 = xsi_base_array_concat(t13, t14, t24, (char)99, (unsigned char)2, (char)97, t5, t21, (char)101);
    t23 = (1U + 8U);
    t3 = (9U != t23);
    if (t3 == 1)
        goto LAB41;

LAB42:    t27 = (t0 + 6280);
    t31 = (t27 + 56U);
    t32 = *((char **)t31);
    t35 = (t32 + 56U);
    t37 = *((char **)t35);
    memcpy(t37, t13, 9U);
    xsi_driver_first_trans_fast(t27);
    goto LAB30;

LAB32:    xsi_set_current_line(82, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t15 = (8 - 7);
    t16 = (t15 * 1U);
    t17 = (0 + t16);
    t1 = (t2 + t17);
    t6 = ((IEEE_P_2592010699) + 4000);
    t7 = (t21 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 7;
    t8 = (t7 + 4U);
    *((int *)t8) = 0;
    t8 = (t7 + 8U);
    *((int *)t8) = -1;
    t12 = (0 - 7);
    t18 = (t12 * -1);
    t18 = (t18 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t18;
    t5 = xsi_base_array_concat(t5, t14, t6, (char)97, t1, t21, (char)99, (unsigned char)2, (char)101);
    t18 = (8U + 1U);
    t3 = (9U != t18);
    if (t3 == 1)
        goto LAB43;

LAB44:    t8 = (t0 + 6280);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t13 = (t10 + 56U);
    t24 = *((char **)t13);
    memcpy(t24, t5, 9U);
    xsi_driver_first_trans_fast(t8);
    goto LAB30;

LAB33:    xsi_set_current_line(83, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t15 = (8 - 7);
    t16 = (t15 * 1U);
    t17 = (0 + t16);
    t1 = (t2 + t17);
    t5 = (t0 + 6664);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 8U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB30;

LAB34:    xsi_set_current_line(84, ng0);
    t1 = (t0 + 6344);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB30;

LAB40:;
LAB41:    xsi_size_not_matching(9U, t23, 0);
    goto LAB42;

LAB43:    xsi_size_not_matching(9U, t18, 0);
    goto LAB44;

LAB46:    xsi_set_current_line(95, ng0);
    t5 = (t0 + 1352U);
    t9 = *((char **)t5);
    t10 = ((IEEE_P_2592010699) + 4000);
    t13 = (t0 + 10552U);
    t5 = xsi_base_array_concat(t5, t14, t10, (char)99, (unsigned char)2, (char)97, t9, t13, (char)101);
    t18 = (1U + 8U);
    t3 = (9U != t18);
    if (t3 == 1)
        goto LAB54;

LAB55:    t24 = (t0 + 6280);
    t26 = (t24 + 56U);
    t27 = *((char **)t26);
    t31 = (t27 + 56U);
    t32 = *((char **)t31);
    memcpy(t32, t5, 9U);
    xsi_driver_first_trans_fast(t24);
    goto LAB45;

LAB47:    xsi_set_current_line(96, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t1 = (t0 + 10648U);
    t5 = (t0 + 1352U);
    t6 = *((char **)t5);
    t7 = ((IEEE_P_2592010699) + 4000);
    t8 = (t0 + 10552U);
    t5 = xsi_base_array_concat(t5, t21, t7, (char)99, (unsigned char)2, (char)97, t6, t8, (char)101);
    t9 = ieee_p_3620187407_sub_1496620905533649268_3965413181(IEEE_P_3620187407, t14, t2, t1, t5, t21);
    t10 = (t14 + 12U);
    t15 = *((unsigned int *)t10);
    t16 = (1U * t15);
    t3 = (9U != t16);
    if (t3 == 1)
        goto LAB56;

LAB57:    t13 = (t0 + 6280);
    t24 = (t13 + 56U);
    t26 = *((char **)t24);
    t27 = (t26 + 56U);
    t31 = *((char **)t27);
    memcpy(t31, t9, 9U);
    xsi_driver_first_trans_fast(t13);
    goto LAB45;

LAB48:    xsi_set_current_line(97, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t1 = (t0 + 10648U);
    t5 = (t0 + 1352U);
    t6 = *((char **)t5);
    t7 = ((IEEE_P_2592010699) + 4000);
    t8 = (t0 + 10552U);
    t5 = xsi_base_array_concat(t5, t21, t7, (char)99, (unsigned char)2, (char)97, t6, t8, (char)101);
    t9 = ieee_p_3620187407_sub_1496620905533721142_3965413181(IEEE_P_3620187407, t14, t2, t1, t5, t21);
    t10 = (t14 + 12U);
    t15 = *((unsigned int *)t10);
    t16 = (1U * t15);
    t3 = (9U != t16);
    if (t3 == 1)
        goto LAB58;

LAB59:    t13 = (t0 + 6280);
    t24 = (t13 + 56U);
    t26 = *((char **)t24);
    t27 = (t26 + 56U);
    t31 = *((char **)t27);
    memcpy(t31, t9, 9U);
    xsi_driver_first_trans_fast(t13);
    goto LAB45;

LAB53:;
LAB54:    xsi_size_not_matching(9U, t18, 0);
    goto LAB55;

LAB56:    xsi_size_not_matching(9U, t16, 0);
    goto LAB57;

LAB58:    xsi_size_not_matching(9U, t16, 0);
    goto LAB59;

}

static void work_a_2700724180_2372691052_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(109, ng0);

LAB3:    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t1 = (t0 + 6728);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 4U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 6056);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_2700724180_2372691052_p_2(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(110, ng0);

LAB3:    t1 = (t0 + 3112U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 6792);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 6072);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_2700724180_2372691052_init()
{
	static char *pe[] = {(void *)work_a_2700724180_2372691052_p_0,(void *)work_a_2700724180_2372691052_p_1,(void *)work_a_2700724180_2372691052_p_2};
	xsi_register_didat("work_a_2700724180_2372691052", "isim/System_TB_isim_beh.exe.sim/work/a_2700724180_2372691052.didat");
	xsi_register_executes(pe);
}
