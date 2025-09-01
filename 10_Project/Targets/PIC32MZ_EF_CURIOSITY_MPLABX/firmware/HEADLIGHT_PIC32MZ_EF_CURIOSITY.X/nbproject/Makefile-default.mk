#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/HEADLIGHT_PIC32MZ_EF_CURIOSITY.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/HEADLIGHT_PIC32MZ_EF_CURIOSITY.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../../../../Application/app/blink_mgr/blink_mgr.c ../../../../Application/app/lamp_mgr/lamp_mgr.c ../../../../Application/app/sys_mgr/sys_mgr.c ../../../../Application/services/com/com.c ../../../../Application/services/rtos/os/os.c ../../../../Application/services/rtos/os/os_alarms.c ../../../../Application/services/rtos/os/os_ipc.c ../../../../Application/services/rtos/os/os_sched_tbl.c ../../../../Application/services/rtos/os/os_task.c ../../../../Application/services/rtos/os/os_timers.c ../../../../Application/services/rtos/os_cfg/os_alarms_cfg.c ../../../../Application/services/rtos/os_cfg/os_sched_tbl_cfg.c ../../../../Application/services/rtos/os_cfg/os_task_cfg.c ../../../../Application/services/rtos/os_hooks/hooks.c ../../../../Application/services/rtos/os_tasks/tasks.c ../../../../Application/services/test/test.c ../src/config/default/peripheral/can/plib_can2.c ../src/config/default/peripheral/clk/plib_clk.c ../src/config/default/peripheral/coretimer/plib_coretimer.c ../src/config/default/peripheral/evic/plib_evic.c ../src/config/default/peripheral/gpio/plib_gpio.c ../src/config/default/peripheral/uart/plib_uart6.c ../src/config/default/stdio/xc32_monitor.c ../src/config/default/initialization.c ../src/config/default/interrupts.c ../src/config/default/exceptions.c ../src/main.c ../../../../Application/services/io/io.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/948661656/blink_mgr.o ${OBJECTDIR}/_ext/1931992350/lamp_mgr.o ${OBJECTDIR}/_ext/316723737/sys_mgr.o ${OBJECTDIR}/_ext/1007290865/com.o ${OBJECTDIR}/_ext/1865760379/os.o ${OBJECTDIR}/_ext/1865760379/os_alarms.o ${OBJECTDIR}/_ext/1865760379/os_ipc.o ${OBJECTDIR}/_ext/1865760379/os_sched_tbl.o ${OBJECTDIR}/_ext/1865760379/os_task.o ${OBJECTDIR}/_ext/1865760379/os_timers.o ${OBJECTDIR}/_ext/1029191840/os_alarms_cfg.o ${OBJECTDIR}/_ext/1029191840/os_sched_tbl_cfg.o ${OBJECTDIR}/_ext/1029191840/os_task_cfg.o ${OBJECTDIR}/_ext/1215777004/hooks.o ${OBJECTDIR}/_ext/1226446026/tasks.o ${OBJECTDIR}/_ext/1160748604/test.o ${OBJECTDIR}/_ext/60165182/plib_can2.o ${OBJECTDIR}/_ext/60165520/plib_clk.o ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o ${OBJECTDIR}/_ext/1865200349/plib_evic.o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ${OBJECTDIR}/_ext/1865657120/plib_uart6.o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ${OBJECTDIR}/_ext/1171490990/initialization.o ${OBJECTDIR}/_ext/1171490990/interrupts.o ${OBJECTDIR}/_ext/1171490990/exceptions.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/863777064/io.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/948661656/blink_mgr.o.d ${OBJECTDIR}/_ext/1931992350/lamp_mgr.o.d ${OBJECTDIR}/_ext/316723737/sys_mgr.o.d ${OBJECTDIR}/_ext/1007290865/com.o.d ${OBJECTDIR}/_ext/1865760379/os.o.d ${OBJECTDIR}/_ext/1865760379/os_alarms.o.d ${OBJECTDIR}/_ext/1865760379/os_ipc.o.d ${OBJECTDIR}/_ext/1865760379/os_sched_tbl.o.d ${OBJECTDIR}/_ext/1865760379/os_task.o.d ${OBJECTDIR}/_ext/1865760379/os_timers.o.d ${OBJECTDIR}/_ext/1029191840/os_alarms_cfg.o.d ${OBJECTDIR}/_ext/1029191840/os_sched_tbl_cfg.o.d ${OBJECTDIR}/_ext/1029191840/os_task_cfg.o.d ${OBJECTDIR}/_ext/1215777004/hooks.o.d ${OBJECTDIR}/_ext/1226446026/tasks.o.d ${OBJECTDIR}/_ext/1160748604/test.o.d ${OBJECTDIR}/_ext/60165182/plib_can2.o.d ${OBJECTDIR}/_ext/60165520/plib_clk.o.d ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d ${OBJECTDIR}/_ext/1865200349/plib_evic.o.d ${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d ${OBJECTDIR}/_ext/1865657120/plib_uart6.o.d ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d ${OBJECTDIR}/_ext/1171490990/initialization.o.d ${OBJECTDIR}/_ext/1171490990/interrupts.o.d ${OBJECTDIR}/_ext/1171490990/exceptions.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/863777064/io.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/948661656/blink_mgr.o ${OBJECTDIR}/_ext/1931992350/lamp_mgr.o ${OBJECTDIR}/_ext/316723737/sys_mgr.o ${OBJECTDIR}/_ext/1007290865/com.o ${OBJECTDIR}/_ext/1865760379/os.o ${OBJECTDIR}/_ext/1865760379/os_alarms.o ${OBJECTDIR}/_ext/1865760379/os_ipc.o ${OBJECTDIR}/_ext/1865760379/os_sched_tbl.o ${OBJECTDIR}/_ext/1865760379/os_task.o ${OBJECTDIR}/_ext/1865760379/os_timers.o ${OBJECTDIR}/_ext/1029191840/os_alarms_cfg.o ${OBJECTDIR}/_ext/1029191840/os_sched_tbl_cfg.o ${OBJECTDIR}/_ext/1029191840/os_task_cfg.o ${OBJECTDIR}/_ext/1215777004/hooks.o ${OBJECTDIR}/_ext/1226446026/tasks.o ${OBJECTDIR}/_ext/1160748604/test.o ${OBJECTDIR}/_ext/60165182/plib_can2.o ${OBJECTDIR}/_ext/60165520/plib_clk.o ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o ${OBJECTDIR}/_ext/1865200349/plib_evic.o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ${OBJECTDIR}/_ext/1865657120/plib_uart6.o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ${OBJECTDIR}/_ext/1171490990/initialization.o ${OBJECTDIR}/_ext/1171490990/interrupts.o ${OBJECTDIR}/_ext/1171490990/exceptions.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/863777064/io.o

# Source Files
SOURCEFILES=../../../../Application/app/blink_mgr/blink_mgr.c ../../../../Application/app/lamp_mgr/lamp_mgr.c ../../../../Application/app/sys_mgr/sys_mgr.c ../../../../Application/services/com/com.c ../../../../Application/services/rtos/os/os.c ../../../../Application/services/rtos/os/os_alarms.c ../../../../Application/services/rtos/os/os_ipc.c ../../../../Application/services/rtos/os/os_sched_tbl.c ../../../../Application/services/rtos/os/os_task.c ../../../../Application/services/rtos/os/os_timers.c ../../../../Application/services/rtos/os_cfg/os_alarms_cfg.c ../../../../Application/services/rtos/os_cfg/os_sched_tbl_cfg.c ../../../../Application/services/rtos/os_cfg/os_task_cfg.c ../../../../Application/services/rtos/os_hooks/hooks.c ../../../../Application/services/rtos/os_tasks/tasks.c ../../../../Application/services/test/test.c ../src/config/default/peripheral/can/plib_can2.c ../src/config/default/peripheral/clk/plib_clk.c ../src/config/default/peripheral/coretimer/plib_coretimer.c ../src/config/default/peripheral/evic/plib_evic.c ../src/config/default/peripheral/gpio/plib_gpio.c ../src/config/default/peripheral/uart/plib_uart6.c ../src/config/default/stdio/xc32_monitor.c ../src/config/default/initialization.c ../src/config/default/interrupts.c ../src/config/default/exceptions.c ../src/main.c ../../../../Application/services/io/io.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/HEADLIGHT_PIC32MZ_EF_CURIOSITY.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MZ2048EFM144
MP_LINKER_FILE_OPTION=,--script="..\src\config\default\p32MZ2048EFM144.ld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/948661656/blink_mgr.o: ../../../../Application/app/blink_mgr/blink_mgr.c  .generated_files/flags/default/7e23fd3ac8213d55ec0b774ce2a5454ad475baea .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/948661656" 
	@${RM} ${OBJECTDIR}/_ext/948661656/blink_mgr.o.d 
	@${RM} ${OBJECTDIR}/_ext/948661656/blink_mgr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O0 -fno-common -I"../src" -I"../src/config/default" -I"../../../../Application/app/blink_mgr" -I"../../../../Application/app/fmh_mgr" -I"../../../../Application/app/lamp_mgr" -I"../../../../Application/app/sys_mgr" -I"../../../../Application/services/com" -I"../../../../Application/services/io" -I"../../../../Application/services/nvm" -I"../../../../Application/services/rtos/os" -I"../../../../Application/services/rtos/os_cfg" -I"../../../../Application/services/rtos/os_hooks" -I"../../../../Application/services/rtos/os_tasks" -I"../../../../Application/services/test" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/948661656/blink_mgr.o.d" -o ${OBJECTDIR}/_ext/948661656/blink_mgr.o ../../../../Application/app/blink_mgr/blink_mgr.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1931992350/lamp_mgr.o: ../../../../Application/app/lamp_mgr/lamp_mgr.c  .generated_files/flags/default/d541f117155dd53a09c4f9c87272cc3c0b2af7f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1931992350" 
	@${RM} ${OBJECTDIR}/_ext/1931992350/lamp_mgr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1931992350/lamp_mgr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O0 -fno-common -I"../src" -I"../src/config/default" -I"../../../../Application/app/blink_mgr" -I"../../../../Application/app/fmh_mgr" -I"../../../../Application/app/lamp_mgr" -I"../../../../Application/app/sys_mgr" -I"../../../../Application/services/com" -I"../../../../Application/services/io" -I"../../../../Application/services/nvm" -I"../../../../Application/services/rtos/os" -I"../../../../Application/services/rtos/os_cfg" -I"../../../../Application/services/rtos/os_hooks" -I"../../../../Application/services/rtos/os_tasks" -I"../../../../Application/services/test" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1931992350/lamp_mgr.o.d" -o ${OBJECTDIR}/_ext/1931992350/lamp_mgr.o ../../../../Application/app/lamp_mgr/lamp_mgr.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/316723737/sys_mgr.o: ../../../../Application/app/sys_mgr/sys_mgr.c  .generated_files/flags/default/91fb2f2b810b3798fdaccadac5cdc93d9986ddc0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/316723737" 
	@${RM} ${OBJECTDIR}/_ext/316723737/sys_mgr.o.d 
	@${RM} ${OBJECTDIR}/_ext/316723737/sys_mgr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O0 -fno-common -I"../src" -I"../src/config/default" -I"../../../../Application/app/blink_mgr" -I"../../../../Application/app/fmh_mgr" -I"../../../../Application/app/lamp_mgr" -I"../../../../Application/app/sys_mgr" -I"../../../../Application/services/com" -I"../../../../Application/services/io" -I"../../../../Application/services/nvm" -I"../../../../Application/services/rtos/os" -I"../../../../Application/services/rtos/os_cfg" -I"../../../../Application/services/rtos/os_hooks" -I"../../../../Application/services/rtos/os_tasks" -I"../../../../Application/services/test" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/316723737/sys_mgr.o.d" -o ${OBJECTDIR}/_ext/316723737/sys_mgr.o ../../../../Application/app/sys_mgr/sys_mgr.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1007290865/com.o: ../../../../Application/services/com/com.c  .generated_files/flags/default/fcc75c8d2e1ee83b544bc4aaf3136a5b90b84835 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1007290865" 
	@${RM} ${OBJECTDIR}/_ext/1007290865/com.o.d 
	@${RM} ${OBJECTDIR}/_ext/1007290865/com.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O0 -fno-common -I"../src" -I"../src/config/default" -I"../../../../Application/app/blink_mgr" -I"../../../../Application/app/fmh_mgr" -I"../../../../Application/app/lamp_mgr" -I"../../../../Application/app/sys_mgr" -I"../../../../Application/services/com" -I"../../../../Application/services/io" -I"../../../../Application/services/nvm" -I"../../../../Application/services/rtos/os" -I"../../../../Application/services/rtos/os_cfg" -I"../../../../Application/services/rtos/os_hooks" -I"../../../../Application/services/rtos/os_tasks" -I"../../../../Application/services/test" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1007290865/com.o.d" -o ${OBJECTDIR}/_ext/1007290865/com.o ../../../../Application/services/com/com.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865760379/os.o: ../../../../Application/services/rtos/os/os.c  .generated_files/flags/default/2fc108327cd0fa8652359222f0789faf2bbeb6d7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865760379" 
	@${RM} ${OBJECTDIR}/_ext/1865760379/os.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865760379/os.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O0 -fno-common -I"../src" -I"../src/config/default" -I"../../../../Application/app/blink_mgr" -I"../../../../Application/app/fmh_mgr" -I"../../../../Application/app/lamp_mgr" -I"../../../../Application/app/sys_mgr" -I"../../../../Application/services/com" -I"../../../../Application/services/io" -I"../../../../Application/services/nvm" -I"../../../../Application/services/rtos/os" -I"../../../../Application/services/rtos/os_cfg" -I"../../../../Application/services/rtos/os_hooks" -I"../../../../Application/services/rtos/os_tasks" -I"../../../../Application/services/test" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865760379/os.o.d" -o ${OBJECTDIR}/_ext/1865760379/os.o ../../../../Application/services/rtos/os/os.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865760379/os_alarms.o: ../../../../Application/services/rtos/os/os_alarms.c  .generated_files/flags/default/b906353b3d04bbc80234b7dc8802a3f38cf8c093 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865760379" 
	@${RM} ${OBJECTDIR}/_ext/1865760379/os_alarms.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865760379/os_alarms.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O0 -fno-common -I"../src" -I"../src/config/default" -I"../../../../Application/app/blink_mgr" -I"../../../../Application/app/fmh_mgr" -I"../../../../Application/app/lamp_mgr" -I"../../../../Application/app/sys_mgr" -I"../../../../Application/services/com" -I"../../../../Application/services/io" -I"../../../../Application/services/nvm" -I"../../../../Application/services/rtos/os" -I"../../../../Application/services/rtos/os_cfg" -I"../../../../Application/services/rtos/os_hooks" -I"../../../../Application/services/rtos/os_tasks" -I"../../../../Application/services/test" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865760379/os_alarms.o.d" -o ${OBJECTDIR}/_ext/1865760379/os_alarms.o ../../../../Application/services/rtos/os/os_alarms.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865760379/os_ipc.o: ../../../../Application/services/rtos/os/os_ipc.c  .generated_files/flags/default/1496672a8fe0d040e8a514319652387e8b780ece .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865760379" 
	@${RM} ${OBJECTDIR}/_ext/1865760379/os_ipc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865760379/os_ipc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O0 -fno-common -I"../src" -I"../src/config/default" -I"../../../../Application/app/blink_mgr" -I"../../../../Application/app/fmh_mgr" -I"../../../../Application/app/lamp_mgr" -I"../../../../Application/app/sys_mgr" -I"../../../../Application/services/com" -I"../../../../Application/services/io" -I"../../../../Application/services/nvm" -I"../../../../Application/services/rtos/os" -I"../../../../Application/services/rtos/os_cfg" -I"../../../../Application/services/rtos/os_hooks" -I"../../../../Application/services/rtos/os_tasks" -I"../../../../Application/services/test" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865760379/os_ipc.o.d" -o ${OBJECTDIR}/_ext/1865760379/os_ipc.o ../../../../Application/services/rtos/os/os_ipc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865760379/os_sched_tbl.o: ../../../../Application/services/rtos/os/os_sched_tbl.c  .generated_files/flags/default/12e5c0f5b267d36f4e51cee9c97ef677dab65d7e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865760379" 
	@${RM} ${OBJECTDIR}/_ext/1865760379/os_sched_tbl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865760379/os_sched_tbl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O0 -fno-common -I"../src" -I"../src/config/default" -I"../../../../Application/app/blink_mgr" -I"../../../../Application/app/fmh_mgr" -I"../../../../Application/app/lamp_mgr" -I"../../../../Application/app/sys_mgr" -I"../../../../Application/services/com" -I"../../../../Application/services/io" -I"../../../../Application/services/nvm" -I"../../../../Application/services/rtos/os" -I"../../../../Application/services/rtos/os_cfg" -I"../../../../Application/services/rtos/os_hooks" -I"../../../../Application/services/rtos/os_tasks" -I"../../../../Application/services/test" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865760379/os_sched_tbl.o.d" -o ${OBJECTDIR}/_ext/1865760379/os_sched_tbl.o ../../../../Application/services/rtos/os/os_sched_tbl.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865760379/os_task.o: ../../../../Application/services/rtos/os/os_task.c  .generated_files/flags/default/ca5238a5994f0902d03dc80421a7cf3539445c36 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865760379" 
	@${RM} ${OBJECTDIR}/_ext/1865760379/os_task.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865760379/os_task.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O0 -fno-common -I"../src" -I"../src/config/default" -I"../../../../Application/app/blink_mgr" -I"../../../../Application/app/fmh_mgr" -I"../../../../Application/app/lamp_mgr" -I"../../../../Application/app/sys_mgr" -I"../../../../Application/services/com" -I"../../../../Application/services/io" -I"../../../../Application/services/nvm" -I"../../../../Application/services/rtos/os" -I"../../../../Application/services/rtos/os_cfg" -I"../../../../Application/services/rtos/os_hooks" -I"../../../../Application/services/rtos/os_tasks" -I"../../../../Application/services/test" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865760379/os_task.o.d" -o ${OBJECTDIR}/_ext/1865760379/os_task.o ../../../../Application/services/rtos/os/os_task.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865760379/os_timers.o: ../../../../Application/services/rtos/os/os_timers.c  .generated_files/flags/default/768681e9c4bd332cb3ecc95423b9e4b7d982df20 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865760379" 
	@${RM} ${OBJECTDIR}/_ext/1865760379/os_timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865760379/os_timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O0 -fno-common -I"../src" -I"../src/config/default" -I"../../../../Application/app/blink_mgr" -I"../../../../Application/app/fmh_mgr" -I"../../../../Application/app/lamp_mgr" -I"../../../../Application/app/sys_mgr" -I"../../../../Application/services/com" -I"../../../../Application/services/io" -I"../../../../Application/services/nvm" -I"../../../../Application/services/rtos/os" -I"../../../../Application/services/rtos/os_cfg" -I"../../../../Application/services/rtos/os_hooks" -I"../../../../Application/services/rtos/os_tasks" -I"../../../../Application/services/test" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865760379/os_timers.o.d" -o ${OBJECTDIR}/_ext/1865760379/os_timers.o ../../../../Application/services/rtos/os/os_timers.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1029191840/os_alarms_cfg.o: ../../../../Application/services/rtos/os_cfg/os_alarms_cfg.c  .generated_files/flags/default/9021653850a3532884d7968d12d9e1facfbd4de2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1029191840" 
	@${RM} ${OBJECTDIR}/_ext/1029191840/os_alarms_cfg.o.d 
	@${RM} ${OBJECTDIR}/_ext/1029191840/os_alarms_cfg.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O0 -fno-common -I"../src" -I"../src/config/default" -I"../../../../Application/app/blink_mgr" -I"../../../../Application/app/fmh_mgr" -I"../../../../Application/app/lamp_mgr" -I"../../../../Application/app/sys_mgr" -I"../../../../Application/services/com" -I"../../../../Application/services/io" -I"../../../../Application/services/nvm" -I"../../../../Application/services/rtos/os" -I"../../../../Application/services/rtos/os_cfg" -I"../../../../Application/services/rtos/os_hooks" -I"../../../../Application/services/rtos/os_tasks" -I"../../../../Application/services/test" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1029191840/os_alarms_cfg.o.d" -o ${OBJECTDIR}/_ext/1029191840/os_alarms_cfg.o ../../../../Application/services/rtos/os_cfg/os_alarms_cfg.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1029191840/os_sched_tbl_cfg.o: ../../../../Application/services/rtos/os_cfg/os_sched_tbl_cfg.c  .generated_files/flags/default/227c2c9b039d3dce56b599edce0c9cdbccc848ab .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1029191840" 
	@${RM} ${OBJECTDIR}/_ext/1029191840/os_sched_tbl_cfg.o.d 
	@${RM} ${OBJECTDIR}/_ext/1029191840/os_sched_tbl_cfg.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O0 -fno-common -I"../src" -I"../src/config/default" -I"../../../../Application/app/blink_mgr" -I"../../../../Application/app/fmh_mgr" -I"../../../../Application/app/lamp_mgr" -I"../../../../Application/app/sys_mgr" -I"../../../../Application/services/com" -I"../../../../Application/services/io" -I"../../../../Application/services/nvm" -I"../../../../Application/services/rtos/os" -I"../../../../Application/services/rtos/os_cfg" -I"../../../../Application/services/rtos/os_hooks" -I"../../../../Application/services/rtos/os_tasks" -I"../../../../Application/services/test" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1029191840/os_sched_tbl_cfg.o.d" -o ${OBJECTDIR}/_ext/1029191840/os_sched_tbl_cfg.o ../../../../Application/services/rtos/os_cfg/os_sched_tbl_cfg.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1029191840/os_task_cfg.o: ../../../../Application/services/rtos/os_cfg/os_task_cfg.c  .generated_files/flags/default/9e7a93dfd859ff34db5970e81ccbf61b6c3b4a82 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1029191840" 
	@${RM} ${OBJECTDIR}/_ext/1029191840/os_task_cfg.o.d 
	@${RM} ${OBJECTDIR}/_ext/1029191840/os_task_cfg.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O0 -fno-common -I"../src" -I"../src/config/default" -I"../../../../Application/app/blink_mgr" -I"../../../../Application/app/fmh_mgr" -I"../../../../Application/app/lamp_mgr" -I"../../../../Application/app/sys_mgr" -I"../../../../Application/services/com" -I"../../../../Application/services/io" -I"../../../../Application/services/nvm" -I"../../../../Application/services/rtos/os" -I"../../../../Application/services/rtos/os_cfg" -I"../../../../Application/services/rtos/os_hooks" -I"../../../../Application/services/rtos/os_tasks" -I"../../../../Application/services/test" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1029191840/os_task_cfg.o.d" -o ${OBJECTDIR}/_ext/1029191840/os_task_cfg.o ../../../../Application/services/rtos/os_cfg/os_task_cfg.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1215777004/hooks.o: ../../../../Application/services/rtos/os_hooks/hooks.c  .generated_files/flags/default/9c45f81145458e173e42126d68c70cdcb675c129 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1215777004" 
	@${RM} ${OBJECTDIR}/_ext/1215777004/hooks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1215777004/hooks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O0 -fno-common -I"../src" -I"../src/config/default" -I"../../../../Application/app/blink_mgr" -I"../../../../Application/app/fmh_mgr" -I"../../../../Application/app/lamp_mgr" -I"../../../../Application/app/sys_mgr" -I"../../../../Application/services/com" -I"../../../../Application/services/io" -I"../../../../Application/services/nvm" -I"../../../../Application/services/rtos/os" -I"../../../../Application/services/rtos/os_cfg" -I"../../../../Application/services/rtos/os_hooks" -I"../../../../Application/services/rtos/os_tasks" -I"../../../../Application/services/test" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1215777004/hooks.o.d" -o ${OBJECTDIR}/_ext/1215777004/hooks.o ../../../../Application/services/rtos/os_hooks/hooks.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1226446026/tasks.o: ../../../../Application/services/rtos/os_tasks/tasks.c  .generated_files/flags/default/b48424541e28ca5f20c266d269d0746e30ee2450 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1226446026" 
	@${RM} ${OBJECTDIR}/_ext/1226446026/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1226446026/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O0 -fno-common -I"../src" -I"../src/config/default" -I"../../../../Application/app/blink_mgr" -I"../../../../Application/app/fmh_mgr" -I"../../../../Application/app/lamp_mgr" -I"../../../../Application/app/sys_mgr" -I"../../../../Application/services/com" -I"../../../../Application/services/io" -I"../../../../Application/services/nvm" -I"../../../../Application/services/rtos/os" -I"../../../../Application/services/rtos/os_cfg" -I"../../../../Application/services/rtos/os_hooks" -I"../../../../Application/services/rtos/os_tasks" -I"../../../../Application/services/test" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1226446026/tasks.o.d" -o ${OBJECTDIR}/_ext/1226446026/tasks.o ../../../../Application/services/rtos/os_tasks/tasks.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1160748604/test.o: ../../../../Application/services/test/test.c  .generated_files/flags/default/14a6500169d68856349851db02543ea19787ba4e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1160748604" 
	@${RM} ${OBJECTDIR}/_ext/1160748604/test.o.d 
	@${RM} ${OBJECTDIR}/_ext/1160748604/test.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O0 -fno-common -I"../src" -I"../src/config/default" -I"../../../../Application/app/blink_mgr" -I"../../../../Application/app/fmh_mgr" -I"../../../../Application/app/lamp_mgr" -I"../../../../Application/app/sys_mgr" -I"../../../../Application/services/com" -I"../../../../Application/services/io" -I"../../../../Application/services/nvm" -I"../../../../Application/services/rtos/os" -I"../../../../Application/services/rtos/os_cfg" -I"../../../../Application/services/rtos/os_hooks" -I"../../../../Application/services/rtos/os_tasks" -I"../../../../Application/services/test" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1160748604/test.o.d" -o ${OBJECTDIR}/_ext/1160748604/test.o ../../../../Application/services/test/test.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60165182/plib_can2.o: ../src/config/default/peripheral/can/plib_can2.c  .generated_files/flags/default/9c935aa7a41ecde79ffd7a350a9109853a2b536f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60165182" 
	@${RM} ${OBJECTDIR}/_ext/60165182/plib_can2.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165182/plib_can2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O0 -fno-common -I"../src" -I"../src/config/default" -I"../../../../Application/app/blink_mgr" -I"../../../../Application/app/fmh_mgr" -I"../../../../Application/app/lamp_mgr" -I"../../../../Application/app/sys_mgr" -I"../../../../Application/services/com" -I"../../../../Application/services/io" -I"../../../../Application/services/nvm" -I"../../../../Application/services/rtos/os" -I"../../../../Application/services/rtos/os_cfg" -I"../../../../Application/services/rtos/os_hooks" -I"../../../../Application/services/rtos/os_tasks" -I"../../../../Application/services/test" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60165182/plib_can2.o.d" -o ${OBJECTDIR}/_ext/60165182/plib_can2.o ../src/config/default/peripheral/can/plib_can2.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60165520/plib_clk.o: ../src/config/default/peripheral/clk/plib_clk.c  .generated_files/flags/default/a9b6963bd42daae9a97a856b138e3a2df01ce265 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60165520" 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O0 -fno-common -I"../src" -I"../src/config/default" -I"../../../../Application/app/blink_mgr" -I"../../../../Application/app/fmh_mgr" -I"../../../../Application/app/lamp_mgr" -I"../../../../Application/app/sys_mgr" -I"../../../../Application/services/com" -I"../../../../Application/services/io" -I"../../../../Application/services/nvm" -I"../../../../Application/services/rtos/os" -I"../../../../Application/services/rtos/os_cfg" -I"../../../../Application/services/rtos/os_hooks" -I"../../../../Application/services/rtos/os_tasks" -I"../../../../Application/services/test" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60165520/plib_clk.o.d" -o ${OBJECTDIR}/_ext/60165520/plib_clk.o ../src/config/default/peripheral/clk/plib_clk.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1249264884/plib_coretimer.o: ../src/config/default/peripheral/coretimer/plib_coretimer.c  .generated_files/flags/default/4c18ba7164a792ecf69ea8241283450855400556 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1249264884" 
	@${RM} ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O0 -fno-common -I"../src" -I"../src/config/default" -I"../../../../Application/app/blink_mgr" -I"../../../../Application/app/fmh_mgr" -I"../../../../Application/app/lamp_mgr" -I"../../../../Application/app/sys_mgr" -I"../../../../Application/services/com" -I"../../../../Application/services/io" -I"../../../../Application/services/nvm" -I"../../../../Application/services/rtos/os" -I"../../../../Application/services/rtos/os_cfg" -I"../../../../Application/services/rtos/os_hooks" -I"../../../../Application/services/rtos/os_tasks" -I"../../../../Application/services/test" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d" -o ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o ../src/config/default/peripheral/coretimer/plib_coretimer.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865200349/plib_evic.o: ../src/config/default/peripheral/evic/plib_evic.c  .generated_files/flags/default/6f05e4a7b7255e73d82ef61815bcef1f2c2074d5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865200349" 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O0 -fno-common -I"../src" -I"../src/config/default" -I"../../../../Application/app/blink_mgr" -I"../../../../Application/app/fmh_mgr" -I"../../../../Application/app/lamp_mgr" -I"../../../../Application/app/sys_mgr" -I"../../../../Application/services/com" -I"../../../../Application/services/io" -I"../../../../Application/services/nvm" -I"../../../../Application/services/rtos/os" -I"../../../../Application/services/rtos/os_cfg" -I"../../../../Application/services/rtos/os_hooks" -I"../../../../Application/services/rtos/os_tasks" -I"../../../../Application/services/test" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865200349/plib_evic.o.d" -o ${OBJECTDIR}/_ext/1865200349/plib_evic.o ../src/config/default/peripheral/evic/plib_evic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865254177/plib_gpio.o: ../src/config/default/peripheral/gpio/plib_gpio.c  .generated_files/flags/default/d8b357b5e43a101769091a842db202f7ebd6411f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865254177" 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O0 -fno-common -I"../src" -I"../src/config/default" -I"../../../../Application/app/blink_mgr" -I"../../../../Application/app/fmh_mgr" -I"../../../../Application/app/lamp_mgr" -I"../../../../Application/app/sys_mgr" -I"../../../../Application/services/com" -I"../../../../Application/services/io" -I"../../../../Application/services/nvm" -I"../../../../Application/services/rtos/os" -I"../../../../Application/services/rtos/os_cfg" -I"../../../../Application/services/rtos/os_hooks" -I"../../../../Application/services/rtos/os_tasks" -I"../../../../Application/services/test" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ../src/config/default/peripheral/gpio/plib_gpio.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart6.o: ../src/config/default/peripheral/uart/plib_uart6.c  .generated_files/flags/default/bcd8c54df182d311973149c170b4135983f20ae5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart6.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart6.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O0 -fno-common -I"../src" -I"../src/config/default" -I"../../../../Application/app/blink_mgr" -I"../../../../Application/app/fmh_mgr" -I"../../../../Application/app/lamp_mgr" -I"../../../../Application/app/sys_mgr" -I"../../../../Application/services/com" -I"../../../../Application/services/io" -I"../../../../Application/services/nvm" -I"../../../../Application/services/rtos/os" -I"../../../../Application/services/rtos/os_cfg" -I"../../../../Application/services/rtos/os_hooks" -I"../../../../Application/services/rtos/os_tasks" -I"../../../../Application/services/test" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart6.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart6.o ../src/config/default/peripheral/uart/plib_uart6.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/flags/default/ec1acaee5a0828ff920a82f05492bb7d13b72118 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O0 -fno-common -I"../src" -I"../src/config/default" -I"../../../../Application/app/blink_mgr" -I"../../../../Application/app/fmh_mgr" -I"../../../../Application/app/lamp_mgr" -I"../../../../Application/app/sys_mgr" -I"../../../../Application/services/com" -I"../../../../Application/services/io" -I"../../../../Application/services/nvm" -I"../../../../Application/services/rtos/os" -I"../../../../Application/services/rtos/os_cfg" -I"../../../../Application/services/rtos/os_hooks" -I"../../../../Application/services/rtos/os_tasks" -I"../../../../Application/services/test" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ../src/config/default/stdio/xc32_monitor.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/flags/default/44e970a2b1d90e8b194eb813a89b1ea3d0d1b33c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O0 -fno-common -I"../src" -I"../src/config/default" -I"../../../../Application/app/blink_mgr" -I"../../../../Application/app/fmh_mgr" -I"../../../../Application/app/lamp_mgr" -I"../../../../Application/app/sys_mgr" -I"../../../../Application/services/com" -I"../../../../Application/services/io" -I"../../../../Application/services/nvm" -I"../../../../Application/services/rtos/os" -I"../../../../Application/services/rtos/os_cfg" -I"../../../../Application/services/rtos/os_hooks" -I"../../../../Application/services/rtos/os_tasks" -I"../../../../Application/services/test" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d" -o ${OBJECTDIR}/_ext/1171490990/initialization.o ../src/config/default/initialization.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/flags/default/64e8e27a4acb02745716ac8131ae8ec09e3ba208 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O0 -fno-common -I"../src" -I"../src/config/default" -I"../../../../Application/app/blink_mgr" -I"../../../../Application/app/fmh_mgr" -I"../../../../Application/app/lamp_mgr" -I"../../../../Application/app/sys_mgr" -I"../../../../Application/services/com" -I"../../../../Application/services/io" -I"../../../../Application/services/nvm" -I"../../../../Application/services/rtos/os" -I"../../../../Application/services/rtos/os_cfg" -I"../../../../Application/services/rtos/os_hooks" -I"../../../../Application/services/rtos/os_tasks" -I"../../../../Application/services/test" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" -o ${OBJECTDIR}/_ext/1171490990/interrupts.o ../src/config/default/interrupts.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/exceptions.o: ../src/config/default/exceptions.c  .generated_files/flags/default/c9ba0e469b1ed16701f58c2e4eda918441ab25fb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O0 -fno-common -I"../src" -I"../src/config/default" -I"../../../../Application/app/blink_mgr" -I"../../../../Application/app/fmh_mgr" -I"../../../../Application/app/lamp_mgr" -I"../../../../Application/app/sys_mgr" -I"../../../../Application/services/com" -I"../../../../Application/services/io" -I"../../../../Application/services/nvm" -I"../../../../Application/services/rtos/os" -I"../../../../Application/services/rtos/os_cfg" -I"../../../../Application/services/rtos/os_hooks" -I"../../../../Application/services/rtos/os_tasks" -I"../../../../Application/services/test" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/exceptions.o.d" -o ${OBJECTDIR}/_ext/1171490990/exceptions.o ../src/config/default/exceptions.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/default/ef5319ab00590dc5b8d16e5c2d2975a97956f48c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O0 -fno-common -I"../src" -I"../src/config/default" -I"../../../../Application/app/blink_mgr" -I"../../../../Application/app/fmh_mgr" -I"../../../../Application/app/lamp_mgr" -I"../../../../Application/app/sys_mgr" -I"../../../../Application/services/com" -I"../../../../Application/services/io" -I"../../../../Application/services/nvm" -I"../../../../Application/services/rtos/os" -I"../../../../Application/services/rtos/os_cfg" -I"../../../../Application/services/rtos/os_hooks" -I"../../../../Application/services/rtos/os_tasks" -I"../../../../Application/services/test" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/863777064/io.o: ../../../../Application/services/io/io.c  .generated_files/flags/default/f08219b765277500043e84d6285a1d60c5e3e410 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/863777064" 
	@${RM} ${OBJECTDIR}/_ext/863777064/io.o.d 
	@${RM} ${OBJECTDIR}/_ext/863777064/io.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O0 -fno-common -I"../src" -I"../src/config/default" -I"../../../../Application/app/blink_mgr" -I"../../../../Application/app/fmh_mgr" -I"../../../../Application/app/lamp_mgr" -I"../../../../Application/app/sys_mgr" -I"../../../../Application/services/com" -I"../../../../Application/services/io" -I"../../../../Application/services/nvm" -I"../../../../Application/services/rtos/os" -I"../../../../Application/services/rtos/os_cfg" -I"../../../../Application/services/rtos/os_hooks" -I"../../../../Application/services/rtos/os_tasks" -I"../../../../Application/services/test" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/863777064/io.o.d" -o ${OBJECTDIR}/_ext/863777064/io.o ../../../../Application/services/io/io.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/948661656/blink_mgr.o: ../../../../Application/app/blink_mgr/blink_mgr.c  .generated_files/flags/default/c8cad94053726d68abe6b7534caf9f00fe6d1fd5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/948661656" 
	@${RM} ${OBJECTDIR}/_ext/948661656/blink_mgr.o.d 
	@${RM} ${OBJECTDIR}/_ext/948661656/blink_mgr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O0 -fno-common -I"../src" -I"../src/config/default" -I"../../../../Application/app/blink_mgr" -I"../../../../Application/app/fmh_mgr" -I"../../../../Application/app/lamp_mgr" -I"../../../../Application/app/sys_mgr" -I"../../../../Application/services/com" -I"../../../../Application/services/io" -I"../../../../Application/services/nvm" -I"../../../../Application/services/rtos/os" -I"../../../../Application/services/rtos/os_cfg" -I"../../../../Application/services/rtos/os_hooks" -I"../../../../Application/services/rtos/os_tasks" -I"../../../../Application/services/test" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/948661656/blink_mgr.o.d" -o ${OBJECTDIR}/_ext/948661656/blink_mgr.o ../../../../Application/app/blink_mgr/blink_mgr.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1931992350/lamp_mgr.o: ../../../../Application/app/lamp_mgr/lamp_mgr.c  .generated_files/flags/default/37d21087cd13f6de3cc251c27671f98251664bba .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1931992350" 
	@${RM} ${OBJECTDIR}/_ext/1931992350/lamp_mgr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1931992350/lamp_mgr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O0 -fno-common -I"../src" -I"../src/config/default" -I"../../../../Application/app/blink_mgr" -I"../../../../Application/app/fmh_mgr" -I"../../../../Application/app/lamp_mgr" -I"../../../../Application/app/sys_mgr" -I"../../../../Application/services/com" -I"../../../../Application/services/io" -I"../../../../Application/services/nvm" -I"../../../../Application/services/rtos/os" -I"../../../../Application/services/rtos/os_cfg" -I"../../../../Application/services/rtos/os_hooks" -I"../../../../Application/services/rtos/os_tasks" -I"../../../../Application/services/test" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1931992350/lamp_mgr.o.d" -o ${OBJECTDIR}/_ext/1931992350/lamp_mgr.o ../../../../Application/app/lamp_mgr/lamp_mgr.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/316723737/sys_mgr.o: ../../../../Application/app/sys_mgr/sys_mgr.c  .generated_files/flags/default/15f05b09f88b052eae594a86dc3858665f7b65db .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/316723737" 
	@${RM} ${OBJECTDIR}/_ext/316723737/sys_mgr.o.d 
	@${RM} ${OBJECTDIR}/_ext/316723737/sys_mgr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O0 -fno-common -I"../src" -I"../src/config/default" -I"../../../../Application/app/blink_mgr" -I"../../../../Application/app/fmh_mgr" -I"../../../../Application/app/lamp_mgr" -I"../../../../Application/app/sys_mgr" -I"../../../../Application/services/com" -I"../../../../Application/services/io" -I"../../../../Application/services/nvm" -I"../../../../Application/services/rtos/os" -I"../../../../Application/services/rtos/os_cfg" -I"../../../../Application/services/rtos/os_hooks" -I"../../../../Application/services/rtos/os_tasks" -I"../../../../Application/services/test" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/316723737/sys_mgr.o.d" -o ${OBJECTDIR}/_ext/316723737/sys_mgr.o ../../../../Application/app/sys_mgr/sys_mgr.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1007290865/com.o: ../../../../Application/services/com/com.c  .generated_files/flags/default/3c6944ae88700d1f4018d4b46f5b6492715c4e3e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1007290865" 
	@${RM} ${OBJECTDIR}/_ext/1007290865/com.o.d 
	@${RM} ${OBJECTDIR}/_ext/1007290865/com.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O0 -fno-common -I"../src" -I"../src/config/default" -I"../../../../Application/app/blink_mgr" -I"../../../../Application/app/fmh_mgr" -I"../../../../Application/app/lamp_mgr" -I"../../../../Application/app/sys_mgr" -I"../../../../Application/services/com" -I"../../../../Application/services/io" -I"../../../../Application/services/nvm" -I"../../../../Application/services/rtos/os" -I"../../../../Application/services/rtos/os_cfg" -I"../../../../Application/services/rtos/os_hooks" -I"../../../../Application/services/rtos/os_tasks" -I"../../../../Application/services/test" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1007290865/com.o.d" -o ${OBJECTDIR}/_ext/1007290865/com.o ../../../../Application/services/com/com.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865760379/os.o: ../../../../Application/services/rtos/os/os.c  .generated_files/flags/default/876c299a5ab61f3f9bac5f328684efc6c74d2b67 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865760379" 
	@${RM} ${OBJECTDIR}/_ext/1865760379/os.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865760379/os.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O0 -fno-common -I"../src" -I"../src/config/default" -I"../../../../Application/app/blink_mgr" -I"../../../../Application/app/fmh_mgr" -I"../../../../Application/app/lamp_mgr" -I"../../../../Application/app/sys_mgr" -I"../../../../Application/services/com" -I"../../../../Application/services/io" -I"../../../../Application/services/nvm" -I"../../../../Application/services/rtos/os" -I"../../../../Application/services/rtos/os_cfg" -I"../../../../Application/services/rtos/os_hooks" -I"../../../../Application/services/rtos/os_tasks" -I"../../../../Application/services/test" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865760379/os.o.d" -o ${OBJECTDIR}/_ext/1865760379/os.o ../../../../Application/services/rtos/os/os.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865760379/os_alarms.o: ../../../../Application/services/rtos/os/os_alarms.c  .generated_files/flags/default/c7fe9d8a1d497852d7ace7955d254f8de73e8395 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865760379" 
	@${RM} ${OBJECTDIR}/_ext/1865760379/os_alarms.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865760379/os_alarms.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O0 -fno-common -I"../src" -I"../src/config/default" -I"../../../../Application/app/blink_mgr" -I"../../../../Application/app/fmh_mgr" -I"../../../../Application/app/lamp_mgr" -I"../../../../Application/app/sys_mgr" -I"../../../../Application/services/com" -I"../../../../Application/services/io" -I"../../../../Application/services/nvm" -I"../../../../Application/services/rtos/os" -I"../../../../Application/services/rtos/os_cfg" -I"../../../../Application/services/rtos/os_hooks" -I"../../../../Application/services/rtos/os_tasks" -I"../../../../Application/services/test" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865760379/os_alarms.o.d" -o ${OBJECTDIR}/_ext/1865760379/os_alarms.o ../../../../Application/services/rtos/os/os_alarms.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865760379/os_ipc.o: ../../../../Application/services/rtos/os/os_ipc.c  .generated_files/flags/default/d5f8f0f1363959d913f85d120b0f34cbf77f9ec2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865760379" 
	@${RM} ${OBJECTDIR}/_ext/1865760379/os_ipc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865760379/os_ipc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O0 -fno-common -I"../src" -I"../src/config/default" -I"../../../../Application/app/blink_mgr" -I"../../../../Application/app/fmh_mgr" -I"../../../../Application/app/lamp_mgr" -I"../../../../Application/app/sys_mgr" -I"../../../../Application/services/com" -I"../../../../Application/services/io" -I"../../../../Application/services/nvm" -I"../../../../Application/services/rtos/os" -I"../../../../Application/services/rtos/os_cfg" -I"../../../../Application/services/rtos/os_hooks" -I"../../../../Application/services/rtos/os_tasks" -I"../../../../Application/services/test" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865760379/os_ipc.o.d" -o ${OBJECTDIR}/_ext/1865760379/os_ipc.o ../../../../Application/services/rtos/os/os_ipc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865760379/os_sched_tbl.o: ../../../../Application/services/rtos/os/os_sched_tbl.c  .generated_files/flags/default/e3b393d4e7d9f1c601c236896dcf22960ee57c99 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865760379" 
	@${RM} ${OBJECTDIR}/_ext/1865760379/os_sched_tbl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865760379/os_sched_tbl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O0 -fno-common -I"../src" -I"../src/config/default" -I"../../../../Application/app/blink_mgr" -I"../../../../Application/app/fmh_mgr" -I"../../../../Application/app/lamp_mgr" -I"../../../../Application/app/sys_mgr" -I"../../../../Application/services/com" -I"../../../../Application/services/io" -I"../../../../Application/services/nvm" -I"../../../../Application/services/rtos/os" -I"../../../../Application/services/rtos/os_cfg" -I"../../../../Application/services/rtos/os_hooks" -I"../../../../Application/services/rtos/os_tasks" -I"../../../../Application/services/test" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865760379/os_sched_tbl.o.d" -o ${OBJECTDIR}/_ext/1865760379/os_sched_tbl.o ../../../../Application/services/rtos/os/os_sched_tbl.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865760379/os_task.o: ../../../../Application/services/rtos/os/os_task.c  .generated_files/flags/default/2cd300af810e2fa8e3f7c5dcd47dff196bc9d91b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865760379" 
	@${RM} ${OBJECTDIR}/_ext/1865760379/os_task.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865760379/os_task.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O0 -fno-common -I"../src" -I"../src/config/default" -I"../../../../Application/app/blink_mgr" -I"../../../../Application/app/fmh_mgr" -I"../../../../Application/app/lamp_mgr" -I"../../../../Application/app/sys_mgr" -I"../../../../Application/services/com" -I"../../../../Application/services/io" -I"../../../../Application/services/nvm" -I"../../../../Application/services/rtos/os" -I"../../../../Application/services/rtos/os_cfg" -I"../../../../Application/services/rtos/os_hooks" -I"../../../../Application/services/rtos/os_tasks" -I"../../../../Application/services/test" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865760379/os_task.o.d" -o ${OBJECTDIR}/_ext/1865760379/os_task.o ../../../../Application/services/rtos/os/os_task.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865760379/os_timers.o: ../../../../Application/services/rtos/os/os_timers.c  .generated_files/flags/default/8ef44528624901cdd89de6eeaec69bb92ff8b5c6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865760379" 
	@${RM} ${OBJECTDIR}/_ext/1865760379/os_timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865760379/os_timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O0 -fno-common -I"../src" -I"../src/config/default" -I"../../../../Application/app/blink_mgr" -I"../../../../Application/app/fmh_mgr" -I"../../../../Application/app/lamp_mgr" -I"../../../../Application/app/sys_mgr" -I"../../../../Application/services/com" -I"../../../../Application/services/io" -I"../../../../Application/services/nvm" -I"../../../../Application/services/rtos/os" -I"../../../../Application/services/rtos/os_cfg" -I"../../../../Application/services/rtos/os_hooks" -I"../../../../Application/services/rtos/os_tasks" -I"../../../../Application/services/test" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865760379/os_timers.o.d" -o ${OBJECTDIR}/_ext/1865760379/os_timers.o ../../../../Application/services/rtos/os/os_timers.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1029191840/os_alarms_cfg.o: ../../../../Application/services/rtos/os_cfg/os_alarms_cfg.c  .generated_files/flags/default/7e119f6a699cdbeb835658fe62b68a81d45c0978 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1029191840" 
	@${RM} ${OBJECTDIR}/_ext/1029191840/os_alarms_cfg.o.d 
	@${RM} ${OBJECTDIR}/_ext/1029191840/os_alarms_cfg.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O0 -fno-common -I"../src" -I"../src/config/default" -I"../../../../Application/app/blink_mgr" -I"../../../../Application/app/fmh_mgr" -I"../../../../Application/app/lamp_mgr" -I"../../../../Application/app/sys_mgr" -I"../../../../Application/services/com" -I"../../../../Application/services/io" -I"../../../../Application/services/nvm" -I"../../../../Application/services/rtos/os" -I"../../../../Application/services/rtos/os_cfg" -I"../../../../Application/services/rtos/os_hooks" -I"../../../../Application/services/rtos/os_tasks" -I"../../../../Application/services/test" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1029191840/os_alarms_cfg.o.d" -o ${OBJECTDIR}/_ext/1029191840/os_alarms_cfg.o ../../../../Application/services/rtos/os_cfg/os_alarms_cfg.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1029191840/os_sched_tbl_cfg.o: ../../../../Application/services/rtos/os_cfg/os_sched_tbl_cfg.c  .generated_files/flags/default/b08aa1719a7f97f8bfe8fd826408ad82745725ec .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1029191840" 
	@${RM} ${OBJECTDIR}/_ext/1029191840/os_sched_tbl_cfg.o.d 
	@${RM} ${OBJECTDIR}/_ext/1029191840/os_sched_tbl_cfg.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O0 -fno-common -I"../src" -I"../src/config/default" -I"../../../../Application/app/blink_mgr" -I"../../../../Application/app/fmh_mgr" -I"../../../../Application/app/lamp_mgr" -I"../../../../Application/app/sys_mgr" -I"../../../../Application/services/com" -I"../../../../Application/services/io" -I"../../../../Application/services/nvm" -I"../../../../Application/services/rtos/os" -I"../../../../Application/services/rtos/os_cfg" -I"../../../../Application/services/rtos/os_hooks" -I"../../../../Application/services/rtos/os_tasks" -I"../../../../Application/services/test" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1029191840/os_sched_tbl_cfg.o.d" -o ${OBJECTDIR}/_ext/1029191840/os_sched_tbl_cfg.o ../../../../Application/services/rtos/os_cfg/os_sched_tbl_cfg.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1029191840/os_task_cfg.o: ../../../../Application/services/rtos/os_cfg/os_task_cfg.c  .generated_files/flags/default/e3f4a976d973460d9c470069d62b1f9f8bd4c436 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1029191840" 
	@${RM} ${OBJECTDIR}/_ext/1029191840/os_task_cfg.o.d 
	@${RM} ${OBJECTDIR}/_ext/1029191840/os_task_cfg.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O0 -fno-common -I"../src" -I"../src/config/default" -I"../../../../Application/app/blink_mgr" -I"../../../../Application/app/fmh_mgr" -I"../../../../Application/app/lamp_mgr" -I"../../../../Application/app/sys_mgr" -I"../../../../Application/services/com" -I"../../../../Application/services/io" -I"../../../../Application/services/nvm" -I"../../../../Application/services/rtos/os" -I"../../../../Application/services/rtos/os_cfg" -I"../../../../Application/services/rtos/os_hooks" -I"../../../../Application/services/rtos/os_tasks" -I"../../../../Application/services/test" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1029191840/os_task_cfg.o.d" -o ${OBJECTDIR}/_ext/1029191840/os_task_cfg.o ../../../../Application/services/rtos/os_cfg/os_task_cfg.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1215777004/hooks.o: ../../../../Application/services/rtos/os_hooks/hooks.c  .generated_files/flags/default/e045ce4e506f20141a72c2eeee76f69c368f86c2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1215777004" 
	@${RM} ${OBJECTDIR}/_ext/1215777004/hooks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1215777004/hooks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O0 -fno-common -I"../src" -I"../src/config/default" -I"../../../../Application/app/blink_mgr" -I"../../../../Application/app/fmh_mgr" -I"../../../../Application/app/lamp_mgr" -I"../../../../Application/app/sys_mgr" -I"../../../../Application/services/com" -I"../../../../Application/services/io" -I"../../../../Application/services/nvm" -I"../../../../Application/services/rtos/os" -I"../../../../Application/services/rtos/os_cfg" -I"../../../../Application/services/rtos/os_hooks" -I"../../../../Application/services/rtos/os_tasks" -I"../../../../Application/services/test" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1215777004/hooks.o.d" -o ${OBJECTDIR}/_ext/1215777004/hooks.o ../../../../Application/services/rtos/os_hooks/hooks.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1226446026/tasks.o: ../../../../Application/services/rtos/os_tasks/tasks.c  .generated_files/flags/default/b09530fac625797599aa143cf7d8a43e2d32ff36 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1226446026" 
	@${RM} ${OBJECTDIR}/_ext/1226446026/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1226446026/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O0 -fno-common -I"../src" -I"../src/config/default" -I"../../../../Application/app/blink_mgr" -I"../../../../Application/app/fmh_mgr" -I"../../../../Application/app/lamp_mgr" -I"../../../../Application/app/sys_mgr" -I"../../../../Application/services/com" -I"../../../../Application/services/io" -I"../../../../Application/services/nvm" -I"../../../../Application/services/rtos/os" -I"../../../../Application/services/rtos/os_cfg" -I"../../../../Application/services/rtos/os_hooks" -I"../../../../Application/services/rtos/os_tasks" -I"../../../../Application/services/test" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1226446026/tasks.o.d" -o ${OBJECTDIR}/_ext/1226446026/tasks.o ../../../../Application/services/rtos/os_tasks/tasks.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1160748604/test.o: ../../../../Application/services/test/test.c  .generated_files/flags/default/5b46c9e66e6121a16d17f83d9f824cfbf595c9ab .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1160748604" 
	@${RM} ${OBJECTDIR}/_ext/1160748604/test.o.d 
	@${RM} ${OBJECTDIR}/_ext/1160748604/test.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O0 -fno-common -I"../src" -I"../src/config/default" -I"../../../../Application/app/blink_mgr" -I"../../../../Application/app/fmh_mgr" -I"../../../../Application/app/lamp_mgr" -I"../../../../Application/app/sys_mgr" -I"../../../../Application/services/com" -I"../../../../Application/services/io" -I"../../../../Application/services/nvm" -I"../../../../Application/services/rtos/os" -I"../../../../Application/services/rtos/os_cfg" -I"../../../../Application/services/rtos/os_hooks" -I"../../../../Application/services/rtos/os_tasks" -I"../../../../Application/services/test" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1160748604/test.o.d" -o ${OBJECTDIR}/_ext/1160748604/test.o ../../../../Application/services/test/test.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60165182/plib_can2.o: ../src/config/default/peripheral/can/plib_can2.c  .generated_files/flags/default/46ee1acafaf78c6d222f18619a275785dbc45173 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60165182" 
	@${RM} ${OBJECTDIR}/_ext/60165182/plib_can2.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165182/plib_can2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O0 -fno-common -I"../src" -I"../src/config/default" -I"../../../../Application/app/blink_mgr" -I"../../../../Application/app/fmh_mgr" -I"../../../../Application/app/lamp_mgr" -I"../../../../Application/app/sys_mgr" -I"../../../../Application/services/com" -I"../../../../Application/services/io" -I"../../../../Application/services/nvm" -I"../../../../Application/services/rtos/os" -I"../../../../Application/services/rtos/os_cfg" -I"../../../../Application/services/rtos/os_hooks" -I"../../../../Application/services/rtos/os_tasks" -I"../../../../Application/services/test" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60165182/plib_can2.o.d" -o ${OBJECTDIR}/_ext/60165182/plib_can2.o ../src/config/default/peripheral/can/plib_can2.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60165520/plib_clk.o: ../src/config/default/peripheral/clk/plib_clk.c  .generated_files/flags/default/cc21190e74d987c46d6375b933b57dc56e2a3eb2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60165520" 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O0 -fno-common -I"../src" -I"../src/config/default" -I"../../../../Application/app/blink_mgr" -I"../../../../Application/app/fmh_mgr" -I"../../../../Application/app/lamp_mgr" -I"../../../../Application/app/sys_mgr" -I"../../../../Application/services/com" -I"../../../../Application/services/io" -I"../../../../Application/services/nvm" -I"../../../../Application/services/rtos/os" -I"../../../../Application/services/rtos/os_cfg" -I"../../../../Application/services/rtos/os_hooks" -I"../../../../Application/services/rtos/os_tasks" -I"../../../../Application/services/test" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60165520/plib_clk.o.d" -o ${OBJECTDIR}/_ext/60165520/plib_clk.o ../src/config/default/peripheral/clk/plib_clk.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1249264884/plib_coretimer.o: ../src/config/default/peripheral/coretimer/plib_coretimer.c  .generated_files/flags/default/d6982c0d3c9c2432e81cb34cc4a0a38c820c34a8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1249264884" 
	@${RM} ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O0 -fno-common -I"../src" -I"../src/config/default" -I"../../../../Application/app/blink_mgr" -I"../../../../Application/app/fmh_mgr" -I"../../../../Application/app/lamp_mgr" -I"../../../../Application/app/sys_mgr" -I"../../../../Application/services/com" -I"../../../../Application/services/io" -I"../../../../Application/services/nvm" -I"../../../../Application/services/rtos/os" -I"../../../../Application/services/rtos/os_cfg" -I"../../../../Application/services/rtos/os_hooks" -I"../../../../Application/services/rtos/os_tasks" -I"../../../../Application/services/test" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d" -o ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o ../src/config/default/peripheral/coretimer/plib_coretimer.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865200349/plib_evic.o: ../src/config/default/peripheral/evic/plib_evic.c  .generated_files/flags/default/64d8b51677fef38c0af581394f28dfa4d213aa57 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865200349" 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O0 -fno-common -I"../src" -I"../src/config/default" -I"../../../../Application/app/blink_mgr" -I"../../../../Application/app/fmh_mgr" -I"../../../../Application/app/lamp_mgr" -I"../../../../Application/app/sys_mgr" -I"../../../../Application/services/com" -I"../../../../Application/services/io" -I"../../../../Application/services/nvm" -I"../../../../Application/services/rtos/os" -I"../../../../Application/services/rtos/os_cfg" -I"../../../../Application/services/rtos/os_hooks" -I"../../../../Application/services/rtos/os_tasks" -I"../../../../Application/services/test" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865200349/plib_evic.o.d" -o ${OBJECTDIR}/_ext/1865200349/plib_evic.o ../src/config/default/peripheral/evic/plib_evic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865254177/plib_gpio.o: ../src/config/default/peripheral/gpio/plib_gpio.c  .generated_files/flags/default/26ca45c7cc1c9667ef0a7acbc34dde4e74a48ce5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865254177" 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O0 -fno-common -I"../src" -I"../src/config/default" -I"../../../../Application/app/blink_mgr" -I"../../../../Application/app/fmh_mgr" -I"../../../../Application/app/lamp_mgr" -I"../../../../Application/app/sys_mgr" -I"../../../../Application/services/com" -I"../../../../Application/services/io" -I"../../../../Application/services/nvm" -I"../../../../Application/services/rtos/os" -I"../../../../Application/services/rtos/os_cfg" -I"../../../../Application/services/rtos/os_hooks" -I"../../../../Application/services/rtos/os_tasks" -I"../../../../Application/services/test" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ../src/config/default/peripheral/gpio/plib_gpio.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart6.o: ../src/config/default/peripheral/uart/plib_uart6.c  .generated_files/flags/default/84476c4c9417163fa3c8959d252597ebc36461b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart6.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart6.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O0 -fno-common -I"../src" -I"../src/config/default" -I"../../../../Application/app/blink_mgr" -I"../../../../Application/app/fmh_mgr" -I"../../../../Application/app/lamp_mgr" -I"../../../../Application/app/sys_mgr" -I"../../../../Application/services/com" -I"../../../../Application/services/io" -I"../../../../Application/services/nvm" -I"../../../../Application/services/rtos/os" -I"../../../../Application/services/rtos/os_cfg" -I"../../../../Application/services/rtos/os_hooks" -I"../../../../Application/services/rtos/os_tasks" -I"../../../../Application/services/test" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart6.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart6.o ../src/config/default/peripheral/uart/plib_uart6.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/flags/default/8e987373df7dacdaef1303b886c8d9cfd7e0cbd9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O0 -fno-common -I"../src" -I"../src/config/default" -I"../../../../Application/app/blink_mgr" -I"../../../../Application/app/fmh_mgr" -I"../../../../Application/app/lamp_mgr" -I"../../../../Application/app/sys_mgr" -I"../../../../Application/services/com" -I"../../../../Application/services/io" -I"../../../../Application/services/nvm" -I"../../../../Application/services/rtos/os" -I"../../../../Application/services/rtos/os_cfg" -I"../../../../Application/services/rtos/os_hooks" -I"../../../../Application/services/rtos/os_tasks" -I"../../../../Application/services/test" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ../src/config/default/stdio/xc32_monitor.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/flags/default/b430529003bdf9c53e9e9c47f1b669b5aac2beec .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O0 -fno-common -I"../src" -I"../src/config/default" -I"../../../../Application/app/blink_mgr" -I"../../../../Application/app/fmh_mgr" -I"../../../../Application/app/lamp_mgr" -I"../../../../Application/app/sys_mgr" -I"../../../../Application/services/com" -I"../../../../Application/services/io" -I"../../../../Application/services/nvm" -I"../../../../Application/services/rtos/os" -I"../../../../Application/services/rtos/os_cfg" -I"../../../../Application/services/rtos/os_hooks" -I"../../../../Application/services/rtos/os_tasks" -I"../../../../Application/services/test" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d" -o ${OBJECTDIR}/_ext/1171490990/initialization.o ../src/config/default/initialization.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/flags/default/5a336773eff434d043fdd874c5f403abd796d55e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O0 -fno-common -I"../src" -I"../src/config/default" -I"../../../../Application/app/blink_mgr" -I"../../../../Application/app/fmh_mgr" -I"../../../../Application/app/lamp_mgr" -I"../../../../Application/app/sys_mgr" -I"../../../../Application/services/com" -I"../../../../Application/services/io" -I"../../../../Application/services/nvm" -I"../../../../Application/services/rtos/os" -I"../../../../Application/services/rtos/os_cfg" -I"../../../../Application/services/rtos/os_hooks" -I"../../../../Application/services/rtos/os_tasks" -I"../../../../Application/services/test" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" -o ${OBJECTDIR}/_ext/1171490990/interrupts.o ../src/config/default/interrupts.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/exceptions.o: ../src/config/default/exceptions.c  .generated_files/flags/default/4c2682c0d63ba7efc7f80972361a123f67d9bf5f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O0 -fno-common -I"../src" -I"../src/config/default" -I"../../../../Application/app/blink_mgr" -I"../../../../Application/app/fmh_mgr" -I"../../../../Application/app/lamp_mgr" -I"../../../../Application/app/sys_mgr" -I"../../../../Application/services/com" -I"../../../../Application/services/io" -I"../../../../Application/services/nvm" -I"../../../../Application/services/rtos/os" -I"../../../../Application/services/rtos/os_cfg" -I"../../../../Application/services/rtos/os_hooks" -I"../../../../Application/services/rtos/os_tasks" -I"../../../../Application/services/test" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/exceptions.o.d" -o ${OBJECTDIR}/_ext/1171490990/exceptions.o ../src/config/default/exceptions.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/default/1821c4af054fa33ab25c47de1947dca851e18677 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O0 -fno-common -I"../src" -I"../src/config/default" -I"../../../../Application/app/blink_mgr" -I"../../../../Application/app/fmh_mgr" -I"../../../../Application/app/lamp_mgr" -I"../../../../Application/app/sys_mgr" -I"../../../../Application/services/com" -I"../../../../Application/services/io" -I"../../../../Application/services/nvm" -I"../../../../Application/services/rtos/os" -I"../../../../Application/services/rtos/os_cfg" -I"../../../../Application/services/rtos/os_hooks" -I"../../../../Application/services/rtos/os_tasks" -I"../../../../Application/services/test" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/863777064/io.o: ../../../../Application/services/io/io.c  .generated_files/flags/default/6db6263430cc0500f873a959074681c02aaa7c7c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/863777064" 
	@${RM} ${OBJECTDIR}/_ext/863777064/io.o.d 
	@${RM} ${OBJECTDIR}/_ext/863777064/io.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O0 -fno-common -I"../src" -I"../src/config/default" -I"../../../../Application/app/blink_mgr" -I"../../../../Application/app/fmh_mgr" -I"../../../../Application/app/lamp_mgr" -I"../../../../Application/app/sys_mgr" -I"../../../../Application/services/com" -I"../../../../Application/services/io" -I"../../../../Application/services/nvm" -I"../../../../Application/services/rtos/os" -I"../../../../Application/services/rtos/os_cfg" -I"../../../../Application/services/rtos/os_hooks" -I"../../../../Application/services/rtos/os_tasks" -I"../../../../Application/services/test" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/863777064/io.o.d" -o ${OBJECTDIR}/_ext/863777064/io.o ../../../../Application/services/io/io.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/HEADLIGHT_PIC32MZ_EF_CURIOSITY.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../src/config/default/p32MZ2048EFM144.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/HEADLIGHT_PIC32MZ_EF_CURIOSITY.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -mreserve=data@0x0:0x37F   -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=512,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
${DISTDIR}/HEADLIGHT_PIC32MZ_EF_CURIOSITY.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/default/p32MZ2048EFM144.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/HEADLIGHT_PIC32MZ_EF_CURIOSITY.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=512,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex ${DISTDIR}/HEADLIGHT_PIC32MZ_EF_CURIOSITY.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(wildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
