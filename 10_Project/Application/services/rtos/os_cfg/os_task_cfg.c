/************************************************************************
*                               OS Task Cfg                         
*************************************************************************
* FileName:         os_task_cfg.c                                                                                
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
* F.Ficili     15/08/23    1.0          First release.              
************************************************************************/

/************************************************************************
* Includes
************************************************************************/
#include "os_task.h"
#include "os_task_cfg.h"

/************************************************************************
* Typedefs
************************************************************************/


/************************************************************************
* LOCAL Variables
************************************************************************/


/************************************************************************
* TASK List
************************************************************************/
/* Initialization */
extern void StartupTask (void);

/* Application */
extern void LampTask (void);
extern void BlinkTask (void);
extern void SysTask (void);

/* Services */
extern void ServiceTask (void);

/* Others */
extern void LedTask (void);
extern void TestTask (void);


/************************************************************************
* GLOBAL Variables
************************************************************************/
TbcType Tasks[] =
{
  /* -------------------------------------------------------------------- */
  /* ID                     Task              State           Priority    */
  /* -------------------------------------------------------------------- */   
  /* --------------------------------- Tasks ---------------------------- */
  { LED_TASK_ID,            LedTask,          IDLE,           5},
  { LAMP_TASK_ID,           LampTask,         IDLE,           20},
  { BLINK_TASK_ID,          BlinkTask,        IDLE,           30},
  { SYS_TASK_ID,            SysTask,          IDLE,           40},  
  { SERVICE_TASK_ID,        ServiceTask,      IDLE,           50},
  { STARTUP_TASK_ID,        StartupTask,      IDLE,           60},
  /* -------------------------------------------------------------------- */
};

/* Auto-calculation of task number */
const uint16_t TaskNumber = (uint16_t)(sizeof(Tasks)/sizeof(TbcType));  

/* List of auto-started Tasks */
AutoStarTaskType AutoStartedTasks[] =
{
  STARTUP_TASK_ID,
};

/* Auto-calculation of auto-started task number */
const uint16_t AutoStartTaskNumber = (uint16_t)(sizeof(AutoStartedTasks)/sizeof(AutoStarTaskType));  

/************************************************************************
* LOCAL Functions
************************************************************************/


/************************************************************************
* GLOBAL Functions
************************************************************************/
