#!../../bin/linux-x86_64/A34970a

#- You may have to change A34970a to something else
#- everywhere it appears in this file

< envPaths

## Location of stream protocol files
epicsEnvSet("ENGINEER",                 "kgofron x5283")
epicsEnvSet("LOCATION",                 "XF11BM-B")
#epicsEnvSet("STREAM_PROTOCOL_PATH",     "../../protocol")
epicsEnvSet("STREAM_PROTOCOL_PATH",     "../../db")

epicsEnvSet("Sys",   			"XF:11BM-B")
epicsEnvSet("Dev",   			"{Agilent:1}")
epicsEnvSet("SYSPORT",  		"AGILENT")
epicsEnvSet("CTSYS",			"XF:11BM-CT")
epicsEnvSet("TSADR",			"192.168.1.51")

epicsEnvSet("EPICS_CA_AUTO_ADDR_LIST", 	"NO")
epicsEnvSet("EPICS_CA_ADDR_LIST",	"192.168.1.255")



## Register all support components
dbLoadDatabase("../../dbd/A34970a.dbd",0,0)
A34970a_registerRecordDeviceDriver(pdbbase) 

## Configure serial port for PS controller
drvAsynIPPortConfigure("$(SYSPORT)","192.168.1.51:4001")

## Load record instances
dbLoadRecords("../../db/devA34970a.db","P=$(Sys),R=$(Dev),PORT=$(SYSPORT),A=0,user=kaz")
#dbLoadRecords("../../db/A34970a.db","P=$(Sys),R=$(Dev),PORT=$(SYSPORT),A=0,user=kaz")
dbLoadRecords("../../db/asynRecord.db")

iocInit()

## Start any sequence programs
#seq sncA34970a,"user=kaz"
