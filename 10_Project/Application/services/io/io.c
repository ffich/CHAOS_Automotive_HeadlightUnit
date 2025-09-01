/************************************************************************
*                               IO                           
*************************************************************************
* FileName:         io.c                                                                                   
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
* Function:     SetLampMainSwitch
* Input:        Sts
* Output:       None
* Author:       F.Ficili
* Description:  Function that handle the lamp main switch.
************************************************************************/
void SetLampMainSwitch (bool Sts)
{
  if (Sts == true)
  {
    LED_YELLOW_Clear();
  }
  else
  {
    LED_YELLOW_Set();
  }
}

/************************************************************************   
* Function:     SetLampBright
* Input:        Sts
* Output:       None
* Author:       F.Ficili
* Description:  Function that handle the lamp Bright.
************************************************************************/
void SetLampBright (bool Sts)
{
  if (Sts == true)
  {
    LED_BLUE_Clear();
  }
  else
  {
    LED_BLUE_Set();
  }
}

/************************************************************************   
* Function:     SetBlinker
* Input:        Sts
* Output:       None
* Author:       F.Ficili
* Description:  Function that handle the Blinker.
************************************************************************/
void SetBlinker (bool Sts)
{
  if (Sts == true)
  {
    LED_GREEN_Clear();
  }
  else
  {
    LED_GREEN_Set();
  }
}
