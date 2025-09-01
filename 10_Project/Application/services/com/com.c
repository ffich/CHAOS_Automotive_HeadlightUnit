/************************************************************************
*                               Com Manager                            
*************************************************************************
* FileName:         com.c                                                                                   
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
* Author       Version      Comment                         
* ---------------------------------------------------------------------	
* F.Ficili     1.0          First release.                  	
************************************************************************/

/************************************************************************
* Includes
************************************************************************/
#include "os.h"
#include "definitions.h"
#include "com.h"
#include "endian.h"

/************************************************************************
* Defines
************************************************************************/
#define CAN_MAILBOX_0                                                 0u
#define CAN_MAILBOX_1                                                 1u
#define CAN_MAILBOX_2                                                 2u

/************************************************************************
* Typedefs
************************************************************************/


/************************************************************************
* LOCAL Variables
************************************************************************/


/************************************************************************
* GLOBAL Variables
************************************************************************/
/* ***************************** Signals ***************************** */
/* HLU_CMD */
uint8_t HLU_CMD_Lamp_Main_Cmd;
uint8_t HLU_CMD_Lamp_Brights_Cmd;
uint8_t HLU_CMD_Blinker_Cmd;
uint8_t HLU_CMD_FMH_Config_Cmd;

/* HLU_STS */
uint8_t HLU_STS_Lamp_Sts;
uint8_t HLU_STS_Blinker_Sts;
uint8_t HLU_STS_FMH_Config_Sts;

/* NM */
uint8_t NM_HLU_Shutdown;

/* ******************************* PDUs ******************************* */
/* HLU_STS_Message */
uint8_t HLU_STS_Message[HLU_STS_MSG_DLC];
uint8_t HLU_CMD_Message[HLU_CMD_MSG_DLC];
uint8_t HLU_NM_Message[HLU_NM_MSG_DLC];

/************************************************************************
* LOCAL Function Prototypes
************************************************************************/


/************************************************************************
* LOCAL Function Implementations
************************************************************************/


/************************************************************************   
* Function:     ComTx
* Input:        None
* Output:       None
* Author:       F.Ficili
* Description:  Function that handle the PDU transmission.
************************************************************************/
void ComTx (void)
{  
  static uint16_t MsgCounter = 0;
  
  /* Increment Counter */
  MsgCounter++;
  
  /* Check msg tx threshold */
  if (MsgCounter >= (PERIOD_100_MS/Com_Tx_Period_Ms))
  {
    /* Reset counter */
    MsgCounter = 0;
    
    /* Clean message */
    HLU_STS_Message[0] = 0;
    HLU_STS_Message[1] = 0;
    
    /* Pack signals */
    HLU_STS_Message[0] |= HLU_STS_Lamp_Sts << HLU_STS_Lamp_Sts_BITPOS;
    HLU_STS_Message[0] |= HLU_STS_Blinker_Sts << HLU_STS_Blinker_Sts_BITPOS;
    HLU_STS_Message[1] |= HLU_STS_FMH_Config_Sts << HLU_STS_FMH_Config_Sts_BITPOS;
    
    /* Send Message */
    CAN2_MessageTransmit(HLU_STS_MSG_ID, HLU_STS_MSG_DLC, HLU_STS_Message, CAN_MAILBOX_0, CAN_MSG_TX_DATA_FRAME);
  }
}

/************************************************************************   
* Function:     ComRx
* Input:        None
* Output:       None
* Author:       F.Ficili
* Description:  Function that handle the message reception.
************************************************************************/
void ComRx (void)
{
  uint16_t timestamp;
  uint32_t HLU_CMD_MsgID;
  uint32_t HLU_NM_MsgID;  
  uint8_t HLU_CMD_DLC;
  uint8_t HLU_NM_DLC;
  bool HLU_CMD_RxSts = false;
  bool HLU_NM_RxSts = false;   
  CAN_MSG_RX_ATTRIBUTE RxMsgAttr;   
  
  /* Get message from  CAN_MAILBOX_1 */
  HLU_CMD_RxSts = CAN2_MessageReceive(&HLU_CMD_MsgID, &HLU_CMD_DLC, HLU_CMD_Message, &timestamp, CAN_MAILBOX_1, &RxMsgAttr);
  
  /* If a message has been received */
  if (HLU_CMD_RxSts == true)
  {
    /* Double check MsgID */
    if (HLU_CMD_MsgID == HLU_CMD_MSG_ID)
    {
      HLU_CMD_Lamp_Main_Cmd = (HLU_CMD_Message[0] >> HLU_CMD_Lamp_Main_Cmd_BITPOS) & 0x01;
      HLU_CMD_Lamp_Brights_Cmd = (HLU_CMD_Message[0] >> HLU_CMD_Lamp_Brights_Cmd_BITPOS) & 0x01;
      HLU_CMD_Blinker_Cmd = (HLU_CMD_Message[0] >> HLU_CMD_Blinker_Cmd_BITPOS) & 0x01;
      HLU_CMD_FMH_Config_Cmd = (HLU_CMD_Message[1] >> HLU_CMD_FMH_Config_Cmd_BITPOS) & 0x01;
    }
    else
    {
      /* Unknown message, we should not get here if the filter configuration is correct */
    }
  }
  
  /* Get message from  CAN_MAILBOX_2 */  
  HLU_NM_RxSts = CAN2_MessageReceive(&HLU_NM_MsgID, &HLU_NM_DLC, HLU_NM_Message, &timestamp, CAN_MAILBOX_2, &RxMsgAttr);
  
  /* If a message has been received */
  if (HLU_NM_RxSts == true)
  {
    /* Double check MsgID */
    if (HLU_NM_MsgID == HLU_NM_MSG_ID)
    {
      /* Extract HLU_NM signals */
      NM_HLU_Shutdown = (HLU_NM_Message[0] << NM_HLU_Shutdown_BITPOS) & 0x01;
    }
    else
    {
      /* Unknown message, we should not get here if the filter configuration is correct */
    }
  }  
}

/************************************************************************
* GLOBAL Function Implementations
************************************************************************/

/************************************************************************   
* Function:     Com
* Input:        None
* Output:       None
* Author:       F.Ficili
* Description:  Function that handle the Com management.
************************************************************************/
void Com (void)
{
  /* Call ComTx and ComRx processing */
  ComTx();
  ComRx();
}

