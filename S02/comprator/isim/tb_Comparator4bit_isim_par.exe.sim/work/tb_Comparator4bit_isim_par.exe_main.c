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

#include "xsi.h"

struct XSI_INFO xsi_info;

char *IEEE_P_2592010699;
char *STD_STANDARD;
char *SIMPRIM_P_0947159679;
char *IEEE_P_2717149903;
char *STD_TEXTIO;
char *SIMPRIM_P_4208868169;
char *IEEE_P_1367372525;
char *IEEE_P_1242562249;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_1242562249_init();
    std_textio_init();
    ieee_p_2717149903_init();
    simprim_p_0947159679_init();
    ieee_p_1367372525_init();
    simprim_p_4208868169_init();
    simprim_a_0609813313_2431929443_0655091736_init();
    simprim_a_0609813313_2431929443_0625825345_init();
    simprim_a_0609813313_2431929443_0880553409_init();
    simprim_a_0609813313_2431929443_0901662710_init();
    simprim_a_0609813313_2431929443_0764790034_init();
    simprim_a_0609813313_2431929443_0650740271_init();
    simprim_a_0609813313_2431929443_0613366902_init();
    simprim_a_0609813313_2431929443_0566242035_init();
    simprim_a_0609813313_2431929443_2552822385_init();
    simprim_a_0609813313_2431929443_2582286406_init();
    simprim_a_0609813313_2431929443_1818900102_init();
    simprim_a_0609813313_2431929443_0380265958_init();
    simprim_a_0609813313_2431929443_0939063727_init();
    simprim_a_0609813313_2431929443_0743943973_init();
    simprim_a_0609813313_2431929443_0909808536_init();
    simprim_a_3156740924_4150518722_0939063727_init();
    simprim_a_3156740924_4150518722_0743943973_init();
    simprim_a_3156740924_4150518722_0909808536_init();
    simprim_a_0378577365_1957906245_2552822385_init();
    simprim_a_2284057683_1957906245_2552822385_init();
    simprim_a_2591141162_1957906245_2582286406_init();
    simprim_a_0079886508_1957906245_2582286406_init();
    simprim_a_1983325633_1957906245_1839750321_init();
    simprim_a_1684372664_1957906245_1839750321_init();
    simprim_a_0763864647_1957906245_1818900102_init();
    simprim_a_2305491328_1957906245_1818900102_init();
    simprim_a_4021053430_1957906245_0380265958_init();
    simprim_a_3936907874_4055128042_2552822385_init();
    simprim_a_3936907874_4055128042_2582286406_init();
    simprim_a_1509725169_3980060181_0433961640_init();
    simprim_a_4181367278_3380326129_0433961640_init();
    simprim_a_2155285624_1178295121_0433961640_init();
    work_a_2700045538_0632001823_init();
    work_a_1001415958_3553469787_init();


    xsi_register_tops("work_a_1001415958_3553469787");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    SIMPRIM_P_0947159679 = xsi_get_engine_memory("simprim_p_0947159679");
    IEEE_P_2717149903 = xsi_get_engine_memory("ieee_p_2717149903");
    STD_TEXTIO = xsi_get_engine_memory("std_textio");
    SIMPRIM_P_4208868169 = xsi_get_engine_memory("simprim_p_4208868169");
    IEEE_P_1367372525 = xsi_get_engine_memory("ieee_p_1367372525");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");

    return xsi_run_simulation(argc, argv);

}
