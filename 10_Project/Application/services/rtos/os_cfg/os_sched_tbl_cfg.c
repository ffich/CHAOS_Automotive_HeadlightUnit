/************************************************************************
*                               OS Schedule Table                         
*************************************************************************
* FileName:         os_sched_tbl.c                                                                                
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
#include "os_sched_tbl.h"
#include "os.h"
#include "common.h"
#include "os_task_cfg.h"
#include "os_sched_tbl_cfg.h"

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
/* Schedule Table structure initialization */
SchedTblType MySchTable_1[MY_SCH_TBL_1_EVT_NUMBER] =
{
  /* ----------------- Sched. Table ----------------- */     
  /* ------------------------------------------------ */
  /* TaskID          Counter          Timeout  */
  /* ------------------------------------------------ */   
  {SYS_TASK_ID,     COUNTER_INIT,    PERIOD_10_MS},
  {SERVICE_TASK_ID, COUNTER_INIT,    PERIOD_5_MS},
  {LAMP_TASK_ID,    COUNTER_INIT,    PERIOD_50_MS},
  {BLINK_TASK_ID,   COUNTER_INIT,    PERIOD_500_MS},   
  {LED_TASK_ID,     COUNTER_INIT,    PERIOD_1000_MS},
  /* ------------------------------------------------ */
};

SchedTblListType SchedTableList[SCH_TBL_NUMB] =
{
  /* ----------------------------- Sched. Table List ------------------------------ */   
  /* ------------------------------------------------------------------------------ */
  /* SchTblID         SchEvtNumb                SchTblState         SchTblPtr       */
  /* ------------------------------------------------------------------------------ */     
  {MY_SCH_TBL_1_ID,   MY_SCH_TBL_1_EVT_NUMBER,  SCH_TBL_ACTIVE,     MySchTable_1},  
  /* ------------------------------------------------------------------------------ */
};        


/************************************************************************
* LOCAL Functions
************************************************************************/


/************************************************************************
* GLOBAL Functions
************************************************************************/

