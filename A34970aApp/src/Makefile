TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = A34970a
# A34970a.dbd will be created and installed
DBD += A34970a.dbd

# A34970a.dbd will be made up from these files:
A34970a_DBD += base.dbd
A34970a_DBD += asyn.dbd
A34970a_DBD += calc.dbd
A34970a_DBD += stream.dbd
A34970a_DBD += drvAsynSerialPort.dbd
A34970a_DBD += drvAsynIPPort.dbd
A34970a_DBD += system.dbd
A34970a_DBD += devIocStats.dbd
A34970a_DBD += asSupport.dbd
A34970a_DBD += caPutLog.dbd

#A34970a_DBD += aSubRecord.dbd

# Include dbd files from all support applications:
#A34970a_DBD += xxx.dbd

# Add all the support libraries needed by this IOC
#A34970a_LIBS += xxx

# A34970a_registerRecordDeviceDriver.cpp derives from A34970a.dbd
A34970a_SRCS += A34970a_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
A34970a_SRCS_DEFAULT += A34970aMain.cpp
A34970a_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#A34970a_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
A34970a_LIBS += $(EPICS_BASE_IOC_LIBS)
A34970a_LIBS += asyn stream calc
A34970a_LIBS += devIocStats autosave caPutLog


#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

