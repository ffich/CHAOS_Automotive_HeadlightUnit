/************************************************************************
*                               Blink Manager                            
*************************************************************************
* FileName:         blink_mgr.c                                                                                   
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
* Function:     Blinker
* Input:        None
* Output:       None
* Author:       F.Ficili
* Description:  Function that handle the Blinker.
************************************************************************/
void Blinker (void)
{
  static uint8_t BlinkerSts = 0;  
    
  /* Blinker Logic */  
  if (HLU_CMD_Blinker_Cmd == LAMP_ON)
  {
    /* Update Status signal */
    BlinkerSts = !BlinkerSts;  

    /* Set Blinker */
    SetBlinker(BlinkerSts);        
  }
  else
  {
    BlinkerSts = 0;
    SetBlinker(BlinkerSts);   
  }  
  
  /* Update Status Signals */
  HLU_STS_Blinker_Sts = BlinkerSts;
}

