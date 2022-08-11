/*******************************************************************************
  MPLAB Harmony Application Source File

  Company:
    Microchip Technology Inc.

  File Name:
    app_rtcc.c

  Summary:
    This file contains the source code for the MPLAB Harmony application.

  Description:
    This file contains the source code for the MPLAB Harmony application.  It
    implements the logic of the application's state machine and it may call
    API routines of other MPLAB Harmony modules in the system, such as drivers,
    system services, and middleware.  However, it does not call any of the
    system interfaces (such as the "Initialize" and "Tasks" functions) of any of
    the modules in the system or make any assumptions about when those functions
    are called.  That is the responsibility of the configuration-specific system
    files.
 *******************************************************************************/

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************

#include "app_rtcc.h"
#include "stdio.h"
// *****************************************************************************
// *****************************************************************************
// Section: Global Data Definitions
// *****************************************************************************
// *****************************************************************************

// *****************************************************************************
/* Application Data

  Summary:
    Holds application data

  Description:
    This structure holds the application's data.

  Remarks:
    This structure should be initialized by the APP_RTCC_Initialize function.

    Application strings and buffers are be defined outside this structure.
*/

APP_RTCC_DATA app_rtccData;
struct tm sys_time;
struct tm alarm_time;
// *****************************************************************************
// *****************************************************************************
// Section: Application Local Functions
// *****************************************************************************
// *****************************************************************************


volatile bool rtcc_alarm = false;

// *****************************************************************************
// *****************************************************************************
// Section: Application Callback Functions
// *****************************************************************************
// *****************************************************************************
void RTCC_Callback( uintptr_t context)
{
    rtcc_alarm = true;
}




// *****************************************************************************
// *****************************************************************************
// Section: Application Initialization and State Machine Functions
// *****************************************************************************
// *****************************************************************************



/*******************************************************************************
  Function:
    void APP_RTCC_Initialize ( void )

  Remarks:
    See prototype in app_rtcc.h.
 */

void APP_RTCC_Initialize ( void )
{
    /* Place the App state machine in its initial state. */
    app_rtccData.state = APP_RTCC_STATE_INIT;

    printf("\r\nRTCC Alarm demo. Alarm will trigger once in a day\r\n");

    

    // Time setting 31-12-2018 23:59:55 Monday
    sys_time.tm_hour = 23;
    sys_time.tm_min = 59;
    sys_time.tm_sec = 55;

    sys_time.tm_year = 18;
    sys_time.tm_mon = 12;
    sys_time.tm_mday = 31;
    sys_time.tm_wday = 1;

    // Alarm setting 01-01-2019 00:00:05 Tuesday
    alarm_time.tm_hour = 00;
    alarm_time.tm_min = 00;
    alarm_time.tm_sec = 05;

    alarm_time.tm_year = 19;
    alarm_time.tm_mon = 01;
    alarm_time.tm_mday = 01;
    alarm_time.tm_wday = 2;

    RTCC_CallbackRegister(RTCC_Callback, (uintptr_t) NULL);

    if (RTCC_TimeSet(&sys_time) == false)
    {
        /* Error setting up time */
        while(1);
    }

    if (RTCC_AlarmSet(&alarm_time, RTCC_ALARM_MASK_HHMISS) == false)
    {
        /* Error setting up alarm */
        while(1);
    }

    printf("\r\nAlarm set for Hour:Min:Sec %02d:%02d:%02d\r\n\r\n", alarm_time.tm_hour, alarm_time.tm_min, alarm_time.tm_sec);
}


/******************************************************************************
  Function:
    void APP_RTCC_Tasks ( void )

  Remarks:
    See prototype in app_rtcc.h.
 */

void APP_RTCC_Tasks ( void )
{
//    static uint32_t t1;
    static int tm_sec;

    /* Check the application's current state. */
    switch ( app_rtccData.state )
    {
        /* Application's initial state. */
        case APP_RTCC_STATE_INIT:
        {
            bool appInitialized = true;


            if (appInitialized)
            {

                app_rtccData.state = APP_RTCC_STATE_SERVICE_TASKS;
//                tm_sec = 0;
            }
            break;
        }

        case APP_RTCC_STATE_SERVICE_TASKS:
        {
            RTCC_TimeGet(&sys_time);
//            if( SYS_TMR_TickCountGet() - t1 > SYS_TMR_TickCounterFrequencyGet() * 1.0 )
//            if( sys_time.tm_sec - tm_sec >= 1 || sys_time.tm_sec - tm_sec <= -1 )
            if( abs(sys_time.tm_sec - tm_sec) >= 1  )
            {
//                t1 = SYS_TMR_TickCountGet();
                tm_sec = sys_time.tm_sec;
                
                printf("System Date and Time is: DD:MM:YY %02d-%02d-%04d ", sys_time.tm_mday, sys_time.tm_mon, sys_time.tm_year);
                printf(" %02d:%02d:%02d \r",sys_time.tm_hour, sys_time.tm_min, sys_time.tm_sec);
                
            }
            
            if(rtcc_alarm)
            {
                rtcc_alarm = false;
                printf("\r\nAlarm triggered!!\r\n\r\n");
            }

            break;
        }

        /* TODO: implement your application state machine.*/


        /* The default state should never be executed. */
        default:
        {
            /* TODO: Handle error in application's state machine. */
            break;
        }
    }
}


/*******************************************************************************
 End of File
 */
