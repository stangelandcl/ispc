
export uniform int width() { return programCount; }

export void f_fu(uniform float RET[], uniform float aFOO[], uniform float b) {
    varying unsigned int64 a_max = 0xFFFFFFFFFFFFFFFF, a_min = 0; // max and min unsigned int64
    if (programIndex % 3 == 0) {
        RET[programIndex] = saturating_mul(a_max, (varying unsigned int64) b);
    }
    else if (programIndex % 3 == 1) {
        RET[programIndex] = saturating_mul(a_min, (varying unsigned int64) -b);
    }
    else {
        RET[programIndex] = saturating_mul((varying unsigned int64) b,
                                           (varying unsigned int64) b);
    } 
}

export void result(uniform float RET[]) {
    if (programIndex % 3 == 0) {
        RET[programIndex] = (varying unsigned int64) 0xFFFFFFFFFFFFFFFF; // max unsigned int64
    }
    else if (programIndex % 3 == 1) {
        RET[programIndex] = (varying unsigned int64) 0; // min unsigned int64
    }
    else {
        RET[programIndex] = (varying unsigned int64) 25;
    } 
}
