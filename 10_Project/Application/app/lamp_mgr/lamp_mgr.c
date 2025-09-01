/************************************************************************
*                               Lamp Manager                            
*************************************************************************
* FileName:         lamp_mgr.c                                                                                   
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
* Function:     Lamp
* Input:        None
* Output:       None
* Author:       F.Ficili
* Description:  Function that handle the Lamp activation/deactivation.
************************************************************************/
void Lamp (void)
{
  /* Lamp Main */
  if (HLU_CMD_Lamp_Main_Cmd == LAMP_ON)
  {
    SetLampMainSwitch(true);
  }
  else
  {
    SetLampMainSwitch(false);  
  }
  
  /* Lamp Bright */
  if ((HLU_CMD_Lamp_Brights_Cmd == LAMP_ON) && (HLU_CMD_Lamp_Main_Cmd == LAMP_ON))
  {
    SetLampBright(true);
  }
  else
  {
    SetLampBright(false);  
  } 
  
  /* Update Status Signals */
  HLU_STS_Lamp_Sts = (HLU_CMD_Lamp_Brights_Cmd << 1) | HLU_CMD_Lamp_Main_Cmd;  
}


