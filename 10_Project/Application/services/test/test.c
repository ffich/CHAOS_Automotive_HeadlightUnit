/************************************************************************
*                              Test                       
*************************************************************************
* FileName:         test.c                                                                             
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

#ifdef TEST_SW
/************************************************************************
* Defines
************************************************************************/
#define USE_DEBUG_CONSOLE

/* CAN message IDs for testing */
#define CAN_TEST_TX_MSG_ID                                    0x18DAA0FF
#define CAN_TEST_RX_MSG_ID                                    0x18DAFFA0

#define SPI_TEST_TX_MSG_ID                                    0x18DAA1FF
#define SPI_TEST_RX_MSG_ID                                    0x18DAFFA1

#define NVM_TEST_TX_MSG_ID                                    0x18DAA2FF
#define NVM_TEST_RX_MSG_ID                                    0x18DAFFA2

#define CAN_RX_FIFO_1                                         1
#define CAN_RX_FIFO_2                                         2
#define CAN_RX_FIFO_3                                         3

/* SPI Commands */
#define SPI_WRITE_CMD                                         0xAA
#define SPI_READ_CMD                                          0x55
#define SPI_DATA_LEN                                          7

/************************************************************************
* Local Variables 
************************************************************************/
/* CAN variables */
static uint8_t TxMessageData[8] = {0x00, 0x00, 0x00, 0x00, 0xFF, 0xDC, 0x00, 0x00};
static uint8_t RxMessageData[8];

static uint8_t RxMessageLen;
static CAN_MSG_RX_ATTRIBUTE RxMsgAttr = CAN_MSG_RX_DATA_FRAME;   
static uint32_t counter = 0;
static uint16_t signature[2] = {0x55, 0xAA};

/* SPI buffers */
uint8_t WR_EN = 0x06;
uint8_t SPI_Write_Request[] = {0x02, 0x00, 0x12, 0x34};
uint8_t SPI_Read_Request[] = {0x03, 0x00, 0x12, 0x34};
uint8_t SPI_Write_Buffer[32];
uint8_t SPI_Read_Buffer[32];

/************************************************************************
* Test Functions
************************************************************************/

/************************************************************************   
* Function:     ComTest
* Input:        None
* Output:       None
* Author:       F.Ficili
* Description:  Function to test the CAN communication.
************************************************************************/
void ComTest (void)
{  
  uint32_t TxMessageID = CAN_TEST_TX_MSG_ID;
  uint32_t RxMessageID;  
  
  /* Do something useless */
  if (!(counter % 10))
  {
    signature[0] = ~signature[0];
    signature[1] = ~signature[1];
  }
  TxMessageData[6] = signature[0];
  TxMessageData[7] = signature[1];    

  /* Increment counter */
  counter++;
  
  /* Copy data on CAN message */
  TxMessageData[0] = 0x000000FF & (counter >> 24);
  TxMessageData[1] = 0x000000FF & (counter >> 16);
  TxMessageData[2] = 0x000000FF & (counter >> 8);
  TxMessageData[3] = 0x000000FF & counter;

  /* Send message */
  if (CAN2_MessageTransmit(TxMessageID, 8, TxMessageData, 0, CAN_MSG_TX_DATA_FRAME) == true)
  {
    /* Toggle LED on successful transmission */
    LED_RED_Toggle();  
  }
  
  /* Receive New Message */
  if (CAN2_MessageReceive(&RxMessageID, &RxMessageLen, RxMessageData, 0, CAN_RX_FIFO_1, &RxMsgAttr) == true)
  {
    /* If the ID matches */
    if (RxMessageID == CAN_TEST_RX_MSG_ID)
    {
      if (RxMessageData[0] == 1)
      {
        LED_BLUE_Clear();
      }
      else
      {
        LED_BLUE_Set();
      }    
    }
  }  
}

/************************************************************************   
* Function:     ComTest
* Input:        None
* Output:       None
* Author:       F.Ficili
* Description:  Function to test the SPI (and EEPROM).
************************************************************************/
void SPITest (void)
{
  uint32_t TxMessageID = SPI_TEST_TX_MSG_ID;
  uint32_t RxMessageID;  
  
  /* Receive New Message */
  if (CAN2_MessageReceive(&RxMessageID, &RxMessageLen, RxMessageData, 0, CAN_RX_FIFO_2, &RxMsgAttr) == true)
  {
    /* If the ID matches */
    if (RxMessageID == SPI_TEST_RX_MSG_ID)
    {
      if (RxMessageData[0] == SPI_WRITE_CMD)
      {
        /* Copy SPI_DATA_LEN bytes from can message */
        memcpy(SPI_Write_Buffer, &RxMessageData[1], SPI_DATA_LEN); 
        /* Write enable latch */
        SPI1_Write(&WR_EN, 1);
        CORETIMER_DelayMs(10);                    
        /* Write data request */
        SPI1_Write(SPI_Write_Request, sizeof(SPI_Write_Request));
        /* Write data */
        SPI1_Write(SPI_Write_Buffer, SPI_DATA_LEN);
      }
      else if (RxMessageData[0] == SPI_READ_CMD)
      {
        /* Read data */
        SPI1_WriteRead(SPI_Read_Request, sizeof(SPI_Read_Request), SPI_Read_Buffer, SPI_DATA_LEN + 4);  
        CORETIMER_DelayMs(10);        
        /* Copy SPI_DATA_LEN bytes from can message */
        TxMessageData[0] = 0x55;
        memcpy(&TxMessageData[1], &SPI_Read_Buffer[4], SPI_DATA_LEN);         
        /* Send data via CAN */
        CAN2_MessageTransmit(TxMessageID, 8, TxMessageData, 0, CAN_MSG_TX_DATA_FRAME);
        
#ifdef USE_DEBUG_CONSOLE
        printf("SPI data read: ");
        UART6_Write(&SPI_Read_Buffer[4], SPI_DATA_LEN);
        printf("\r\n");
#endif
      }
    }
  }
}

/************************************************************************   
* Function:     NvMTest
* Input:        None
* Output:       None
* Author:       F.Ficili
* Description:  Function to test the NvM.
************************************************************************/
void NvMTest (void)
{

}
#endif