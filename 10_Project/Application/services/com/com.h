/************************************************************************
*                               Com Manager                            
*************************************************************************
* FileName:         com.h                                       
* Author:           F.Ficili                                            
*                                                                       
* Software License Agreement:                                           
*                                                                       
* THIS SOFTWARE IS PROVIDED IN AN "AS IS" CONDITION. NO WARRANTIES,     
* WHETHER EXPRESS, IMPLIED OR STATUTORY, INCLUDING, BUT NOT LIMITED     
* TO, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A           
* PARTICULAR PURPOSE APPLY TO THIS SOFTWARE. THE AUTHOR SHALL NOT,      
* IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL OR            
* CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER.                     
*                                                                       
* --------------------------------------------------------------------- 
* File History:                                                         
* --------------------------------------------------------------------- 
* Author       Date        Version      Comment                         
* ---------------------------------------------------------------------	
* F.Ficili     1.0          First release.                  	
************************************************************************/

#ifndef COM_H
#define COM_H

/************************************************************************
* Includes
************************************************************************/
#include "definitions.h"

/************************************************************************
* Exported Defines
************************************************************************/
/* General */
#define Com_Tx_Period_Ms                                             5u

/* Messages */
#define HLU_STS_MSG_ID                                               0x400
#define HLU_CMD_MSG_ID                                               0x401
#define HLU_NM_MSG_ID                                                0x500
#define HLU_STS_MSG_DLC                                              8u
#define HLU_CMD_MSG_DLC                                              8u
#define HLU_NM_MSG_DLC                                               2u

/* Signal positions */
/* HLU_CMD */
#define HLU_CMD_Lamp_Main_Cmd_BITPOS                                 0u
#define HLU_CMD_Lamp_Brights_Cmd_BITPOS                              1u
#define HLU_CMD_Blinker_Cmd_BITPOS                                   2u
#define HLU_CMD_FMH_Config_Cmd_BITPOS                                0u

/* HLU_STS */
#define HLU_STS_Lamp_Sts_BITPOS                                      0u
#define HLU_STS_Blinker_Sts_BITPOS                                   2u
#define HLU_STS_FMH_Config_Sts_BITPOS                                0u

/* NM */
#define NM_HLU_Shutdown_BITPOS                                       0u

/* Lamp status */
#define LAMP_OFF                                                     0u
#define LAMP_ON                                                      1u

/************************************************************************
* EXPORTED Macros
************************************************************************/


/************************************************************************
* EXPORTED Typedef
************************************************************************/


/************************************************************************
* EXPORTED Variables
************************************************************************/

/* ***************************** Signals ***************************** */
/* HLU_CMD */
extern uint8_t HLU_CMD_Blinker_Cmd;
extern uint8_t HLU_CMD_FMH_Config_Cmd;
extern uint8_t HLU_CMD_Lamp_Brights_Cmd;
extern uint8_t HLU_CMD_Lamp_Main_Cmd;

/* HLU_STS */
extern uint8_t HLU_STS_Lamp_Sts;
extern uint8_t HLU_STS_Blinker_Sts;
extern uint8_t HLU_STS_FMH_Config_Sts;

/* NM */
extern uint8_t NM_HLU_Shutdown;


/************************************************************************
* EXPORTED Functions
************************************************************************/
void Com (void);

#endif /* COM_H */