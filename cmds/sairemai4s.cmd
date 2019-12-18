
require sairemai4s, 2.0.0

#ASIN ?
#MODBUS ?

drvAsynIPPortConfigure("conn-ISrc-ISS-ATU", "10.10.1.36:502", 0, 0, 1)

modbusInterposeConfig("conn-ISrc-ISS-ATU", 0, 1000, 0)
 
drvModbusAsynConfigure("sai4s-modbus-write-word", "conn-ISrc-ISS-ATU", 0, 6, 0, 10, 0, 1000, "Function6")

drvModbusAsynConfigure("sai4s-modbus-read-word", "conn-ISrc-ISS-ATU", 0, 3, 100, 5, 0, 1000, "Function3")

dbLoadRecords("sairemai4s.db")

