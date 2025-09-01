/************************************************************************
*                              USER TASKS                        
*************************************************************************
* FileName:         user_tasks.h                                                                             
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
* F.Ficili     04/02/25    1.0          First release.                 
************************************************************************/

/************************************************************************
* Includes
************************************************************************/
#include "os.h"
#include "definitions.h"                
#include "os_task.h"
#include "os_task_cfg.h"

/* Just for testing purposes */
#include "test.h"

/* Application Modules */
#include "blink_mgr.h"
#include "lamp_mgr.h"
#include "sys_mgr.h"

/* Service Modules */
#include "com.h"
#include "io.h"

/************************************************************************
* Macros
************************************************************************/
#define delay_ms(x) CORETIMER_DelayMs(x)

/************************************************************************
* Configuration
************************************************************************/
//#define ENABLE_LED_BLINK

/************************************************************************
* User Tasks
************************************************************************/

/* Task function */
TASK(LedTask)
{    
#ifdef ENABLE_LED_BLINK  
  /* Toggle LED */
  LED_RED_Toggle();
#endif  
  
  /* Task Termination */  
  Os_TerminateTask();  
}

/* Task function */
TASK(SysTask)
{    
  Sys();
  
  /* Task Termination */  
  Os_TerminateTask();  
}

/* Task function */
TASK(LampTask)
{    
  Lamp();
  
  /* Task Termination */  
  Os_TerminateTask();  
}

/* Task function */
TASK(BlinkTask)
{    
  Blinker();
  
  /* Task Termination */  
  Os_TerminateTask();  
}

/* Task function */
TASK(ServiceTask)
{    
  /* Com */
  Com();
  
  /* Task Termination */  
  Os_TerminateTask();  
}

/* Task function */
TASK(StartupTask)
{    
  
  /* Task Termination */  
  Os_TerminateTask();  
}

/* Task function */
TASK(TestTask)
{
#ifdef ENABLE_COM_TEST
  /* CAN communication test */
  ComTest();
#endif
  
#ifdef ENABLE_SPI_TEST
  /* SPI Test */
  SPITest();
#endif 
  
  /* Task Termination */
  Os_TerminateTask();
}