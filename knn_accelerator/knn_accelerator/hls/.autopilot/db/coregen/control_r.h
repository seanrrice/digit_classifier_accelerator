// 0x00 : reserved
// 0x04 : reserved
// 0x08 : reserved
// 0x0c : reserved
// 0x10 : Data signal of X_test
//        bit 31~0 - X_test[31:0] (Read/Write)
// 0x14 : Data signal of X_test
//        bit 31~0 - X_test[63:32] (Read/Write)
// 0x18 : reserved
// 0x1c : Data signal of X_train
//        bit 31~0 - X_train[31:0] (Read/Write)
// 0x20 : Data signal of X_train
//        bit 31~0 - X_train[63:32] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of y_train
//        bit 31~0 - y_train[31:0] (Read/Write)
// 0x2c : Data signal of y_train
//        bit 31~0 - y_train[63:32] (Read/Write)
// 0x30 : reserved
// 0x34 : Data signal of y_test
//        bit 31~0 - y_test[31:0] (Read/Write)
// 0x38 : Data signal of y_test
//        bit 31~0 - y_test[63:32] (Read/Write)
// 0x3c : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define CONTROL_R_ADDR_X_TEST_DATA  0x10
#define CONTROL_R_BITS_X_TEST_DATA  64
#define CONTROL_R_ADDR_X_TRAIN_DATA 0x1c
#define CONTROL_R_BITS_X_TRAIN_DATA 64
#define CONTROL_R_ADDR_Y_TRAIN_DATA 0x28
#define CONTROL_R_BITS_Y_TRAIN_DATA 64
#define CONTROL_R_ADDR_Y_TEST_DATA  0x34
#define CONTROL_R_BITS_Y_TEST_DATA  64
