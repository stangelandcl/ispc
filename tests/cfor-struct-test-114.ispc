
export uniform int width() { return programCount; }


struct Foo {
    uniform float x;
    uniform float f;
};

export void f_fi(uniform float RET[], uniform float aFOO[], uniform int bFOO[]) {
    float a = aFOO[programIndex];
    int b = bFOO[programIndex];
    varying Foo myFoo[programCount+1];
    uniform int i;
    cfor (i = 0; i < programCount+1; ++i) {
        myFoo[i].x = i;
        myFoo[i].f = 2*i;
    }
    RET[programIndex] = myFoo[b/2].f;
}


export void result(uniform float RET[]) {
    RET[programIndex] = 2 + 2*programIndex;
}
