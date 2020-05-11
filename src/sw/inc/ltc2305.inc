#define I2C_ADDR_DEVICE_LTC2305 0x08

#define S_D 7
#define O_S 6
#define UNI 3
#define SLP 2

#define LTC2305_CDE_READ_CHO (1<<S_D | 0<<O_S)
#define LTC2305_CDE_READ_CH1 (1<<S_D | 1<<O_S)