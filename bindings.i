
// Header file WiringPi/wiringPi/wiringPi.h
extern int wiringPiFailure (int fatal, const char *message, ...) ;
extern struct wiringPiNodeStruct *wiringPiFindNode (int pin) ;
extern struct wiringPiNodeStruct *wiringPiNewNode  (int pinBase, int numPins) ;
extern int  wiringPiSetup       (void) ;
extern int  wiringPiSetupSys    (void) ;
extern int  wiringPiSetupGpio   (void) ;
extern int  wiringPiSetupPhys   (void) ;
extern void pinModeAlt          (int pin, int mode) ;
extern void pinMode             (int pin, int mode) ;
extern void pullUpDnControl     (int pin, int pud) ;
extern int  digitalRead         (int pin) ;
extern void digitalWrite        (int pin, int value) ;
extern void pwmWrite            (int pin, int value) ;
extern int  analogRead          (int pin) ;
extern void analogWrite         (int pin, int value) ;
extern int  wiringPiSetupPiFace (void) ;
extern int  wiringPiSetupPiFaceForGpioProg (void) ;	// Don't use this - for gpio program only
extern int  piBoardRev          (void) ;
extern void piBoardId           (int *model, int *rev, int *mem, int *maker, int *overVolted) ;
extern int  wpiPinToGpio        (int wpiPin) ;
extern int  physPinToGpio       (int physPin) ;
extern void setPadDrive         (int group, int value) ;
extern int  getAlt              (int pin) ;
extern void pwmToneWrite        (int pin, int freq) ;
extern void digitalWriteByte    (int value) ;
extern void pwmSetMode          (int mode) ;
extern void pwmSetRange         (unsigned int range) ;
extern void pwmSetClock         (int divisor) ;
extern void gpioClockSet        (int pin, int freq) ;
extern int  waitForInterrupt    (int pin, int mS) ;
extern int  piThreadCreate      (void *(*fn)(void *)) ;
extern void piLock              (int key) ;
extern void piUnlock            (int key) ;
extern int piHiPri (const int pri) ;
extern void         delay             (unsigned int howLong) ;
extern void         delayMicroseconds (unsigned int howLong) ;
extern unsigned int millis            (void) ;
extern unsigned int micros            (void) ;

// Header file WiringPi/wiringPi/wiringPiI2C.h
extern int wiringPiI2CRead           (int fd) ;
extern int wiringPiI2CReadReg8       (int fd, int reg) ;
extern int wiringPiI2CReadReg16      (int fd, int reg) ;
extern int wiringPiI2CWrite          (int fd, int data) ;
extern int wiringPiI2CWriteReg8      (int fd, int reg, int data) ;
extern int wiringPiI2CWriteReg16     (int fd, int reg, int data) ;
extern int wiringPiI2CSetupInterface (const char *device, int devId) ;
extern int wiringPiI2CSetup          (const int devId) ;

// Header file WiringPi/wiringPi/wiringPiSPI.h
int wiringPiSPIGetFd     (int channel) ;
int wiringPiSPIDataRW    (int channel, unsigned char *data, int len) ;
int wiringPiSPISetupMode (int channel, int speed, int mode) ;
int wiringPiSPISetup     (int channel, int speed) ;

// Header file WiringPi/wiringPi/wiringSerial.h
extern int   serialOpen      (const char *device, const int baud) ;
extern void  serialClose     (const int fd) ;
extern void  serialFlush     (const int fd) ;
extern void  serialPutchar   (const int fd, const unsigned char c) ;
extern void  serialPuts      (const int fd, const char *s) ;
extern void  serialPrintf    (const int fd, const char *message, ...) ;
extern int   serialDataAvail (const int fd) ;
extern int   serialGetchar   (const int fd) ;

// Header file WiringPi/wiringPi/wiringShift.h
extern uint8_t shiftIn      (uint8_t dPin, uint8_t cPin, uint8_t order) ;
extern void    shiftOut     (uint8_t dPin, uint8_t cPin, uint8_t order, uint8_t val) ;

// Header file WiringPi/wiringPi/wpiExtensions.h
extern int loadWPiExtension (char *progName, char *extensionData, int verbose) ;

// Header file WiringPi/wiringPi/drcSerial.h
extern int drcSetupSerial (const int pinBase, const int numPins, const char *device, const int baud) ;

// Header file WiringPi/wiringPi/max31855.h
extern int max31855Setup (int pinBase, int spiChannel) ;

// Header file WiringPi/wiringPi/max5322.h
extern int max5322Setup (int pinBase, int spiChannel) ;

// Header file WiringPi/wiringPi/mcp23008.h
extern int mcp23008Setup (const int pinBase, const int i2cAddress) ;

// Header file WiringPi/wiringPi/mcp23016.h
extern int mcp23016Setup (const int pinBase, const int i2cAddress) ;

// Header file WiringPi/wiringPi/mcp23016reg.h

// Header file WiringPi/wiringPi/mcp23017.h
extern int mcp23017Setup (const int pinBase, const int i2cAddress) ;

// Header file WiringPi/wiringPi/mcp23s08.h
extern int mcp23s08Setup (const int pinBase, const int spiPort, const int devId) ;

// Header file WiringPi/wiringPi/mcp23s17.h
extern int mcp23s17Setup (int pinBase, int spiPort, int devId) ;

// Header file WiringPi/wiringPi/mcp23x0817.h

// Header file WiringPi/wiringPi/mcp23x08.h

// Header file WiringPi/wiringPi/mcp3002.h
extern int mcp3002Setup (int pinBase, int spiChannel) ;

// Header file WiringPi/wiringPi/mcp3004.h
extern int mcp3004Setup (int pinBase, int spiChannel) ;

// Header file WiringPi/wiringPi/mcp3422.h
extern int mcp3422Setup (int pinBase, int i2cAddress, int sampleRate, int gain) ;

// Header file WiringPi/wiringPi/mcp4802.h
extern int mcp4802Setup (int pinBase, int spiChannel) ;

// Header file WiringPi/wiringPi/pcf8574.h
extern int pcf8574Setup (const int pinBase, const int i2cAddress) ;

// Header file WiringPi/wiringPi/pcf8591.h
extern int pcf8591Setup (const int pinBase, const int i2cAddress) ;

// Header file WiringPi/wiringPi/sn3218.h
extern int sn3218Setup (int pinBase) ;

// Header file WiringPi/wiringPi/softPwm.h
extern int  softPwmCreate (int pin, int value, int range) ;
extern void softPwmWrite  (int pin, int value) ;
extern void softPwmStop   (int pin) ;

// Header file WiringPi/wiringPi/softServo.h
extern void softServoWrite  (int pin, int value) ;
extern int softServoSetup   (int p0, int p1, int p2, int p3, int p4, int p5, int p6, int p7) ;

// Header file WiringPi/wiringPi/softTone.h
extern int  softToneCreate (int pin) ;
extern void softToneStop   (int pin) ;
extern void softToneWrite  (int pin, int freq) ;

// Header file WiringPi/wiringPi/sr595.h
extern int sr595Setup (const int pinBase, const int numPins,
	const int dataPin, const int clockPin, const int latchPin) ;

// Header file WiringPi/devLib/ds1302.h
extern unsigned int ds1302rtcRead       (const int reg) ;
extern void         ds1302rtcWrite      (const int reg, const unsigned int data) ;
extern unsigned int ds1302ramRead       (const int addr) ;
extern void         ds1302ramWrite      (const int addr, const unsigned int data) ;
extern void         ds1302clockRead     (int clockData [8]) ;
extern void         ds1302clockWrite    (const int clockData [8]) ;
extern void         ds1302trickleCharge (const int diodes, const int resistors) ;
extern void         ds1302setup         (const int clockPin, const int dataPin, const int csPin) ;

// Header file WiringPi/devLib/font.h

// Header file WiringPi/devLib/gertboard.h
extern void gertboardAnalogWrite (const int chan, const int value) ;
extern int  gertboardAnalogRead  (const int chan) ;
extern int  gertboardSPISetup    (void) ;
extern int  gertboardAnalogSetup (const int pinBase) ;

// Header file WiringPi/devLib/lcd128x64.h
extern void lcd128x64setOrigin         (int x, int y) ;
extern void lcd128x64setOrientation    (int orientation) ;
extern void lcd128x64orientCoordinates (int *x, int *y) ;
extern void lcd128x64getScreenSize     (int *x, int *y) ;
extern void lcd128x64point             (int  x, int  y, int colour) ;
extern void lcd128x64line              (int x0, int y0, int x1, int y1, int colour) ;
extern void lcd128x64lineTo            (int  x, int  y, int colour) ;
extern void lcd128x64rectangle         (int x1, int y1, int x2, int y2, int colour, int filled) ;
extern void lcd128x64circle            (int  x, int  y, int  r, int colour, int filled) ;
extern void lcd128x64ellipse           (int cx, int cy, int xRadius, int yRadius, int colour, int filled) ;
extern void lcd128x64putchar           (int  x, int  y, int c, int bgCol, int fgCol) ;
extern void lcd128x64puts              (int  x, int  y, const char *str, int bgCol, int fgCol) ;
extern void lcd128x64update            (void) ;
extern void lcd128x64clear             (int colour) ;
extern int  lcd128x64setup             (void) ;

// Header file WiringPi/devLib/lcd.h
extern void lcdHome        (const int fd) ;
extern void lcdClear       (const int fd) ;
extern void lcdDisplay     (const int fd, int state) ;
extern void lcdCursor      (const int fd, int state) ;
extern void lcdCursorBlink (const int fd, int state) ;
extern void lcdSendCommand (const int fd, unsigned char command) ;
extern void lcdPosition    (const int fd, int x, int y) ;
extern void lcdCharDef     (const int fd, int index, unsigned char data [8]) ;
extern void lcdPutchar     (const int fd, unsigned char data) ;
extern void lcdPuts        (const int fd, const char *string) ;
extern void lcdPrintf      (const int fd, const char *message, ...) ;
extern int  lcdInit (const int rows, const int cols, const int bits,
	const int rs, const int strb,
	const int d0, const int d1, const int d2, const int d3, const int d4,
	const int d5, const int d6, const int d7) ;

// Header file WiringPi/devLib/maxdetect.h
int maxDetectRead (const int pin, unsigned char buffer [4]) ;
int readRHT03 (const int pin, int *temp, int *rh) ;

// Header file WiringPi/devLib/piFace.h
extern int  piFaceSetup (const int pinBase) ;

// Header file WiringPi/devLib/piGlow.h
extern void piGlow1     (const int leg,  const int ring, const int intensity) ;
extern void piGlowLeg   (const int leg,  const int intensity) ;
extern void piGlowRing  (const int ring, const int intensity) ;
extern void piGlowSetup (int clear) ;

// Header file WiringPi/devLib/piNes.h
extern int          setupNesJoystick (int dPin, int cPin, int lPin) ;
extern unsigned int  readNesJoystick (int joystick) ;
