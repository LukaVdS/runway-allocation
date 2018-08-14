\ENCODING=ISO-8859-1
\Problem name: Opt_Model

Minimize
 obj: 1.55 G_00,01_00 + G_00,02_00
Subject To
 Always_Assign_FLight_1:        X_01,01_01 + X_01,01_02 + X_01,01_03
                                + X_01,01_04 + X_01,01_05 + X_01,01_06
                                + X_01,01_07 + X_01,02_01 + X_01,02_02
                                + X_01,02_03 + X_01,02_04 + X_01,02_05
                                + X_01,02_06 + X_01,02_07  = 1
 Always_Assign_FLight_2:        X_02,01_01 + X_02,01_02 + X_02,01_03
                                + X_02,01_04 + X_02,01_05 + X_02,01_06
                                + X_02,01_07 + X_02,02_01 + X_02,02_02
                                + X_02,02_03 + X_02,02_04 + X_02,02_05
                                + X_02,02_06 + X_02,02_07  = 1
 Always_Assign_FLight_3:        X_03,01_01 + X_03,01_02 + X_03,01_03
                                + X_03,01_04 + X_03,01_05 + X_03,01_06
                                + X_03,01_07 + X_03,02_01 + X_03,02_02
                                + X_03,02_03 + X_03,02_04 + X_03,02_05
                                + X_03,02_06 + X_03,02_07  = 1
 Always_Assign_FLight_4:        X_04,01_01 + X_04,01_02 + X_04,01_03
                                + X_04,01_04 + X_04,01_05 + X_04,01_06
                                + X_04,01_07 + X_04,02_01 + X_04,02_02
                                + X_04,02_03 + X_04,02_04 + X_04,02_05
                                + X_04,02_06 + X_04,02_07  = 1
 Always_Assign_FLight_5:        X_05,01_01 + X_05,01_02 + X_05,01_03
                                + X_05,01_04 + X_05,01_05 + X_05,01_06
                                + X_05,01_07 + X_05,02_01 + X_05,02_02
                                + X_05,02_03 + X_05,02_04 + X_05,02_05
                                + X_05,02_06 + X_05,02_07  = 1
 Always_Assign_FLight_6:        X_06,01_01 + X_06,01_02 + X_06,01_03
                                + X_06,01_04 + X_06,01_05 + X_06,01_06
                                + X_06,01_07 + X_06,02_01 + X_06,02_02
                                + X_06,02_03 + X_06,02_04 + X_06,02_05
                                + X_06,02_06 + X_06,02_07  = 1
 Always_Assign_FLight_7:        X_07,01_01 + X_07,01_02 + X_07,01_03
                                + X_07,01_04 + X_07,01_05 + X_07,01_06
                                + X_07,01_07 + X_07,02_01 + X_07,02_02
                                + X_07,02_03 + X_07,02_04 + X_07,02_05
                                + X_07,02_06 + X_07,02_07  = 1
 Always_Assign_FLight_8:        X_08,01_01 + X_08,01_02 + X_08,01_03
                                + X_08,01_04 + X_08,01_05 + X_08,01_06
                                + X_08,01_07 + X_08,02_01 + X_08,02_02
                                + X_08,02_03 + X_08,02_04 + X_08,02_05
                                + X_08,02_06 + X_08,02_07  = 1
 Always_Assign_FLight_9:        X_09,01_01 + X_09,01_02 + X_09,01_03
                                + X_09,01_04 + X_09,01_05 + X_09,01_06
                                + X_09,01_07 + X_09,02_01 + X_09,02_02
                                + X_09,02_03 + X_09,02_04 + X_09,02_05
                                + X_09,02_06 + X_09,02_07  = 1
 Always_Assign_FLight_10:       X_10,01_01 + X_10,01_02 + X_10,01_03
                                + X_10,01_04 + X_10,01_05 + X_10,01_06
                                + X_10,01_07 + X_10,02_01 + X_10,02_02
                                + X_10,02_03 + X_10,02_04 + X_10,02_05
                                + X_10,02_06 + X_10,02_07  = 1
 Runway_Occupation_RW_1_t_500:  X_01,02_07 - RgRunway_Occupation_RW_1_t_500
                                 = 0
 Runway_Occupation_RW_2_t_500:  X_01,02_07 - RgRunway_Occupation_RW_2_t_500
                                 = 0
 Runway_Occupation_RW_1_t_520:  X_01,02_01 + X_01,02_07
                                - RgRunway_Occupation_RW_1_t_520  = 0
 Runway_Occupation_RW_2_t_520:  X_01,02_01 + X_01,02_07
                                - RgRunway_Occupation_RW_2_t_520  = 0
 Runway_Occupation_RW_1_t_540:  X_01,02_01 + X_01,02_02 + X_01,02_07
                                - RgRunway_Occupation_RW_1_t_540  = 0
 Runway_Occupation_RW_2_t_540:  X_01,02_01 + X_01,02_02 + X_01,02_07
                                - RgRunway_Occupation_RW_2_t_540  = 0
 Runway_Occupation_RW_1_t_560:  X_01,02_01 + X_01,02_02 + X_01,02_03
                                + X_01,02_07 - RgRunway_Occupation_RW_1_t_560
                                 = 0
 Runway_Occupation_RW_2_t_560:  X_01,02_01 + X_01,02_02 + X_01,02_03
                                + X_01,02_07 - RgRunway_Occupation_RW_2_t_560
                                 = 0
 Runway_Occupation_RW_1_t_580:  X_01,02_01 + X_01,02_02 + X_01,02_03
                                + X_01,02_04 + X_01,02_07
                                - RgRunway_Occupation_RW_1_t_580  = 0
 Runway_Occupation_RW_2_t_580:  X_01,02_01 + X_01,02_02 + X_01,02_03
                                + X_01,02_04 + X_01,02_07
                                - RgRunway_Occupation_RW_2_t_580  = 0
 Runway_Occupation_RW_1_t_600:  X_01,02_01 + X_01,02_02 + X_01,02_03
                                + X_01,02_04 + X_01,02_05 + X_01,02_07
                                - RgRunway_Occupation_RW_1_t_600  = 0
 Runway_Occupation_RW_2_t_600:  X_01,02_01 + X_01,02_02 + X_01,02_03
                                + X_01,02_04 + X_01,02_05
                                - RgRunway_Occupation_RW_2_t_600  = 0
 Runway_Occupation_RW_1_t_620:  X_01,02_01 + X_01,02_02 + X_01,02_03
                                + X_01,02_04 + X_01,02_05 + X_01,02_06
                                - RgRunway_Occupation_RW_1_t_620  = 0
 Runway_Occupation_RW_2_t_620:  X_01,02_02 + X_01,02_03 + X_01,02_04
                                + X_01,02_05 + X_01,02_06
                                - RgRunway_Occupation_RW_2_t_620  = 0
 Runway_Occupation_RW_1_t_640:  X_01,02_02 + X_01,02_03 + X_01,02_04
                                + X_01,02_05 + X_01,02_06
                                - RgRunway_Occupation_RW_1_t_640  = 0
 Runway_Occupation_RW_2_t_640:  X_01,02_03 + X_01,02_04 + X_01,02_05
                                + X_01,02_06 - RgRunway_Occupation_RW_2_t_640
                                 = 0
 Runway_Occupation_RW_1_t_660:  X_01,02_03 + X_01,02_04 + X_01,02_05
                                + X_01,02_06 - RgRunway_Occupation_RW_1_t_660
                                 = 0
 Runway_Occupation_RW_2_t_660:  X_01,02_04 + X_01,02_05 + X_01,02_06
                                - RgRunway_Occupation_RW_2_t_660  = 0
 Runway_Occupation_RW_1_t_680:  X_01,02_04 + X_01,02_05 + X_01,02_06
                                + X_02,02_07 - RgRunway_Occupation_RW_1_t_680
                                 = 0
 Runway_Occupation_RW_2_t_680:  X_01,02_05 + X_01,02_06 + X_02,02_07
                                - RgRunway_Occupation_RW_2_t_680  = 0
 Runway_Occupation_RW_1_t_700:  X_01,02_05 + X_01,02_06 + X_02,02_01
                                + X_02,02_07 - RgRunway_Occupation_RW_1_t_700
                                 = 0
 Runway_Occupation_RW_2_t_700:  X_01,02_06 + X_02,02_01 + X_02,02_07
                                - RgRunway_Occupation_RW_2_t_700  = 0
 Runway_Occupation_RW_1_t_720:  X_01,02_06 + X_02,02_01 + X_02,02_02
                                + X_02,02_07 - RgRunway_Occupation_RW_1_t_720
                                 = 0
 Runway_Occupation_RW_2_t_720:  X_02,02_01 + X_02,02_02 + X_02,02_07
                                - RgRunway_Occupation_RW_2_t_720  = 0
 Runway_Occupation_RW_1_t_740:  X_02,02_01 + X_02,02_02 + X_02,02_03
                                + X_02,02_07 - RgRunway_Occupation_RW_1_t_740
                                 = 0
 Runway_Occupation_RW_2_t_740:  X_02,02_01 + X_02,02_02 + X_02,02_03
                                + X_02,02_07 - RgRunway_Occupation_RW_2_t_740
                                 = 0
 Runway_Occupation_RW_1_t_760:  X_02,02_01 + X_02,02_02 + X_02,02_03
                                + X_02,02_04 + X_02,02_07
                                - RgRunway_Occupation_RW_1_t_760  = 0
 Runway_Occupation_RW_2_t_760:  X_02,02_01 + X_02,02_02 + X_02,02_03
                                + X_02,02_04 + X_02,02_07
                                - RgRunway_Occupation_RW_2_t_760  = 0
 Runway_Occupation_RW_1_t_780:  X_02,02_01 + X_02,02_02 + X_02,02_03
                                + X_02,02_04 + X_02,02_05 + X_02,02_07
                                - RgRunway_Occupation_RW_1_t_780  = 0
 Runway_Occupation_RW_2_t_780:  X_02,02_01 + X_02,02_02 + X_02,02_03
                                + X_02,02_04 + X_02,02_05
                                - RgRunway_Occupation_RW_2_t_780  = 0
 Runway_Occupation_RW_1_t_800:  X_02,02_01 + X_02,02_02 + X_02,02_03
                                + X_02,02_04 + X_02,02_05 + X_02,02_06
                                - RgRunway_Occupation_RW_1_t_800  = 0
 Runway_Occupation_RW_2_t_800:  X_02,02_02 + X_02,02_03 + X_02,02_04
                                + X_02,02_05 + X_02,02_06
                                - RgRunway_Occupation_RW_2_t_800  = 0
 Runway_Occupation_RW_1_t_820:  X_02,02_02 + X_02,02_03 + X_02,02_04
                                + X_02,02_05 + X_02,02_06 + X_03,02_07
                                - RgRunway_Occupation_RW_1_t_820  = 0
 Runway_Occupation_RW_2_t_820:  X_02,02_03 + X_02,02_04 + X_02,02_05
                                + X_02,02_06 + X_03,02_07
                                - RgRunway_Occupation_RW_2_t_820  = 0
 Runway_Occupation_RW_1_t_840:  X_02,02_03 + X_02,02_04 + X_02,02_05
                                + X_02,02_06 + X_03,02_01 + X_03,02_07
                                - RgRunway_Occupation_RW_1_t_840  = 0
 Runway_Occupation_RW_2_t_840:  X_02,02_04 + X_02,02_05 + X_02,02_06
                                + X_03,02_01 + X_03,02_07
                                - RgRunway_Occupation_RW_2_t_840  = 0
 Runway_Occupation_RW_1_t_860:  X_02,02_04 + X_02,02_05 + X_02,02_06
                                + X_03,02_01 + X_03,02_02 + X_03,02_07
                                - RgRunway_Occupation_RW_1_t_860  = 0
 Runway_Occupation_RW_2_t_860:  X_02,02_05 + X_02,02_06 + X_03,02_01
                                + X_03,02_02 + X_03,02_07
                                - RgRunway_Occupation_RW_2_t_860  = 0
 Runway_Occupation_RW_1_t_880:  X_02,02_05 + X_02,02_06 + X_03,02_01
                                + X_03,02_02 + X_03,02_03 + X_03,02_07
                                - RgRunway_Occupation_RW_1_t_880  = 0
 Runway_Occupation_RW_2_t_880:  X_02,02_06 + X_03,02_01 + X_03,02_02
                                + X_03,02_03 + X_03,02_07
                                - RgRunway_Occupation_RW_2_t_880  = 0
 Runway_Occupation_RW_1_t_900:  X_02,02_06 + X_03,02_01 + X_03,02_02
                                + X_03,02_03 + X_03,02_04 + X_03,02_07
                                - RgRunway_Occupation_RW_1_t_900  = 0
 Runway_Occupation_RW_2_t_900:  X_03,02_01 + X_03,02_02 + X_03,02_03
                                + X_03,02_04 + X_03,02_07
                                - RgRunway_Occupation_RW_2_t_900  = 0
 Runway_Occupation_RW_1_t_920:  X_03,02_01 + X_03,02_02 + X_03,02_03
                                + X_03,02_04 + X_03,02_05 + X_03,02_07
                                - RgRunway_Occupation_RW_1_t_920  = 0
 Runway_Occupation_RW_2_t_920:  X_03,02_01 + X_03,02_02 + X_03,02_03
                                + X_03,02_04 + X_03,02_05 + X_03,02_07
                                - RgRunway_Occupation_RW_2_t_920  = 0
 Runway_Occupation_RW_1_t_940:  X_03,02_01 + X_03,02_02 + X_03,02_03
                                + X_03,02_04 + X_03,02_05 + X_03,02_06
                                + X_03,02_07 + X_04,02_07
                                - RgRunway_Occupation_RW_1_t_940  = 0
 Runway_Occupation_RW_2_t_940:  X_03,02_01 + X_03,02_02 + X_03,02_03
                                + X_03,02_04 + X_03,02_05 + X_03,02_06
                                + X_04,02_07 - RgRunway_Occupation_RW_2_t_940
                                 = 0
 Runway_Occupation_RW_1_t_960:  X_03,02_01 + X_03,02_02 + X_03,02_03
                                + X_03,02_04 + X_03,02_05 + X_03,02_06
                                + X_04,02_01 + X_04,02_07
                                - RgRunway_Occupation_RW_1_t_960  = 0
 Runway_Occupation_RW_2_t_960:  X_03,02_02 + X_03,02_03 + X_03,02_04
                                + X_03,02_05 + X_03,02_06 + X_04,02_01
                                + X_04,02_07 - RgRunway_Occupation_RW_2_t_960
                                 = 0
 Runway_Occupation_RW_1_t_980:  X_03,02_02 + X_03,02_03 + X_03,02_04
                                + X_03,02_05 + X_03,02_06 + X_04,02_01
                                + X_04,02_02 + X_04,02_07
                                - RgRunway_Occupation_RW_1_t_980  = 0
 Runway_Occupation_RW_2_t_980:  X_03,02_03 + X_03,02_04 + X_03,02_05
                                + X_03,02_06 + X_04,02_01 + X_04,02_02
                                + X_04,02_07 - RgRunway_Occupation_RW_2_t_980
                                 = 0
 Runway_Occupation_RW_1_t_1000: X_03,02_03 + X_03,02_04 + X_03,02_05
                                + X_03,02_06 + X_04,02_01 + X_04,02_02
                                + X_04,02_03 + X_04,02_07
                                - RgRunway_Occupation_RW_1_t_1000  = 0
 Runway_Occupation_RW_2_t_1000: X_03,02_04 + X_03,02_05 + X_03,02_06
                                + X_04,02_01 + X_04,02_02 + X_04,02_03
                                + X_04,02_07 - RgRunway_Occupation_RW_2_t_1000
                                 = 0
 Runway_Occupation_RW_1_t_1020: X_03,02_04 + X_03,02_05 + X_03,02_06
                                + X_04,02_01 + X_04,02_02 + X_04,02_03
                                + X_04,02_04 + X_04,02_07
                                - RgRunway_Occupation_RW_1_t_1020  = 0
 Runway_Occupation_RW_2_t_1020: X_03,02_05 + X_03,02_06 + X_04,02_01
                                + X_04,02_02 + X_04,02_03 + X_04,02_04
                                + X_04,02_07 - RgRunway_Occupation_RW_2_t_1020
                                 = 0
 Runway_Occupation_RW_1_t_1040: X_03,02_05 + X_03,02_06 + X_04,02_01
                                + X_04,02_02 + X_04,02_03 + X_04,02_04
                                + X_04,02_05 + X_04,02_07
                                - RgRunway_Occupation_RW_1_t_1040  = 0
 Runway_Occupation_RW_2_t_1040: X_03,02_06 + X_04,02_01 + X_04,02_02
                                + X_04,02_03 + X_04,02_04 + X_04,02_05
                                - RgRunway_Occupation_RW_2_t_1040  = 0
 Runway_Occupation_RW_1_t_1060: X_03,02_06 + X_04,02_01 + X_04,02_02
                                + X_04,02_03 + X_04,02_04 + X_04,02_05
                                + X_04,02_06 - RgRunway_Occupation_RW_1_t_1060
                                 = 0
 Runway_Occupation_RW_2_t_1060: X_04,02_02 + X_04,02_03 + X_04,02_04
                                + X_04,02_05 + X_04,02_06
                                - RgRunway_Occupation_RW_2_t_1060  = 0
 Runway_Occupation_RW_1_t_1080: X_04,02_02 + X_04,02_03 + X_04,02_04
                                + X_04,02_05 + X_04,02_06
                                - RgRunway_Occupation_RW_1_t_1080  = 0
 Runway_Occupation_RW_2_t_1080: X_04,02_03 + X_04,02_04 + X_04,02_05
                                + X_04,02_06 - RgRunway_Occupation_RW_2_t_1080
                                 = 0
 Runway_Occupation_RW_1_t_1100: X_04,02_03 + X_04,02_04 + X_04,02_05
                                + X_04,02_06 - RgRunway_Occupation_RW_1_t_1100
                                 = 0
 Runway_Occupation_RW_2_t_1100: X_04,02_04 + X_04,02_05 + X_04,02_06
                                - RgRunway_Occupation_RW_2_t_1100  = 0
 Runway_Occupation_RW_1_t_1120: X_04,02_04 + X_04,02_05 + X_04,02_06
                                + X_05,02_07 - RgRunway_Occupation_RW_1_t_1120
                                 = 0
 Runway_Occupation_RW_2_t_1120: X_01,01_07 + X_04,02_05 + X_04,02_06
                                + X_05,02_07 - RgRunway_Occupation_RW_2_t_1120
                                 = 0
 Runway_Occupation_RW_1_t_1140: X_04,02_05 + X_04,02_06 + X_05,02_01
                                + X_05,02_07 - RgRunway_Occupation_RW_1_t_1140
                                 = 0
 Runway_Occupation_RW_2_t_1140: X_01,01_01 + X_01,01_07 + X_04,02_06
                                + X_05,02_01 + X_05,02_07
                                - RgRunway_Occupation_RW_2_t_1140  = 0
 Runway_Occupation_RW_1_t_1160: X_01,01_07 + X_04,02_06 + X_05,02_01
                                + X_05,02_02 + X_05,02_07
                                - RgRunway_Occupation_RW_1_t_1160  = 0
 Runway_Occupation_RW_2_t_1160: X_01,01_01 + X_01,01_02 + X_01,01_07
                                + X_05,02_01 + X_05,02_02 + X_05,02_07
                                - RgRunway_Occupation_RW_2_t_1160  = 0
 Runway_Occupation_RW_1_t_1180: X_01,01_01 + X_01,01_07 + X_05,02_01
                                + X_05,02_02 + X_05,02_03 + X_05,02_07
                                - RgRunway_Occupation_RW_1_t_1180  = 0
 Runway_Occupation_RW_2_t_1180: X_01,01_01 + X_01,01_02 + X_01,01_03
                                + X_01,01_07 + X_05,02_01 + X_05,02_02
                                + X_05,02_03 + X_05,02_07
                                - RgRunway_Occupation_RW_2_t_1180  = 0
 Runway_Occupation_RW_1_t_1200: X_01,01_01 + X_01,01_02 + X_01,01_07
                                + X_05,02_01 + X_05,02_02 + X_05,02_03
                                + X_05,02_04 + X_05,02_07
                                - RgRunway_Occupation_RW_1_t_1200  = 0
 Runway_Occupation_RW_2_t_1200: X_01,01_01 + X_01,01_02 + X_01,01_03
                                + X_01,01_04 + X_01,01_07 + X_05,02_01
                                + X_05,02_02 + X_05,02_03 + X_05,02_04
                                + X_05,02_07 - RgRunway_Occupation_RW_2_t_1200
                                 = 0
 Runway_Occupation_RW_1_t_1220: X_01,01_01 + X_01,01_02 + X_01,01_03
                                + X_01,01_07 + X_05,02_01 + X_05,02_02
                                + X_05,02_03 + X_05,02_04 + X_05,02_05
                                + X_05,02_07 - RgRunway_Occupation_RW_1_t_1220
                                 = 0
 Runway_Occupation_RW_2_t_1220: X_01,01_01 + X_01,01_02 + X_01,01_03
                                + X_01,01_04 + X_01,01_05 + X_01,01_07
                                + X_05,02_01 + X_05,02_02 + X_05,02_03
                                + X_05,02_04 + X_05,02_05 + X_05,02_07
                                - RgRunway_Occupation_RW_2_t_1220  = 0
 Runway_Occupation_RW_1_t_1240: X_01,01_01 + X_01,01_02 + X_01,01_03
                                + X_01,01_04 + X_01,01_07 + X_05,02_01
                                + X_05,02_02 + X_05,02_03 + X_05,02_04
                                + X_05,02_05 + X_05,02_06 + X_05,02_07
                                - RgRunway_Occupation_RW_1_t_1240  = 0
 Runway_Occupation_RW_2_t_1240: X_01,01_01 + X_01,01_02 + X_01,01_03
                                + X_01,01_04 + X_01,01_05 + X_01,01_06
                                + X_01,01_07 + X_05,02_01 + X_05,02_02
                                + X_05,02_03 + X_05,02_04 + X_05,02_05
                                + X_05,02_06 - RgRunway_Occupation_RW_2_t_1240
                                 = 0
 Runway_Occupation_RW_1_t_1260: X_01,01_01 + X_01,01_02 + X_01,01_03
                                + X_01,01_04 + X_01,01_05 + X_05,02_01
                                + X_05,02_02 + X_05,02_03 + X_05,02_04
                                + X_05,02_05 + X_05,02_06
                                - RgRunway_Occupation_RW_1_t_1260  = 0
 Runway_Occupation_RW_2_t_1260: X_01,01_01 + X_01,01_02 + X_01,01_03
                                + X_01,01_04 + X_01,01_05 + X_01,01_06
                                + X_01,01_07 + X_05,02_02 + X_05,02_03
                                + X_05,02_04 + X_05,02_05 + X_05,02_06
                                - RgRunway_Occupation_RW_2_t_1260  = 0
 Runway_Occupation_RW_1_t_1280: X_01,01_02 + X_01,01_03 + X_01,01_04
                                + X_01,01_05 + X_01,01_06 + X_05,02_02
                                + X_05,02_03 + X_05,02_04 + X_05,02_05
                                + X_05,02_06 - RgRunway_Occupation_RW_1_t_1280
                                 = 0
 Runway_Occupation_RW_2_t_1280: X_01,01_01 + X_01,01_02 + X_01,01_03
                                + X_01,01_04 + X_01,01_05 + X_01,01_06
                                + X_05,02_03 + X_05,02_04 + X_05,02_05
                                + X_05,02_06 - RgRunway_Occupation_RW_2_t_1280
                                 = 0
 Runway_Occupation_RW_1_t_1300: X_01,01_03 + X_01,01_04 + X_01,01_05
                                + X_01,01_06 + X_05,02_03 + X_05,02_04
                                + X_05,02_05 + X_05,02_06
                                - RgRunway_Occupation_RW_1_t_1300  = 0
 Runway_Occupation_RW_2_t_1300: X_01,01_02 + X_01,01_03 + X_01,01_04
                                + X_01,01_05 + X_01,01_06 + X_02,01_07
                                + X_05,02_04 + X_05,02_05 + X_05,02_06
                                - RgRunway_Occupation_RW_2_t_1300  = 0
 Runway_Occupation_RW_1_t_1320: X_01,01_04 + X_01,01_05 + X_01,01_06
                                + X_05,02_04 + X_05,02_05 + X_05,02_06
                                + X_06,02_07 - RgRunway_Occupation_RW_1_t_1320
                                 = 0
 Runway_Occupation_RW_2_t_1320: X_01,01_03 + X_01,01_04 + X_01,01_05
                                + X_01,01_06 + X_02,01_01 + X_02,01_07
                                + X_05,02_05 + X_05,02_06 + X_06,02_07
                                - RgRunway_Occupation_RW_2_t_1320  = 0
 Runway_Occupation_RW_1_t_1340: X_01,01_05 + X_01,01_06 + X_02,01_07
                                + X_05,02_05 + X_05,02_06 + X_06,02_01
                                + X_06,02_07 - RgRunway_Occupation_RW_1_t_1340
                                 = 0
 Runway_Occupation_RW_2_t_1340: X_01,01_04 + X_01,01_05 + X_01,01_06
                                + X_02,01_01 + X_02,01_02 + X_02,01_07
                                + X_05,02_06 + X_06,02_01 + X_06,02_07
                                - RgRunway_Occupation_RW_2_t_1340  = 0
 Runway_Occupation_RW_1_t_1360: X_01,01_06 + X_02,01_01 + X_02,01_07
                                + X_05,02_06 + X_06,02_01 + X_06,02_02
                                + X_06,02_07 - RgRunway_Occupation_RW_1_t_1360
                                 = 0
 Runway_Occupation_RW_2_t_1360: X_01,01_05 + X_01,01_06 + X_02,01_01
                                + X_02,01_02 + X_02,01_03 + X_02,01_07
                                + X_06,02_01 + X_06,02_02 + X_06,02_07
                                - RgRunway_Occupation_RW_2_t_1360  = 0
 Runway_Occupation_RW_1_t_1380: X_02,01_01 + X_02,01_02 + X_02,01_07
                                + X_06,02_01 + X_06,02_02 + X_06,02_03
                                + X_06,02_07 - RgRunway_Occupation_RW_1_t_1380
                                 = 0
 Runway_Occupation_RW_2_t_1380: X_01,01_06 + X_02,01_01 + X_02,01_02
                                + X_02,01_03 + X_02,01_04 + X_02,01_07
                                + X_06,02_01 + X_06,02_02 + X_06,02_03
                                + X_06,02_07 - RgRunway_Occupation_RW_2_t_1380
                                 = 0
 Runway_Occupation_RW_1_t_1400: X_02,01_01 + X_02,01_02 + X_02,01_03
                                + X_02,01_07 + X_06,02_01 + X_06,02_02
                                + X_06,02_03 + X_06,02_04 + X_06,02_07
                                + X_07,02_07 - RgRunway_Occupation_RW_1_t_1400
                                 = 0
 Runway_Occupation_RW_2_t_1400: X_02,01_01 + X_02,01_02 + X_02,01_03
                                + X_02,01_04 + X_02,01_05 + X_02,01_07
                                + X_06,02_01 + X_06,02_02 + X_06,02_03
                                + X_06,02_04 + X_06,02_07 + X_07,02_07
                                - RgRunway_Occupation_RW_2_t_1400  = 0
 Runway_Occupation_RW_1_t_1420: X_02,01_01 + X_02,01_02 + X_02,01_03
                                + X_02,01_04 + X_02,01_07 + X_06,02_01
                                + X_06,02_02 + X_06,02_03 + X_06,02_04
                                + X_06,02_05 + X_06,02_07 + X_07,02_01
                                + X_07,02_07 - RgRunway_Occupation_RW_1_t_1420
                                 = 0
 Runway_Occupation_RW_2_t_1420: X_02,01_01 + X_02,01_02 + X_02,01_03
                                + X_02,01_04 + X_02,01_05 + X_02,01_06
                                + X_02,01_07 + X_06,02_01 + X_06,02_02
                                + X_06,02_03 + X_06,02_04 + X_06,02_05
                                + X_07,02_01 + X_07,02_07
                                - RgRunway_Occupation_RW_2_t_1420  = 0
 Runway_Occupation_RW_1_t_1440: X_02,01_01 + X_02,01_02 + X_02,01_03
                                + X_02,01_04 + X_02,01_05 + X_06,02_01
                                + X_06,02_02 + X_06,02_03 + X_06,02_04
                                + X_06,02_05 + X_06,02_06 + X_07,02_01
                                + X_07,02_02 + X_07,02_07
                                - RgRunway_Occupation_RW_1_t_1440  = 0
 Runway_Occupation_RW_2_t_1440: X_02,01_01 + X_02,01_02 + X_02,01_03
                                + X_02,01_04 + X_02,01_05 + X_02,01_06
                                + X_02,01_07 + X_03,01_07 + X_06,02_02
                                + X_06,02_03 + X_06,02_04 + X_06,02_05
                                + X_06,02_06 + X_07,02_01 + X_07,02_02
                                + X_07,02_07 - RgRunway_Occupation_RW_2_t_1440
                                 = 0
 Runway_Occupation_RW_1_t_1460: X_02,01_02 + X_02,01_03 + X_02,01_04
                                + X_02,01_05 + X_02,01_06 + X_06,02_02
                                + X_06,02_03 + X_06,02_04 + X_06,02_05
                                + X_06,02_06 + X_07,02_01 + X_07,02_02
                                + X_07,02_03 + X_07,02_07
                                - RgRunway_Occupation_RW_1_t_1460  = 0
 Runway_Occupation_RW_2_t_1460: X_02,01_01 + X_02,01_02 + X_02,01_03
                                + X_02,01_04 + X_02,01_05 + X_02,01_06
                                + X_03,01_01 + X_03,01_07 + X_06,02_03
                                + X_06,02_04 + X_06,02_05 + X_06,02_06
                                + X_07,02_01 + X_07,02_02 + X_07,02_03
                                + X_07,02_07 - RgRunway_Occupation_RW_2_t_1460
                                 = 0
 Runway_Occupation_RW_1_t_1480: X_02,01_03 + X_02,01_04 + X_02,01_05
                                + X_02,01_06 + X_03,01_07 + X_06,02_03
                                + X_06,02_04 + X_06,02_05 + X_06,02_06
                                + X_07,02_01 + X_07,02_02 + X_07,02_03
                                + X_07,02_04 + X_07,02_07
                                - RgRunway_Occupation_RW_1_t_1480  = 0
 Runway_Occupation_RW_2_t_1480: X_02,01_02 + X_02,01_03 + X_02,01_04
                                + X_02,01_05 + X_02,01_06 + X_03,01_01
                                + X_03,01_02 + X_03,01_07 + X_06,02_04
                                + X_06,02_05 + X_06,02_06 + X_07,02_01
                                + X_07,02_02 + X_07,02_03 + X_07,02_04
                                + X_07,02_07 - RgRunway_Occupation_RW_2_t_1480
                                 = 0
 Runway_Occupation_RW_1_t_1500: X_02,01_04 + X_02,01_05 + X_02,01_06
                                + X_03,01_01 + X_03,01_07 + X_06,02_04
                                + X_06,02_05 + X_06,02_06 + X_07,02_01
                                + X_07,02_02 + X_07,02_03 + X_07,02_04
                                + X_07,02_05 + X_07,02_07 + X_08,02_07
                                - RgRunway_Occupation_RW_1_t_1500  = 0
 Runway_Occupation_RW_2_t_1500: X_02,01_03 + X_02,01_04 + X_02,01_05
                                + X_02,01_06 + X_03,01_01 + X_03,01_02
                                + X_03,01_03 + X_03,01_07 + X_06,02_05
                                + X_06,02_06 + X_07,02_01 + X_07,02_02
                                + X_07,02_03 + X_07,02_04 + X_07,02_05
                                + X_07,02_07 + X_08,02_07
                                - RgRunway_Occupation_RW_2_t_1500  = 0
 Runway_Occupation_RW_1_t_1520: X_02,01_05 + X_02,01_06 + X_03,01_01
                                + X_03,01_02 + X_03,01_07 + X_06,02_05
                                + X_06,02_06 + X_07,02_01 + X_07,02_02
                                + X_07,02_03 + X_07,02_04 + X_07,02_05
                                + X_07,02_06 + X_07,02_07 + X_08,02_01
                                + X_08,02_07 - RgRunway_Occupation_RW_1_t_1520
                                 = 0
 Runway_Occupation_RW_2_t_1520: X_02,01_04 + X_02,01_05 + X_02,01_06
                                + X_03,01_01 + X_03,01_02 + X_03,01_03
                                + X_03,01_04 + X_03,01_07 + X_06,02_06
                                + X_07,02_01 + X_07,02_02 + X_07,02_03
                                + X_07,02_04 + X_07,02_05 + X_07,02_06
                                + X_08,02_01 + X_08,02_07
                                - RgRunway_Occupation_RW_2_t_1520  = 0
 Runway_Occupation_RW_1_t_1540: X_02,01_06 + X_03,01_01 + X_03,01_02
                                + X_03,01_03 + X_03,01_07 + X_06,02_06
                                + X_07,02_01 + X_07,02_02 + X_07,02_03
                                + X_07,02_04 + X_07,02_05 + X_07,02_06
                                + X_08,02_01 + X_08,02_02 + X_08,02_07
                                - RgRunway_Occupation_RW_1_t_1540  = 0
 Runway_Occupation_RW_2_t_1540: X_02,01_05 + X_02,01_06 + X_03,01_01
                                + X_03,01_02 + X_03,01_03 + X_03,01_04
                                + X_03,01_05 + X_03,01_07 + X_07,02_02
                                + X_07,02_03 + X_07,02_04 + X_07,02_05
                                + X_07,02_06 + X_08,02_01 + X_08,02_02
                                + X_08,02_07 - RgRunway_Occupation_RW_2_t_1540
                                 = 0
 Runway_Occupation_RW_1_t_1560: X_03,01_01 + X_03,01_02 + X_03,01_03
                                + X_03,01_04 + X_03,01_07 + X_07,02_02
                                + X_07,02_03 + X_07,02_04 + X_07,02_05
                                + X_07,02_06 + X_08,02_01 + X_08,02_02
                                + X_08,02_03 + X_08,02_07
                                - RgRunway_Occupation_RW_1_t_1560  = 0
 Runway_Occupation_RW_2_t_1560: X_02,01_06 + X_03,01_01 + X_03,01_02
                                + X_03,01_03 + X_03,01_04 + X_03,01_05
                                + X_03,01_06 + X_03,01_07 + X_04,01_07
                                + X_07,02_03 + X_07,02_04 + X_07,02_05
                                + X_07,02_06 + X_08,02_01 + X_08,02_02
                                + X_08,02_03 + X_08,02_07
                                - RgRunway_Occupation_RW_2_t_1560  = 0
 Runway_Occupation_RW_1_t_1580: X_03,01_01 + X_03,01_02 + X_03,01_03
                                + X_03,01_04 + X_03,01_05 + X_03,01_07
                                + X_07,02_03 + X_07,02_04 + X_07,02_05
                                + X_07,02_06 + X_08,02_01 + X_08,02_02
                                + X_08,02_03 + X_08,02_04 + X_08,02_07
                                - RgRunway_Occupation_RW_1_t_1580  = 0
 Runway_Occupation_RW_2_t_1580: X_03,01_01 + X_03,01_02 + X_03,01_03
                                + X_03,01_04 + X_03,01_05 + X_03,01_06
                                + X_03,01_07 + X_04,01_01 + X_04,01_07
                                + X_07,02_04 + X_07,02_05 + X_07,02_06
                                + X_08,02_01 + X_08,02_02 + X_08,02_03
                                + X_08,02_04 + X_08,02_07
                                - RgRunway_Occupation_RW_2_t_1580  = 0
 Runway_Occupation_RW_1_t_1600: X_03,01_01 + X_03,01_02 + X_03,01_03
                                + X_03,01_04 + X_03,01_05 + X_03,01_06
                                + X_04,01_07 + X_07,02_04 + X_07,02_05
                                + X_07,02_06 + X_08,02_01 + X_08,02_02
                                + X_08,02_03 + X_08,02_04 + X_08,02_05
                                + X_08,02_07 - RgRunway_Occupation_RW_1_t_1600
                                 = 0
 Runway_Occupation_RW_2_t_1600: X_03,01_01 + X_03,01_02 + X_03,01_03
                                + X_03,01_04 + X_03,01_05 + X_03,01_06
                                + X_03,01_07 + X_04,01_01 + X_04,01_02
                                + X_04,01_07 + X_07,02_05 + X_07,02_06
                                + X_08,02_01 + X_08,02_02 + X_08,02_03
                                + X_08,02_04 + X_08,02_05 + X_08,02_07
                                - RgRunway_Occupation_RW_2_t_1600  = 0
 Runway_Occupation_RW_1_t_1620: X_03,01_02 + X_03,01_03 + X_03,01_04
                                + X_03,01_05 + X_03,01_06 + X_04,01_01
                                + X_04,01_07 + X_07,02_05 + X_07,02_06
                                + X_08,02_01 + X_08,02_02 + X_08,02_03
                                + X_08,02_04 + X_08,02_05 + X_08,02_06
                                + X_08,02_07 - RgRunway_Occupation_RW_1_t_1620
                                 = 0
 Runway_Occupation_RW_2_t_1620: X_03,01_01 + X_03,01_02 + X_03,01_03
                                + X_03,01_04 + X_03,01_05 + X_03,01_06
                                + X_04,01_01 + X_04,01_02 + X_04,01_03
                                + X_04,01_07 + X_07,02_06 + X_08,02_01
                                + X_08,02_02 + X_08,02_03 + X_08,02_04
                                + X_08,02_05 + X_08,02_06
                                - RgRunway_Occupation_RW_2_t_1620  = 0
 Runway_Occupation_RW_1_t_1640: X_03,01_03 + X_03,01_04 + X_03,01_05
                                + X_03,01_06 + X_04,01_01 + X_04,01_02
                                + X_04,01_07 + X_07,02_06 + X_08,02_01
                                + X_08,02_02 + X_08,02_03 + X_08,02_04
                                + X_08,02_05 + X_08,02_06
                                - RgRunway_Occupation_RW_1_t_1640  = 0
 Runway_Occupation_RW_2_t_1640: X_03,01_02 + X_03,01_03 + X_03,01_04
                                + X_03,01_05 + X_03,01_06 + X_04,01_01
                                + X_04,01_02 + X_04,01_03 + X_04,01_04
                                + X_04,01_07 + X_08,02_02 + X_08,02_03
                                + X_08,02_04 + X_08,02_05 + X_08,02_06
                                - RgRunway_Occupation_RW_2_t_1640  = 0
 Runway_Occupation_RW_1_t_1660: X_03,01_04 + X_03,01_05 + X_03,01_06
                                + X_04,01_01 + X_04,01_02 + X_04,01_03
                                + X_04,01_07 + X_08,02_02 + X_08,02_03
                                + X_08,02_04 + X_08,02_05 + X_08,02_06
                                - RgRunway_Occupation_RW_1_t_1660  = 0
 Runway_Occupation_RW_2_t_1660: X_03,01_03 + X_03,01_04 + X_03,01_05
                                + X_03,01_06 + X_04,01_01 + X_04,01_02
                                + X_04,01_03 + X_04,01_04 + X_04,01_05
                                + X_04,01_07 + X_08,02_03 + X_08,02_04
                                + X_08,02_05 + X_08,02_06
                                - RgRunway_Occupation_RW_2_t_1660  = 0
 Runway_Occupation_RW_1_t_1680: X_03,01_05 + X_03,01_06 + X_04,01_01
                                + X_04,01_02 + X_04,01_03 + X_04,01_04
                                + X_04,01_07 + X_08,02_03 + X_08,02_04
                                + X_08,02_05 + X_08,02_06
                                - RgRunway_Occupation_RW_1_t_1680  = 0
 Runway_Occupation_RW_2_t_1680: X_03,01_04 + X_03,01_05 + X_03,01_06
                                + X_04,01_01 + X_04,01_02 + X_04,01_03
                                + X_04,01_04 + X_04,01_05 + X_04,01_06
                                + X_04,01_07 + X_08,02_04 + X_08,02_05
                                + X_08,02_06 - RgRunway_Occupation_RW_2_t_1680
                                 = 0
 Runway_Occupation_RW_1_t_1700: X_03,01_06 + X_04,01_01 + X_04,01_02
                                + X_04,01_03 + X_04,01_04 + X_04,01_05
                                + X_08,02_04 + X_08,02_05 + X_08,02_06
                                - RgRunway_Occupation_RW_1_t_1700  = 0
 Runway_Occupation_RW_2_t_1700: X_03,01_05 + X_03,01_06 + X_04,01_01
                                + X_04,01_02 + X_04,01_03 + X_04,01_04
                                + X_04,01_05 + X_04,01_06 + X_04,01_07
                                + X_08,02_05 + X_08,02_06
                                - RgRunway_Occupation_RW_2_t_1700  = 0
 Runway_Occupation_RW_1_t_1720: X_04,01_02 + X_04,01_03 + X_04,01_04
                                + X_04,01_05 + X_04,01_06 + X_08,02_05
                                + X_08,02_06 - RgRunway_Occupation_RW_1_t_1720
                                 = 0
 Runway_Occupation_RW_2_t_1720: X_03,01_06 + X_04,01_01 + X_04,01_02
                                + X_04,01_03 + X_04,01_04 + X_04,01_05
                                + X_04,01_06 + X_08,02_06
                                - RgRunway_Occupation_RW_2_t_1720  = 0
 Runway_Occupation_RW_1_t_1740: X_04,01_03 + X_04,01_04 + X_04,01_05
                                + X_04,01_06 + X_08,02_06 + X_09,02_07
                                - RgRunway_Occupation_RW_1_t_1740  = 0
 Runway_Occupation_RW_2_t_1740: X_04,01_02 + X_04,01_03 + X_04,01_04
                                + X_04,01_05 + X_04,01_06 + X_05,01_07
                                + X_09,02_07 - RgRunway_Occupation_RW_2_t_1740
                                 = 0
 Runway_Occupation_RW_1_t_1760: X_04,01_04 + X_04,01_05 + X_04,01_06
                                + X_09,02_01 + X_09,02_07
                                - RgRunway_Occupation_RW_1_t_1760  = 0
 Runway_Occupation_RW_2_t_1760: X_04,01_03 + X_04,01_04 + X_04,01_05
                                + X_04,01_06 + X_05,01_01 + X_05,01_07
                                + X_09,02_01 + X_09,02_07
                                - RgRunway_Occupation_RW_2_t_1760  = 0
 Runway_Occupation_RW_1_t_1780: X_04,01_05 + X_04,01_06 + X_05,01_07
                                + X_09,02_01 + X_09,02_02 + X_09,02_07
                                - RgRunway_Occupation_RW_1_t_1780  = 0
 Runway_Occupation_RW_2_t_1780: X_04,01_04 + X_04,01_05 + X_04,01_06
                                + X_05,01_01 + X_05,01_02 + X_05,01_07
                                + X_09,02_01 + X_09,02_02 + X_09,02_07
                                - RgRunway_Occupation_RW_2_t_1780  = 0
 Runway_Occupation_RW_1_t_1800: X_04,01_06 + X_05,01_01 + X_05,01_07
                                + X_09,02_01 + X_09,02_02 + X_09,02_03
                                + X_09,02_07 - RgRunway_Occupation_RW_1_t_1800
                                 = 0
 Runway_Occupation_RW_2_t_1800: X_04,01_05 + X_04,01_06 + X_05,01_01
                                + X_05,01_02 + X_05,01_03 + X_05,01_07
                                + X_09,02_01 + X_09,02_02 + X_09,02_03
                                + X_09,02_07 - RgRunway_Occupation_RW_2_t_1800
                                 = 0
 Runway_Occupation_RW_1_t_1820: X_05,01_01 + X_05,01_02 + X_05,01_07
                                + X_09,02_01 + X_09,02_02 + X_09,02_03
                                + X_09,02_04 + X_09,02_07 + X_10,02_07
                                - RgRunway_Occupation_RW_1_t_1820  = 0
 Runway_Occupation_RW_2_t_1820: X_04,01_06 + X_05,01_01 + X_05,01_02
                                + X_05,01_03 + X_05,01_04 + X_05,01_07
                                + X_09,02_01 + X_09,02_02 + X_09,02_03
                                + X_09,02_04 + X_09,02_07 + X_10,02_07
                                - RgRunway_Occupation_RW_2_t_1820  = 0
 Runway_Occupation_RW_1_t_1840: X_05,01_01 + X_05,01_02 + X_05,01_03
                                + X_05,01_07 + X_09,02_01 + X_09,02_02
                                + X_09,02_03 + X_09,02_04 + X_09,02_05
                                + X_09,02_07 + X_10,02_01 + X_10,02_07
                                - RgRunway_Occupation_RW_1_t_1840  = 0
 Runway_Occupation_RW_2_t_1840: X_05,01_01 + X_05,01_02 + X_05,01_03
                                + X_05,01_04 + X_05,01_05 + X_05,01_07
                                + X_09,02_01 + X_09,02_02 + X_09,02_03
                                + X_09,02_04 + X_09,02_05 + X_10,02_01
                                + X_10,02_07 - RgRunway_Occupation_RW_2_t_1840
                                 = 0
 Runway_Occupation_RW_1_t_1860: X_05,01_01 + X_05,01_02 + X_05,01_03
                                + X_05,01_04 + X_05,01_07 + X_09,02_01
                                + X_09,02_02 + X_09,02_03 + X_09,02_04
                                + X_09,02_05 + X_09,02_06 + X_10,02_01
                                + X_10,02_02 + X_10,02_07
                                - RgRunway_Occupation_RW_1_t_1860  = 0
 Runway_Occupation_RW_2_t_1860: X_05,01_01 + X_05,01_02 + X_05,01_03
                                + X_05,01_04 + X_05,01_05 + X_05,01_06
                                + X_05,01_07 + X_09,02_02 + X_09,02_03
                                + X_09,02_04 + X_09,02_05 + X_09,02_06
                                + X_10,02_01 + X_10,02_02 + X_10,02_07
                                - RgRunway_Occupation_RW_2_t_1860  = 0
 Runway_Occupation_RW_1_t_1880: X_05,01_01 + X_05,01_02 + X_05,01_03
                                + X_05,01_04 + X_05,01_05 + X_05,01_07
                                + X_09,02_02 + X_09,02_03 + X_09,02_04
                                + X_09,02_05 + X_09,02_06 + X_10,02_01
                                + X_10,02_02 + X_10,02_03 + X_10,02_07
                                - RgRunway_Occupation_RW_1_t_1880  = 0
 Runway_Occupation_RW_2_t_1880: X_05,01_01 + X_05,01_02 + X_05,01_03
                                + X_05,01_04 + X_05,01_05 + X_05,01_06
                                + X_05,01_07 + X_09,02_03 + X_09,02_04
                                + X_09,02_05 + X_09,02_06 + X_10,02_01
                                + X_10,02_02 + X_10,02_03 + X_10,02_07
                                - RgRunway_Occupation_RW_2_t_1880  = 0
 Runway_Occupation_RW_1_t_1900: X_05,01_01 + X_05,01_02 + X_05,01_03
                                + X_05,01_04 + X_05,01_05 + X_05,01_06
                                + X_09,02_03 + X_09,02_04 + X_09,02_05
                                + X_09,02_06 + X_10,02_01 + X_10,02_02
                                + X_10,02_03 + X_10,02_04 + X_10,02_07
                                - RgRunway_Occupation_RW_1_t_1900  = 0
 Runway_Occupation_RW_2_t_1900: X_05,01_01 + X_05,01_02 + X_05,01_03
                                + X_05,01_04 + X_05,01_05 + X_05,01_06
                                + X_05,01_07 + X_09,02_04 + X_09,02_05
                                + X_09,02_06 + X_10,02_01 + X_10,02_02
                                + X_10,02_03 + X_10,02_04 + X_10,02_07
                                - RgRunway_Occupation_RW_2_t_1900  = 0
 Runway_Occupation_RW_1_t_1920: X_05,01_02 + X_05,01_03 + X_05,01_04
                                + X_05,01_05 + X_05,01_06 + X_09,02_04
                                + X_09,02_05 + X_09,02_06 + X_10,02_01
                                + X_10,02_02 + X_10,02_03 + X_10,02_04
                                + X_10,02_05 + X_10,02_07
                                - RgRunway_Occupation_RW_1_t_1920  = 0
 Runway_Occupation_RW_2_t_1920: X_05,01_01 + X_05,01_02 + X_05,01_03
                                + X_05,01_04 + X_05,01_05 + X_05,01_06
                                + X_09,02_05 + X_09,02_06 + X_10,02_01
                                + X_10,02_02 + X_10,02_03 + X_10,02_04
                                + X_10,02_05 - RgRunway_Occupation_RW_2_t_1920
                                 = 0
 Runway_Occupation_RW_1_t_1940: X_05,01_03 + X_05,01_04 + X_05,01_05
                                + X_05,01_06 + X_09,02_05 + X_09,02_06
                                + X_10,02_01 + X_10,02_02 + X_10,02_03
                                + X_10,02_04 + X_10,02_05 + X_10,02_06
                                - RgRunway_Occupation_RW_1_t_1940  = 0
 Runway_Occupation_RW_2_t_1940: X_05,01_02 + X_05,01_03 + X_05,01_04
                                + X_05,01_05 + X_05,01_06 + X_06,01_07
                                + X_09,02_06 + X_10,02_02 + X_10,02_03
                                + X_10,02_04 + X_10,02_05 + X_10,02_06
                                - RgRunway_Occupation_RW_2_t_1940  = 0
 Runway_Occupation_RW_1_t_1960: X_05,01_04 + X_05,01_05 + X_05,01_06
                                + X_09,02_06 + X_10,02_02 + X_10,02_03
                                + X_10,02_04 + X_10,02_05 + X_10,02_06
                                - RgRunway_Occupation_RW_1_t_1960  = 0
 Runway_Occupation_RW_2_t_1960: X_05,01_03 + X_05,01_04 + X_05,01_05
                                + X_05,01_06 + X_06,01_01 + X_06,01_07
                                + X_10,02_03 + X_10,02_04 + X_10,02_05
                                + X_10,02_06 - RgRunway_Occupation_RW_2_t_1960
                                 = 0
 Runway_Occupation_RW_1_t_1980: X_05,01_05 + X_05,01_06 + X_06,01_07
                                + X_10,02_03 + X_10,02_04 + X_10,02_05
                                + X_10,02_06 - RgRunway_Occupation_RW_1_t_1980
                                 = 0
 Runway_Occupation_RW_2_t_1980: X_05,01_04 + X_05,01_05 + X_05,01_06
                                + X_06,01_01 + X_06,01_02 + X_06,01_07
                                + X_10,02_04 + X_10,02_05 + X_10,02_06
                                - RgRunway_Occupation_RW_2_t_1980  = 0
 Runway_Occupation_RW_1_t_2000: X_05,01_06 + X_06,01_01 + X_06,01_07
                                + X_10,02_04 + X_10,02_05 + X_10,02_06
                                - RgRunway_Occupation_RW_1_t_2000  = 0
 Runway_Occupation_RW_2_t_2000: X_05,01_05 + X_05,01_06 + X_06,01_01
                                + X_06,01_02 + X_06,01_03 + X_06,01_07
                                + X_10,02_05 + X_10,02_06
                                - RgRunway_Occupation_RW_2_t_2000  = 0
 Runway_Occupation_RW_1_t_2020: X_06,01_01 + X_06,01_02 + X_06,01_07
                                + X_10,02_05 + X_10,02_06
                                - RgRunway_Occupation_RW_1_t_2020  = 0
 Runway_Occupation_RW_2_t_2020: X_05,01_06 + X_06,01_01 + X_06,01_02
                                + X_06,01_03 + X_06,01_04 + X_06,01_07
                                + X_07,01_07 + X_10,02_06
                                - RgRunway_Occupation_RW_2_t_2020  = 0
 Runway_Occupation_RW_1_t_2040: X_06,01_01 + X_06,01_02 + X_06,01_03
                                + X_06,01_07 + X_10,02_06
                                - RgRunway_Occupation_RW_1_t_2040  = 0
 Runway_Occupation_RW_2_t_2040: X_06,01_01 + X_06,01_02 + X_06,01_03
                                + X_06,01_04 + X_06,01_05 + X_06,01_07
                                + X_07,01_01 + X_07,01_07
                                - RgRunway_Occupation_RW_2_t_2040  = 0
 Runway_Occupation_RW_1_t_2060: X_06,01_01 + X_06,01_02 + X_06,01_03
                                + X_06,01_04 + X_06,01_07 + X_07,01_07
                                - RgRunway_Occupation_RW_1_t_2060  = 0
 Runway_Occupation_RW_2_t_2060: X_06,01_01 + X_06,01_02 + X_06,01_03
                                + X_06,01_04 + X_06,01_05 + X_06,01_06
                                + X_06,01_07 + X_07,01_01 + X_07,01_02
                                + X_07,01_07 - RgRunway_Occupation_RW_2_t_2060
                                 = 0
 Runway_Occupation_RW_1_t_2080: X_06,01_01 + X_06,01_02 + X_06,01_03
                                + X_06,01_04 + X_06,01_05 + X_07,01_01
                                + X_07,01_07 - RgRunway_Occupation_RW_1_t_2080
                                 = 0
 Runway_Occupation_RW_2_t_2080: X_06,01_01 + X_06,01_02 + X_06,01_03
                                + X_06,01_04 + X_06,01_05 + X_06,01_06
                                + X_06,01_07 + X_07,01_01 + X_07,01_02
                                + X_07,01_03 + X_07,01_07
                                - RgRunway_Occupation_RW_2_t_2080  = 0
 Runway_Occupation_RW_1_t_2100: X_06,01_02 + X_06,01_03 + X_06,01_04
                                + X_06,01_05 + X_06,01_06 + X_07,01_01
                                + X_07,01_02 + X_07,01_07
                                - RgRunway_Occupation_RW_1_t_2100  = 0
 Runway_Occupation_RW_2_t_2100: X_06,01_01 + X_06,01_02 + X_06,01_03
                                + X_06,01_04 + X_06,01_05 + X_06,01_06
                                + X_07,01_01 + X_07,01_02 + X_07,01_03
                                + X_07,01_04 + X_07,01_07
                                - RgRunway_Occupation_RW_2_t_2100  = 0
 Runway_Occupation_RW_1_t_2120: X_06,01_03 + X_06,01_04 + X_06,01_05
                                + X_06,01_06 + X_07,01_01 + X_07,01_02
                                + X_07,01_03 + X_07,01_07
                                - RgRunway_Occupation_RW_1_t_2120  = 0
 Runway_Occupation_RW_2_t_2120: X_06,01_02 + X_06,01_03 + X_06,01_04
                                + X_06,01_05 + X_06,01_06 + X_07,01_01
                                + X_07,01_02 + X_07,01_03 + X_07,01_04
                                + X_07,01_05 + X_07,01_07 + X_08,01_07
                                - RgRunway_Occupation_RW_2_t_2120  = 0
 Runway_Occupation_RW_1_t_2140: X_06,01_04 + X_06,01_05 + X_06,01_06
                                + X_07,01_01 + X_07,01_02 + X_07,01_03
                                + X_07,01_04 + X_07,01_07
                                - RgRunway_Occupation_RW_1_t_2140  = 0
 Runway_Occupation_RW_2_t_2140: X_06,01_03 + X_06,01_04 + X_06,01_05
                                + X_06,01_06 + X_07,01_01 + X_07,01_02
                                + X_07,01_03 + X_07,01_04 + X_07,01_05
                                + X_07,01_06 + X_07,01_07 + X_08,01_01
                                + X_08,01_07 - RgRunway_Occupation_RW_2_t_2140
                                 = 0
 Runway_Occupation_RW_1_t_2160: X_06,01_05 + X_06,01_06 + X_07,01_01
                                + X_07,01_02 + X_07,01_03 + X_07,01_04
                                + X_07,01_05 + X_07,01_07 + X_08,01_07
                                - RgRunway_Occupation_RW_1_t_2160  = 0
 Runway_Occupation_RW_2_t_2160: X_06,01_04 + X_06,01_05 + X_06,01_06
                                + X_07,01_01 + X_07,01_02 + X_07,01_03
                                + X_07,01_04 + X_07,01_05 + X_07,01_06
                                + X_07,01_07 + X_08,01_01 + X_08,01_02
                                + X_08,01_07 - RgRunway_Occupation_RW_2_t_2160
                                 = 0
 Runway_Occupation_RW_1_t_2180: X_06,01_06 + X_07,01_01 + X_07,01_02
                                + X_07,01_03 + X_07,01_04 + X_07,01_05
                                + X_07,01_06 + X_08,01_01 + X_08,01_07
                                - RgRunway_Occupation_RW_1_t_2180  = 0
 Runway_Occupation_RW_2_t_2180: X_06,01_05 + X_06,01_06 + X_07,01_01
                                + X_07,01_02 + X_07,01_03 + X_07,01_04
                                + X_07,01_05 + X_07,01_06 + X_07,01_07
                                + X_08,01_01 + X_08,01_02 + X_08,01_03
                                + X_08,01_07 - RgRunway_Occupation_RW_2_t_2180
                                 = 0
 Runway_Occupation_RW_1_t_2200: X_07,01_02 + X_07,01_03 + X_07,01_04
                                + X_07,01_05 + X_07,01_06 + X_08,01_01
                                + X_08,01_02 + X_08,01_07
                                - RgRunway_Occupation_RW_1_t_2200  = 0
 Runway_Occupation_RW_2_t_2200: X_06,01_06 + X_07,01_01 + X_07,01_02
                                + X_07,01_03 + X_07,01_04 + X_07,01_05
                                + X_07,01_06 + X_08,01_01 + X_08,01_02
                                + X_08,01_03 + X_08,01_04 + X_08,01_07
                                - RgRunway_Occupation_RW_2_t_2200  = 0
 Runway_Occupation_RW_1_t_2220: X_07,01_03 + X_07,01_04 + X_07,01_05
                                + X_07,01_06 + X_08,01_01 + X_08,01_02
                                + X_08,01_03 + X_08,01_07
                                - RgRunway_Occupation_RW_1_t_2220  = 0
 Runway_Occupation_RW_2_t_2220: X_07,01_02 + X_07,01_03 + X_07,01_04
                                + X_07,01_05 + X_07,01_06 + X_08,01_01
                                + X_08,01_02 + X_08,01_03 + X_08,01_04
                                + X_08,01_05 + X_08,01_07
                                - RgRunway_Occupation_RW_2_t_2220  = 0
 Runway_Occupation_RW_1_t_2240: X_07,01_04 + X_07,01_05 + X_07,01_06
                                + X_08,01_01 + X_08,01_02 + X_08,01_03
                                + X_08,01_04 + X_08,01_07
                                - RgRunway_Occupation_RW_1_t_2240  = 0
 Runway_Occupation_RW_2_t_2240: X_07,01_03 + X_07,01_04 + X_07,01_05
                                + X_07,01_06 + X_08,01_01 + X_08,01_02
                                + X_08,01_03 + X_08,01_04 + X_08,01_05
                                + X_08,01_06 + X_08,01_07
                                - RgRunway_Occupation_RW_2_t_2240  = 0
 Runway_Occupation_RW_1_t_2260: X_07,01_05 + X_07,01_06 + X_08,01_01
                                + X_08,01_02 + X_08,01_03 + X_08,01_04
                                + X_08,01_05 + X_08,01_07
                                - RgRunway_Occupation_RW_1_t_2260  = 0
 Runway_Occupation_RW_2_t_2260: X_07,01_04 + X_07,01_05 + X_07,01_06
                                + X_08,01_01 + X_08,01_02 + X_08,01_03
                                + X_08,01_04 + X_08,01_05 + X_08,01_06
                                + X_08,01_07 - RgRunway_Occupation_RW_2_t_2260
                                 = 0
 Runway_Occupation_RW_1_t_2280: X_07,01_06 + X_08,01_01 + X_08,01_02
                                + X_08,01_03 + X_08,01_04 + X_08,01_05
                                + X_08,01_06 - RgRunway_Occupation_RW_1_t_2280
                                 = 0
 Runway_Occupation_RW_2_t_2280: X_07,01_05 + X_07,01_06 + X_08,01_01
                                + X_08,01_02 + X_08,01_03 + X_08,01_04
                                + X_08,01_05 + X_08,01_06 + X_08,01_07
                                - RgRunway_Occupation_RW_2_t_2280  = 0
 Runway_Occupation_RW_1_t_2300: X_08,01_02 + X_08,01_03 + X_08,01_04
                                + X_08,01_05 + X_08,01_06
                                - RgRunway_Occupation_RW_1_t_2300  = 0
 Runway_Occupation_RW_2_t_2300: X_07,01_06 + X_08,01_01 + X_08,01_02
                                + X_08,01_03 + X_08,01_04 + X_08,01_05
                                + X_08,01_06 - RgRunway_Occupation_RW_2_t_2300
                                 = 0
 Runway_Occupation_RW_1_t_2320: X_08,01_03 + X_08,01_04 + X_08,01_05
                                + X_08,01_06 - RgRunway_Occupation_RW_1_t_2320
                                 = 0
 Runway_Occupation_RW_2_t_2320: X_08,01_02 + X_08,01_03 + X_08,01_04
                                + X_08,01_05 + X_08,01_06
                                - RgRunway_Occupation_RW_2_t_2320  = 0
 Runway_Occupation_RW_1_t_2340: X_08,01_04 + X_08,01_05 + X_08,01_06
                                - RgRunway_Occupation_RW_1_t_2340  = 0
 Runway_Occupation_RW_2_t_2340: X_08,01_03 + X_08,01_04 + X_08,01_05
                                + X_08,01_06 - RgRunway_Occupation_RW_2_t_2340
                                 = 0
 Runway_Occupation_RW_1_t_2360: X_08,01_05 + X_08,01_06
                                - RgRunway_Occupation_RW_1_t_2360  = 0
 Runway_Occupation_RW_2_t_2360: X_08,01_04 + X_08,01_05 + X_08,01_06
                                + X_09,01_07 - RgRunway_Occupation_RW_2_t_2360
                                 = 0
 Runway_Occupation_RW_1_t_2380: X_08,01_06 - RgRunway_Occupation_RW_1_t_2380
                                 = 0
 Runway_Occupation_RW_2_t_2380: X_08,01_05 + X_08,01_06 + X_09,01_01
                                + X_09,01_07 - RgRunway_Occupation_RW_2_t_2380
                                 = 0
 Runway_Occupation_RW_1_t_2400: X_09,01_07 - RgRunway_Occupation_RW_1_t_2400
                                 = 0
 Runway_Occupation_RW_2_t_2400: X_08,01_06 + X_09,01_01 + X_09,01_02
                                + X_09,01_07 - RgRunway_Occupation_RW_2_t_2400
                                 = 0
 Runway_Occupation_RW_1_t_2420: X_09,01_01 + X_09,01_07
                                - RgRunway_Occupation_RW_1_t_2420  = 0
 Runway_Occupation_RW_2_t_2420: X_09,01_01 + X_09,01_02 + X_09,01_03
                                + X_09,01_07 - RgRunway_Occupation_RW_2_t_2420
                                 = 0
 Runway_Occupation_RW_1_t_2440: X_09,01_01 + X_09,01_02 + X_09,01_07
                                - RgRunway_Occupation_RW_1_t_2440  = 0
 Runway_Occupation_RW_2_t_2440: X_09,01_01 + X_09,01_02 + X_09,01_03
                                + X_09,01_04 + X_09,01_07 + X_10,01_07
                                - RgRunway_Occupation_RW_2_t_2440  = 0
 Runway_Occupation_RW_1_t_2460: X_09,01_01 + X_09,01_02 + X_09,01_03
                                + X_09,01_07 - RgRunway_Occupation_RW_1_t_2460
                                 = 0
 Runway_Occupation_RW_2_t_2460: X_09,01_01 + X_09,01_02 + X_09,01_03
                                + X_09,01_04 + X_09,01_05 + X_09,01_07
                                + X_10,01_01 + X_10,01_07
                                - RgRunway_Occupation_RW_2_t_2460  = 0
 Runway_Occupation_RW_1_t_2480: X_09,01_01 + X_09,01_02 + X_09,01_03
                                + X_09,01_04 + X_09,01_07 + X_10,01_07
                                - RgRunway_Occupation_RW_1_t_2480  = 0
 Runway_Occupation_RW_2_t_2480: X_09,01_01 + X_09,01_02 + X_09,01_03
                                + X_09,01_04 + X_09,01_05 + X_09,01_06
                                + X_09,01_07 + X_10,01_01 + X_10,01_02
                                + X_10,01_07 - RgRunway_Occupation_RW_2_t_2480
                                 = 0
 Runway_Occupation_RW_1_t_2500: X_09,01_01 + X_09,01_02 + X_09,01_03
                                + X_09,01_04 + X_09,01_05 + X_10,01_01
                                + X_10,01_07 - RgRunway_Occupation_RW_1_t_2500
                                 = 0
 Runway_Occupation_RW_2_t_2500: X_09,01_01 + X_09,01_02 + X_09,01_03
                                + X_09,01_04 + X_09,01_05 + X_09,01_06
                                + X_09,01_07 + X_10,01_01 + X_10,01_02
                                + X_10,01_03 + X_10,01_07
                                - RgRunway_Occupation_RW_2_t_2500  = 0
 Runway_Occupation_RW_1_t_2520: X_09,01_02 + X_09,01_03 + X_09,01_04
                                + X_09,01_05 + X_09,01_06 + X_10,01_01
                                + X_10,01_02 + X_10,01_07
                                - RgRunway_Occupation_RW_1_t_2520  = 0
 Runway_Occupation_RW_2_t_2520: X_09,01_01 + X_09,01_02 + X_09,01_03
                                + X_09,01_04 + X_09,01_05 + X_09,01_06
                                + X_10,01_01 + X_10,01_02 + X_10,01_03
                                + X_10,01_04 + X_10,01_07
                                - RgRunway_Occupation_RW_2_t_2520  = 0
 Runway_Occupation_RW_1_t_2540: X_09,01_03 + X_09,01_04 + X_09,01_05
                                + X_09,01_06 + X_10,01_01 + X_10,01_02
                                + X_10,01_03 + X_10,01_07
                                - RgRunway_Occupation_RW_1_t_2540  = 0
 Runway_Occupation_RW_2_t_2540: X_09,01_02 + X_09,01_03 + X_09,01_04
                                + X_09,01_05 + X_09,01_06 + X_10,01_01
                                + X_10,01_02 + X_10,01_03 + X_10,01_04
                                + X_10,01_05 + X_10,01_07
                                - RgRunway_Occupation_RW_2_t_2540  = 0
 Runway_Occupation_RW_1_t_2560: X_09,01_04 + X_09,01_05 + X_09,01_06
                                + X_10,01_01 + X_10,01_02 + X_10,01_03
                                + X_10,01_04 + X_10,01_07
                                - RgRunway_Occupation_RW_1_t_2560  = 0
 Runway_Occupation_RW_2_t_2560: X_09,01_03 + X_09,01_04 + X_09,01_05
                                + X_09,01_06 + X_10,01_01 + X_10,01_02
                                + X_10,01_03 + X_10,01_04 + X_10,01_05
                                + X_10,01_06 + X_10,01_07
                                - RgRunway_Occupation_RW_2_t_2560  = 0
 Runway_Occupation_RW_1_t_2580: X_09,01_05 + X_09,01_06 + X_10,01_01
                                + X_10,01_02 + X_10,01_03 + X_10,01_04
                                + X_10,01_05 - RgRunway_Occupation_RW_1_t_2580
                                 = 0
 Runway_Occupation_RW_2_t_2580: X_09,01_04 + X_09,01_05 + X_09,01_06
                                + X_10,01_01 + X_10,01_02 + X_10,01_03
                                + X_10,01_04 + X_10,01_05 + X_10,01_06
                                + X_10,01_07 - RgRunway_Occupation_RW_2_t_2580
                                 = 0
 Runway_Occupation_RW_1_t_2600: X_09,01_06 + X_10,01_02 + X_10,01_03
                                + X_10,01_04 + X_10,01_05 + X_10,01_06
                                - RgRunway_Occupation_RW_1_t_2600  = 0
 Runway_Occupation_RW_2_t_2600: X_09,01_05 + X_09,01_06 + X_10,01_01
                                + X_10,01_02 + X_10,01_03 + X_10,01_04
                                + X_10,01_05 + X_10,01_06
                                - RgRunway_Occupation_RW_2_t_2600  = 0
 Runway_Occupation_RW_1_t_2620: X_10,01_03 + X_10,01_04 + X_10,01_05
                                + X_10,01_06 - RgRunway_Occupation_RW_1_t_2620
                                 = 0
 Runway_Occupation_RW_2_t_2620: X_09,01_06 + X_10,01_02 + X_10,01_03
                                + X_10,01_04 + X_10,01_05 + X_10,01_06
                                - RgRunway_Occupation_RW_2_t_2620  = 0
 NLSC_1:                        316227766.016838 X_01,01_01
                                + 316227766.016838 X_01,01_02
                                + 316227766.016838 X_01,01_03
                                + 316227766.016838 X_01,01_04
                                + 316227766.016838 X_01,01_05
                                + 316227766.016838 X_01,01_06
                                + 316227766.016838 X_01,01_07
                                + 316227766.016838 X_02,01_01
                                + 316227766.016838 X_02,01_02
                                + 316227766.016838 X_02,01_03
                                + 316227766.016838 X_02,01_04
                                + 316227766.016838 X_02,01_05
                                + 316227766.016838 X_02,01_06
                                + 316227766.016838 X_02,01_07
                                + 316227766.016838 X_03,01_01
                                + 316227766.016838 X_03,01_02
                                + 316227766.016838 X_03,01_03
                                + 316227766.016838 X_03,01_04
                                + 316227766.016838 X_03,01_05
                                + 316227766.016838 X_03,01_06
                                + 316227766.016838 X_03,01_07
                                + 316227766.016838 X_04,01_01
                                + 316227766.016838 X_04,01_02
                                + 316227766.016838 X_04,01_03
                                + 316227766.016838 X_04,01_04
                                + 316227766.016838 X_04,01_05
                                + 316227766.016838 X_04,01_06
                                + 316227766.016838 X_04,01_07
                                + 316227766.016838 X_05,01_01
                                + 316227766.016838 X_05,01_02
                                + 316227766.016838 X_05,01_03
                                + 316227766.016838 X_05,01_04
                                + 316227766.016838 X_05,01_05
                                + 316227766.016838 X_05,01_06
                                + 316227766.016838 X_05,01_07
                                + 316227766.016838 X_06,01_01
                                + 316227766.016838 X_06,01_02
                                + 316227766.016838 X_06,01_03
                                + 316227766.016838 X_06,01_04
                                + 316227766.016838 X_06,01_05
                                + 316227766.016838 X_06,01_06
                                + 316227766.016838 X_06,01_07
                                + 316227766.016838 X_07,01_01
                                + 316227766.016838 X_07,01_02
                                + 316227766.016838 X_07,01_03
                                + 316227766.016838 X_07,01_04
                                + 316227766.016838 X_07,01_05
                                + 316227766.016838 X_07,01_06
                                + 316227766.016838 X_07,01_07
                                + 316227766.016838 X_08,01_01
                                + 316227766.016838 X_08,01_02
                                + 316227766.016838 X_08,01_03
                                + 316227766.016838 X_08,01_04
                                + 316227766.016838 X_08,01_05
                                + 316227766.016838 X_08,01_06
                                + 316227766.016838 X_08,01_07
                                + 316227766.016838 X_09,01_01
                                + 316227766.016838 X_09,01_02
                                + 316227766.016838 X_09,01_03
                                + 316227766.016838 X_09,01_04
                                + 316227766.016838 X_09,01_05
                                + 316227766.016838 X_09,01_06
                                + 316227766.016838 X_09,01_07
                                + 316227766.016838 X_10,01_01
                                + 316227766.016838 X_10,01_02
                                + 316227766.016838 X_10,01_03
                                + 316227766.016838 X_10,01_04
                                + 316227766.016838 X_10,01_05
                                + 316227766.016838 X_10,01_06
                                + 316227766.016838 X_10,01_07
                                - 3162277660.16838 G_00,01_00 - RgNLSC_1  = 0
 NLSC_2:                        316227766.016838 X_01,02_01
                                + 316227766.016838 X_01,02_02
                                + 316227766.016838 X_01,02_03
                                + 316227766.016838 X_01,02_04
                                + 316227766.016838 X_01,02_05
                                + 316227766.016838 X_01,02_06
                                + 316227766.016838 X_01,02_07
                                + 316227766.016838 X_02,02_01
                                + 316227766.016838 X_02,02_02
                                + 316227766.016838 X_02,02_03
                                + 316227766.016838 X_02,02_04
                                + 316227766.016838 X_02,02_05
                                + 316227766.016838 X_02,02_06
                                + 316227766.016838 X_02,02_07
                                + 316227766.016838 X_03,02_01
                                + 316227766.016838 X_03,02_02
                                + 316227766.016838 X_03,02_03
                                + 316227766.016838 X_03,02_04
                                + 316227766.016838 X_03,02_05
                                + 316227766.016838 X_03,02_06
                                + 316227766.016838 X_03,02_07
                                + 316227766.016838 X_04,02_01
                                + 316227766.016838 X_04,02_02
                                + 316227766.016838 X_04,02_03
                                + 316227766.016838 X_04,02_04
                                + 316227766.016838 X_04,02_05
                                + 316227766.016838 X_04,02_06
                                + 316227766.016838 X_04,02_07
                                + 316227766.016838 X_05,02_01
                                + 316227766.016838 X_05,02_02
                                + 316227766.016838 X_05,02_03
                                + 316227766.016838 X_05,02_04
                                + 316227766.016838 X_05,02_05
                                + 316227766.016838 X_05,02_06
                                + 316227766.016838 X_05,02_07
                                + 316227766.016838 X_06,02_01
                                + 316227766.016838 X_06,02_02
                                + 316227766.016838 X_06,02_03
                                + 316227766.016838 X_06,02_04
                                + 316227766.016838 X_06,02_05
                                + 316227766.016838 X_06,02_06
                                + 316227766.016838 X_06,02_07
                                + 316227766.016838 X_07,02_01
                                + 316227766.016838 X_07,02_02
                                + 316227766.016838 X_07,02_03
                                + 316227766.016838 X_07,02_04
                                + 316227766.016838 X_07,02_05
                                + 316227766.016838 X_07,02_06
                                + 316227766.016838 X_07,02_07
                                + 316227766.016838 X_08,02_01
                                + 316227766.016838 X_08,02_02
                                + 316227766.016838 X_08,02_03
                                + 316227766.016838 X_08,02_04
                                + 316227766.016838 X_08,02_05
                                + 316227766.016838 X_08,02_06
                                + 316227766.016838 X_08,02_07
                                + 316227766.016838 X_09,02_01
                                + 316227766.016838 X_09,02_02
                                + 316227766.016838 X_09,02_03
                                + 316227766.016838 X_09,02_04
                                + 316227766.016838 X_09,02_05
                                + 316227766.016838 X_09,02_06
                                + 316227766.016838 X_09,02_07
                                + 316227766.016838 X_10,02_01
                                + 316227766.016838 X_10,02_02
                                + 316227766.016838 X_10,02_03
                                + 316227766.016838 X_10,02_04
                                + 316227766.016838 X_10,02_05
                                + 316227766.016838 X_10,02_06
                                + 316227766.016838 X_10,02_07
                                - 3162277660.16838 G_00,02_00 - RgNLSC_2  = 0
Bounds
 0 <= X_01,01_01 <= Inf
 0 <= X_01,01_02 <= Inf
 0 <= X_01,01_03 <= Inf
 0 <= X_01,01_04 <= Inf
 0 <= X_01,01_05 <= Inf
 0 <= X_01,01_06 <= Inf
 0 <= X_01,01_07 <= Inf
 0 <= X_01,02_01 <= Inf
 0 <= X_01,02_02 <= Inf
 0 <= X_01,02_03 <= Inf
 0 <= X_01,02_04 <= Inf
 0 <= X_01,02_05 <= Inf
 0 <= X_01,02_06 <= Inf
 0 <= X_01,02_07 <= Inf
 0 <= X_02,01_01 <= Inf
 0 <= X_02,01_02 <= Inf
 0 <= X_02,01_03 <= Inf
 0 <= X_02,01_04 <= Inf
 0 <= X_02,01_05 <= Inf
 0 <= X_02,01_06 <= Inf
 0 <= X_02,01_07 <= Inf
 0 <= X_02,02_01 <= Inf
 0 <= X_02,02_02 <= Inf
 0 <= X_02,02_03 <= Inf
 0 <= X_02,02_04 <= Inf
 0 <= X_02,02_05 <= Inf
 0 <= X_02,02_06 <= Inf
 0 <= X_02,02_07 <= Inf
 0 <= X_03,01_01 <= Inf
 0 <= X_03,01_02 <= Inf
 0 <= X_03,01_03 <= Inf
 0 <= X_03,01_04 <= Inf
 0 <= X_03,01_05 <= Inf
 0 <= X_03,01_06 <= Inf
 0 <= X_03,01_07 <= Inf
 0 <= X_03,02_01 <= Inf
 0 <= X_03,02_02 <= Inf
 0 <= X_03,02_03 <= Inf
 0 <= X_03,02_04 <= Inf
 0 <= X_03,02_05 <= Inf
 0 <= X_03,02_06 <= Inf
 0 <= X_03,02_07 <= Inf
 0 <= X_04,01_01 <= Inf
 0 <= X_04,01_02 <= Inf
 0 <= X_04,01_03 <= Inf
 0 <= X_04,01_04 <= Inf
 0 <= X_04,01_05 <= Inf
 0 <= X_04,01_06 <= Inf
 0 <= X_04,01_07 <= Inf
 0 <= X_04,02_01 <= Inf
 0 <= X_04,02_02 <= Inf
 0 <= X_04,02_03 <= Inf
 0 <= X_04,02_04 <= Inf
 0 <= X_04,02_05 <= Inf
 0 <= X_04,02_06 <= Inf
 0 <= X_04,02_07 <= Inf
 0 <= X_05,01_01 <= Inf
 0 <= X_05,01_02 <= Inf
 0 <= X_05,01_03 <= Inf
 0 <= X_05,01_04 <= Inf
 0 <= X_05,01_05 <= Inf
 0 <= X_05,01_06 <= Inf
 0 <= X_05,01_07 <= Inf
 0 <= X_05,02_01 <= Inf
 0 <= X_05,02_02 <= Inf
 0 <= X_05,02_03 <= Inf
 0 <= X_05,02_04 <= Inf
 0 <= X_05,02_05 <= Inf
 0 <= X_05,02_06 <= Inf
 0 <= X_05,02_07 <= Inf
 0 <= X_06,01_01 <= Inf
 0 <= X_06,01_02 <= Inf
 0 <= X_06,01_03 <= Inf
 0 <= X_06,01_04 <= Inf
 0 <= X_06,01_05 <= Inf
 0 <= X_06,01_06 <= Inf
 0 <= X_06,01_07 <= Inf
 0 <= X_06,02_01 <= Inf
 0 <= X_06,02_02 <= Inf
 0 <= X_06,02_03 <= Inf
 0 <= X_06,02_04 <= Inf
 0 <= X_06,02_05 <= Inf
 0 <= X_06,02_06 <= Inf
 0 <= X_06,02_07 <= Inf
 0 <= X_07,01_01 <= Inf
 0 <= X_07,01_02 <= Inf
 0 <= X_07,01_03 <= Inf
 0 <= X_07,01_04 <= Inf
 0 <= X_07,01_05 <= Inf
 0 <= X_07,01_06 <= Inf
 0 <= X_07,01_07 <= Inf
 0 <= X_07,02_01 <= Inf
 0 <= X_07,02_02 <= Inf
 0 <= X_07,02_03 <= Inf
 0 <= X_07,02_04 <= Inf
 0 <= X_07,02_05 <= Inf
 0 <= X_07,02_06 <= Inf
 0 <= X_07,02_07 <= Inf
 0 <= X_08,01_01 <= Inf
 0 <= X_08,01_02 <= Inf
 0 <= X_08,01_03 <= Inf
 0 <= X_08,01_04 <= Inf
 0 <= X_08,01_05 <= Inf
 0 <= X_08,01_06 <= Inf
 0 <= X_08,01_07 <= Inf
 0 <= X_08,02_01 <= Inf
 0 <= X_08,02_02 <= Inf
 0 <= X_08,02_03 <= Inf
 0 <= X_08,02_04 <= Inf
 0 <= X_08,02_05 <= Inf
 0 <= X_08,02_06 <= Inf
 0 <= X_08,02_07 <= Inf
 0 <= X_09,01_01 <= Inf
 0 <= X_09,01_02 <= Inf
 0 <= X_09,01_03 <= Inf
 0 <= X_09,01_04 <= Inf
 0 <= X_09,01_05 <= Inf
 0 <= X_09,01_06 <= Inf
 0 <= X_09,01_07 <= Inf
 0 <= X_09,02_01 <= Inf
 0 <= X_09,02_02 <= Inf
 0 <= X_09,02_03 <= Inf
 0 <= X_09,02_04 <= Inf
 0 <= X_09,02_05 <= Inf
 0 <= X_09,02_06 <= Inf
 0 <= X_09,02_07 <= Inf
 0 <= X_10,01_01 <= Inf
 0 <= X_10,01_02 <= Inf
 0 <= X_10,01_03 <= Inf
 0 <= X_10,01_04 <= Inf
 0 <= X_10,01_05 <= Inf
 0 <= X_10,01_06 <= Inf
 0 <= X_10,01_07 <= Inf
 0 <= X_10,02_01 <= Inf
 0 <= X_10,02_02 <= Inf
 0 <= X_10,02_03 <= Inf
 0 <= X_10,02_04 <= Inf
 0 <= X_10,02_05 <= Inf
 0 <= X_10,02_06 <= Inf
 0 <= X_10,02_07 <= Inf
 0 <= G_00,01_00 <= Inf
 0 <= G_00,02_00 <= Inf
 0 <= RgRunway_Occupation_RW_1_t_500 <= 1
 0 <= RgRunway_Occupation_RW_2_t_500 <= 1
 0 <= RgRunway_Occupation_RW_1_t_520 <= 1
 0 <= RgRunway_Occupation_RW_2_t_520 <= 1
 0 <= RgRunway_Occupation_RW_1_t_540 <= 1
 0 <= RgRunway_Occupation_RW_2_t_540 <= 1
 0 <= RgRunway_Occupation_RW_1_t_560 <= 1
 0 <= RgRunway_Occupation_RW_2_t_560 <= 1
 0 <= RgRunway_Occupation_RW_1_t_580 <= 1
 0 <= RgRunway_Occupation_RW_2_t_580 <= 1
 0 <= RgRunway_Occupation_RW_1_t_600 <= 1
 0 <= RgRunway_Occupation_RW_2_t_600 <= 1
 0 <= RgRunway_Occupation_RW_1_t_620 <= 1
 0 <= RgRunway_Occupation_RW_2_t_620 <= 1
 0 <= RgRunway_Occupation_RW_1_t_640 <= 1
 0 <= RgRunway_Occupation_RW_2_t_640 <= 1
 0 <= RgRunway_Occupation_RW_1_t_660 <= 1
 0 <= RgRunway_Occupation_RW_2_t_660 <= 1
 0 <= RgRunway_Occupation_RW_1_t_680 <= 1
 0 <= RgRunway_Occupation_RW_2_t_680 <= 1
 0 <= RgRunway_Occupation_RW_1_t_700 <= 1
 0 <= RgRunway_Occupation_RW_2_t_700 <= 1
 0 <= RgRunway_Occupation_RW_1_t_720 <= 1
 0 <= RgRunway_Occupation_RW_2_t_720 <= 1
 0 <= RgRunway_Occupation_RW_1_t_740 <= 1
 0 <= RgRunway_Occupation_RW_2_t_740 <= 1
 0 <= RgRunway_Occupation_RW_1_t_760 <= 1
 0 <= RgRunway_Occupation_RW_2_t_760 <= 1
 0 <= RgRunway_Occupation_RW_1_t_780 <= 1
 0 <= RgRunway_Occupation_RW_2_t_780 <= 1
 0 <= RgRunway_Occupation_RW_1_t_800 <= 1
 0 <= RgRunway_Occupation_RW_2_t_800 <= 1
 0 <= RgRunway_Occupation_RW_1_t_820 <= 1
 0 <= RgRunway_Occupation_RW_2_t_820 <= 1
 0 <= RgRunway_Occupation_RW_1_t_840 <= 1
 0 <= RgRunway_Occupation_RW_2_t_840 <= 1
 0 <= RgRunway_Occupation_RW_1_t_860 <= 1
 0 <= RgRunway_Occupation_RW_2_t_860 <= 1
 0 <= RgRunway_Occupation_RW_1_t_880 <= 1
 0 <= RgRunway_Occupation_RW_2_t_880 <= 1
 0 <= RgRunway_Occupation_RW_1_t_900 <= 1
 0 <= RgRunway_Occupation_RW_2_t_900 <= 1
 0 <= RgRunway_Occupation_RW_1_t_920 <= 1
 0 <= RgRunway_Occupation_RW_2_t_920 <= 1
 0 <= RgRunway_Occupation_RW_1_t_940 <= 1
 0 <= RgRunway_Occupation_RW_2_t_940 <= 1
 0 <= RgRunway_Occupation_RW_1_t_960 <= 1
 0 <= RgRunway_Occupation_RW_2_t_960 <= 1
 0 <= RgRunway_Occupation_RW_1_t_980 <= 1
 0 <= RgRunway_Occupation_RW_2_t_980 <= 1
 0 <= RgRunway_Occupation_RW_1_t_1000 <= 1
 0 <= RgRunway_Occupation_RW_2_t_1000 <= 1
 0 <= RgRunway_Occupation_RW_1_t_1020 <= 1
 0 <= RgRunway_Occupation_RW_2_t_1020 <= 1
 0 <= RgRunway_Occupation_RW_1_t_1040 <= 1
 0 <= RgRunway_Occupation_RW_2_t_1040 <= 1
 0 <= RgRunway_Occupation_RW_1_t_1060 <= 1
 0 <= RgRunway_Occupation_RW_2_t_1060 <= 1
 0 <= RgRunway_Occupation_RW_1_t_1080 <= 1
 0 <= RgRunway_Occupation_RW_2_t_1080 <= 1
 0 <= RgRunway_Occupation_RW_1_t_1100 <= 1
 0 <= RgRunway_Occupation_RW_2_t_1100 <= 1
 0 <= RgRunway_Occupation_RW_1_t_1120 <= 1
 0 <= RgRunway_Occupation_RW_2_t_1120 <= 1
 0 <= RgRunway_Occupation_RW_1_t_1140 <= 1
 0 <= RgRunway_Occupation_RW_2_t_1140 <= 1
 0 <= RgRunway_Occupation_RW_1_t_1160 <= 1
 0 <= RgRunway_Occupation_RW_2_t_1160 <= 1
 0 <= RgRunway_Occupation_RW_1_t_1180 <= 1
 0 <= RgRunway_Occupation_RW_2_t_1180 <= 1
 0 <= RgRunway_Occupation_RW_1_t_1200 <= 1
 0 <= RgRunway_Occupation_RW_2_t_1200 <= 1
 0 <= RgRunway_Occupation_RW_1_t_1220 <= 1
 0 <= RgRunway_Occupation_RW_2_t_1220 <= 1
 0 <= RgRunway_Occupation_RW_1_t_1240 <= 1
 0 <= RgRunway_Occupation_RW_2_t_1240 <= 1
 0 <= RgRunway_Occupation_RW_1_t_1260 <= 1
 0 <= RgRunway_Occupation_RW_2_t_1260 <= 1
 0 <= RgRunway_Occupation_RW_1_t_1280 <= 1
 0 <= RgRunway_Occupation_RW_2_t_1280 <= 1
 0 <= RgRunway_Occupation_RW_1_t_1300 <= 1
 0 <= RgRunway_Occupation_RW_2_t_1300 <= 1
 0 <= RgRunway_Occupation_RW_1_t_1320 <= 1
 0 <= RgRunway_Occupation_RW_2_t_1320 <= 1
 0 <= RgRunway_Occupation_RW_1_t_1340 <= 1
 0 <= RgRunway_Occupation_RW_2_t_1340 <= 1
 0 <= RgRunway_Occupation_RW_1_t_1360 <= 1
 0 <= RgRunway_Occupation_RW_2_t_1360 <= 1
 0 <= RgRunway_Occupation_RW_1_t_1380 <= 1
 0 <= RgRunway_Occupation_RW_2_t_1380 <= 1
 0 <= RgRunway_Occupation_RW_1_t_1400 <= 1
 0 <= RgRunway_Occupation_RW_2_t_1400 <= 1
 0 <= RgRunway_Occupation_RW_1_t_1420 <= 1
 0 <= RgRunway_Occupation_RW_2_t_1420 <= 1
 0 <= RgRunway_Occupation_RW_1_t_1440 <= 1
 0 <= RgRunway_Occupation_RW_2_t_1440 <= 1
 0 <= RgRunway_Occupation_RW_1_t_1460 <= 1
 0 <= RgRunway_Occupation_RW_2_t_1460 <= 1
 0 <= RgRunway_Occupation_RW_1_t_1480 <= 1
 0 <= RgRunway_Occupation_RW_2_t_1480 <= 1
 0 <= RgRunway_Occupation_RW_1_t_1500 <= 1
 0 <= RgRunway_Occupation_RW_2_t_1500 <= 1
 0 <= RgRunway_Occupation_RW_1_t_1520 <= 1
 0 <= RgRunway_Occupation_RW_2_t_1520 <= 1
 0 <= RgRunway_Occupation_RW_1_t_1540 <= 1
 0 <= RgRunway_Occupation_RW_2_t_1540 <= 1
 0 <= RgRunway_Occupation_RW_1_t_1560 <= 1
 0 <= RgRunway_Occupation_RW_2_t_1560 <= 1
 0 <= RgRunway_Occupation_RW_1_t_1580 <= 1
 0 <= RgRunway_Occupation_RW_2_t_1580 <= 1
 0 <= RgRunway_Occupation_RW_1_t_1600 <= 1
 0 <= RgRunway_Occupation_RW_2_t_1600 <= 1
 0 <= RgRunway_Occupation_RW_1_t_1620 <= 1
 0 <= RgRunway_Occupation_RW_2_t_1620 <= 1
 0 <= RgRunway_Occupation_RW_1_t_1640 <= 1
 0 <= RgRunway_Occupation_RW_2_t_1640 <= 1
 0 <= RgRunway_Occupation_RW_1_t_1660 <= 1
 0 <= RgRunway_Occupation_RW_2_t_1660 <= 1
 0 <= RgRunway_Occupation_RW_1_t_1680 <= 1
 0 <= RgRunway_Occupation_RW_2_t_1680 <= 1
 0 <= RgRunway_Occupation_RW_1_t_1700 <= 1
 0 <= RgRunway_Occupation_RW_2_t_1700 <= 1
 0 <= RgRunway_Occupation_RW_1_t_1720 <= 1
 0 <= RgRunway_Occupation_RW_2_t_1720 <= 1
 0 <= RgRunway_Occupation_RW_1_t_1740 <= 1
 0 <= RgRunway_Occupation_RW_2_t_1740 <= 1
 0 <= RgRunway_Occupation_RW_1_t_1760 <= 1
 0 <= RgRunway_Occupation_RW_2_t_1760 <= 1
 0 <= RgRunway_Occupation_RW_1_t_1780 <= 1
 0 <= RgRunway_Occupation_RW_2_t_1780 <= 1
 0 <= RgRunway_Occupation_RW_1_t_1800 <= 1
 0 <= RgRunway_Occupation_RW_2_t_1800 <= 1
 0 <= RgRunway_Occupation_RW_1_t_1820 <= 1
 0 <= RgRunway_Occupation_RW_2_t_1820 <= 1
 0 <= RgRunway_Occupation_RW_1_t_1840 <= 1
 0 <= RgRunway_Occupation_RW_2_t_1840 <= 1
 0 <= RgRunway_Occupation_RW_1_t_1860 <= 1
 0 <= RgRunway_Occupation_RW_2_t_1860 <= 1
 0 <= RgRunway_Occupation_RW_1_t_1880 <= 1
 0 <= RgRunway_Occupation_RW_2_t_1880 <= 1
 0 <= RgRunway_Occupation_RW_1_t_1900 <= 1
 0 <= RgRunway_Occupation_RW_2_t_1900 <= 1
 0 <= RgRunway_Occupation_RW_1_t_1920 <= 1
 0 <= RgRunway_Occupation_RW_2_t_1920 <= 1
 0 <= RgRunway_Occupation_RW_1_t_1940 <= 1
 0 <= RgRunway_Occupation_RW_2_t_1940 <= 1
 0 <= RgRunway_Occupation_RW_1_t_1960 <= 1
 0 <= RgRunway_Occupation_RW_2_t_1960 <= 1
 0 <= RgRunway_Occupation_RW_1_t_1980 <= 1
 0 <= RgRunway_Occupation_RW_2_t_1980 <= 1
 0 <= RgRunway_Occupation_RW_1_t_2000 <= 1
 0 <= RgRunway_Occupation_RW_2_t_2000 <= 1
 0 <= RgRunway_Occupation_RW_1_t_2020 <= 1
 0 <= RgRunway_Occupation_RW_2_t_2020 <= 1
 0 <= RgRunway_Occupation_RW_1_t_2040 <= 1
 0 <= RgRunway_Occupation_RW_2_t_2040 <= 1
 0 <= RgRunway_Occupation_RW_1_t_2060 <= 1
 0 <= RgRunway_Occupation_RW_2_t_2060 <= 1
 0 <= RgRunway_Occupation_RW_1_t_2080 <= 1
 0 <= RgRunway_Occupation_RW_2_t_2080 <= 1
 0 <= RgRunway_Occupation_RW_1_t_2100 <= 1
 0 <= RgRunway_Occupation_RW_2_t_2100 <= 1
 0 <= RgRunway_Occupation_RW_1_t_2120 <= 1
 0 <= RgRunway_Occupation_RW_2_t_2120 <= 1
 0 <= RgRunway_Occupation_RW_1_t_2140 <= 1
 0 <= RgRunway_Occupation_RW_2_t_2140 <= 1
 0 <= RgRunway_Occupation_RW_1_t_2160 <= 1
 0 <= RgRunway_Occupation_RW_2_t_2160 <= 1
 0 <= RgRunway_Occupation_RW_1_t_2180 <= 1
 0 <= RgRunway_Occupation_RW_2_t_2180 <= 1
 0 <= RgRunway_Occupation_RW_1_t_2200 <= 1
 0 <= RgRunway_Occupation_RW_2_t_2200 <= 1
 0 <= RgRunway_Occupation_RW_1_t_2220 <= 1
 0 <= RgRunway_Occupation_RW_2_t_2220 <= 1
 0 <= RgRunway_Occupation_RW_1_t_2240 <= 1
 0 <= RgRunway_Occupation_RW_2_t_2240 <= 1
 0 <= RgRunway_Occupation_RW_1_t_2260 <= 1
 0 <= RgRunway_Occupation_RW_2_t_2260 <= 1
 0 <= RgRunway_Occupation_RW_1_t_2280 <= 1
 0 <= RgRunway_Occupation_RW_2_t_2280 <= 1
 0 <= RgRunway_Occupation_RW_1_t_2300 <= 1
 0 <= RgRunway_Occupation_RW_2_t_2300 <= 1
 0 <= RgRunway_Occupation_RW_1_t_2320 <= 1
 0 <= RgRunway_Occupation_RW_2_t_2320 <= 1
 0 <= RgRunway_Occupation_RW_1_t_2340 <= 1
 0 <= RgRunway_Occupation_RW_2_t_2340 <= 1
 0 <= RgRunway_Occupation_RW_1_t_2360 <= 1
 0 <= RgRunway_Occupation_RW_2_t_2360 <= 1
 0 <= RgRunway_Occupation_RW_1_t_2380 <= 1
 0 <= RgRunway_Occupation_RW_2_t_2380 <= 1
 0 <= RgRunway_Occupation_RW_1_t_2400 <= 1
 0 <= RgRunway_Occupation_RW_2_t_2400 <= 1
 0 <= RgRunway_Occupation_RW_1_t_2420 <= 1
 0 <= RgRunway_Occupation_RW_2_t_2420 <= 1
 0 <= RgRunway_Occupation_RW_1_t_2440 <= 1
 0 <= RgRunway_Occupation_RW_2_t_2440 <= 1
 0 <= RgRunway_Occupation_RW_1_t_2460 <= 1
 0 <= RgRunway_Occupation_RW_2_t_2460 <= 1
 0 <= RgRunway_Occupation_RW_1_t_2480 <= 1
 0 <= RgRunway_Occupation_RW_2_t_2480 <= 1
 0 <= RgRunway_Occupation_RW_1_t_2500 <= 1
 0 <= RgRunway_Occupation_RW_2_t_2500 <= 1
 0 <= RgRunway_Occupation_RW_1_t_2520 <= 1
 0 <= RgRunway_Occupation_RW_2_t_2520 <= 1
 0 <= RgRunway_Occupation_RW_1_t_2540 <= 1
 0 <= RgRunway_Occupation_RW_2_t_2540 <= 1
 0 <= RgRunway_Occupation_RW_1_t_2560 <= 1
 0 <= RgRunway_Occupation_RW_2_t_2560 <= 1
 0 <= RgRunway_Occupation_RW_1_t_2580 <= 1
 0 <= RgRunway_Occupation_RW_2_t_2580 <= 1
 0 <= RgRunway_Occupation_RW_1_t_2600 <= 1
 0 <= RgRunway_Occupation_RW_2_t_2600 <= 1
 0 <= RgRunway_Occupation_RW_1_t_2620 <= 1
 0 <= RgRunway_Occupation_RW_2_t_2620 <= 1
 0 <= RgNLSC_1 <= 2000000000
 0 <= RgNLSC_2 <= 2000000000
Binaries
 X_01,01_01  X_01,01_02  X_01,01_03  X_01,01_04  X_01,01_05  X_01,01_06 
 X_01,01_07  X_01,02_01  X_01,02_02  X_01,02_03  X_01,02_04  X_01,02_05 
 X_01,02_06  X_01,02_07  X_02,01_01  X_02,01_02  X_02,01_03  X_02,01_04 
 X_02,01_05  X_02,01_06  X_02,01_07  X_02,02_01  X_02,02_02  X_02,02_03 
 X_02,02_04  X_02,02_05  X_02,02_06  X_02,02_07  X_03,01_01  X_03,01_02 
 X_03,01_03  X_03,01_04  X_03,01_05  X_03,01_06  X_03,01_07  X_03,02_01 
 X_03,02_02  X_03,02_03  X_03,02_04  X_03,02_05  X_03,02_06  X_03,02_07 
 X_04,01_01  X_04,01_02  X_04,01_03  X_04,01_04  X_04,01_05  X_04,01_06 
 X_04,01_07  X_04,02_01  X_04,02_02  X_04,02_03  X_04,02_04  X_04,02_05 
 X_04,02_06  X_04,02_07  X_05,01_01  X_05,01_02  X_05,01_03  X_05,01_04 
 X_05,01_05  X_05,01_06  X_05,01_07  X_05,02_01  X_05,02_02  X_05,02_03 
 X_05,02_04  X_05,02_05  X_05,02_06  X_05,02_07  X_06,01_01  X_06,01_02 
 X_06,01_03  X_06,01_04  X_06,01_05  X_06,01_06  X_06,01_07  X_06,02_01 
 X_06,02_02  X_06,02_03  X_06,02_04  X_06,02_05  X_06,02_06  X_06,02_07 
 X_07,01_01  X_07,01_02  X_07,01_03  X_07,01_04  X_07,01_05  X_07,01_06 
 X_07,01_07  X_07,02_01  X_07,02_02  X_07,02_03  X_07,02_04  X_07,02_05 
 X_07,02_06  X_07,02_07  X_08,01_01  X_08,01_02  X_08,01_03  X_08,01_04 
 X_08,01_05  X_08,01_06  X_08,01_07  X_08,02_01  X_08,02_02  X_08,02_03 
 X_08,02_04  X_08,02_05  X_08,02_06  X_08,02_07  X_09,01_01  X_09,01_02 
 X_09,01_03  X_09,01_04  X_09,01_05  X_09,01_06  X_09,01_07  X_09,02_01 
 X_09,02_02  X_09,02_03  X_09,02_04  X_09,02_05  X_09,02_06  X_09,02_07 
 X_10,01_01  X_10,01_02  X_10,01_03  X_10,01_04  X_10,01_05  X_10,01_06 
 X_10,01_07  X_10,02_01  X_10,02_02  X_10,02_03  X_10,02_04  X_10,02_05 
 X_10,02_06  X_10,02_07  G_00,01_00  G_00,02_00 
End
