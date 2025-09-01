/************************************************************************
*                               Sys Manager                            
*************************************************************************
* FileName:         sys_mgr.c                                                                                   
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
/* Os */
#include "os.h"
#include "definitions.h"

/* Service Modules */
#include "com.h"
#include "io.h"

/************************************************************************
* Defines
************************************************************************/
/* FMH Delays */
#define DELAY_10_S                                              10
#define DELAY_30_S                                              30
#define DELAY_60_S                                              60

#define delay_ms(x) CORETIMER_DelayMs(x)

/************************************************************************
* Typedefs
************************************************************************/


/************************************************************************
* LOCAL Variables
************************************************************************/


/************************************************************************
* GLOBAL Variables
************************************************************************/


/************************************************************************
* LOCAL Function Prototypes
************************************************************************/

/************************************************************************
* LOCAL Function Implementations
************************************************************************/

/************************************************************************
* GLOBAL Function Implementations
************************************************************************/

/************************************************************************   
* Function:     Sys
* Input:        None
* Output:       None
* Author:       F.Ficili
* Description:  Funtion that handle the System management.
************************************************************************/
void Sys (void)
{
  uint16_t i;
  
  HLU_STS_FMH_Config_Sts = HLU_CMD_FMH_Config_Cmd;
  
  /* Check shutdown signal */
  if (NM_HLU_Shutdown == STS_ON)
  {
    HLU_STS_Lamp_Sts = 1;
    HLU_STS_Blinker_Sts = 0;
    
    SetBlinker(false);
    SetLampBright(false); 
    SetLampMainSwitch(true);
    
    if (HLU_CMD_FMH_Config_Cmd == 0)
    {
      /* Do nothing */     
    }
    else if (HLU_CMD_FMH_Config_Cmd == 1)
    {
      /* Wait 10 sec */
      for (i = 0; i < DELAY_10_S*1000; i++)
      {
        CORETIMER_DelayMs(1);
        Os_Yield();
      }        
    }
    else if (HLU_CMD_FMH_Config_Cmd == 2)
    {
      /* Wait 30 sec */
      for (i = 0; i < DELAY_30_S*1000; i++)
      {
        CORETIMER_DelayMs(1);
        Os_Yield();
      }         
    }
    else if (HLU_CMD_FMH_Config_Cmd == 3)
    {
      /* Wait 60 sec */
      for (i = 0; i < DELAY_60_S*1000; i++)
      {
        CORETIMER_DelayMs(1);
        Os_Yield();
      }          
    }
    
    /* Turn main light switch off */
    SetLampMainSwitch(false); 
    HLU_STS_Lamp_Sts = 0;
    
    /* Shut the system down */
    Os_Shutdown();
  }
}

