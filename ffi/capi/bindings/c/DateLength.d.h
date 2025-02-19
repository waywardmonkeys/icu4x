#ifndef DateLength_D_H
#define DateLength_D_H

#include <stdio.h>
#include <stdint.h>
#include <stddef.h>
#include <stdbool.h>
#include "diplomat_runtime.h"





typedef enum DateLength {
  DateLength_Full = 0,
  DateLength_Long = 1,
  DateLength_Medium = 2,
  DateLength_Short = 3,
} DateLength;

typedef struct DateLength_option {union { DateLength ok; }; bool is_ok; } DateLength_option;



#endif // DateLength_D_H
