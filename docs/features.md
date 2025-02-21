
```c
struct point { int x; int y };

int five_expression_functions() = 5;

int area_struct_unpacking(struct point { int x; int y; }) = x * y;

(int, int) tuple_example = (){ 1, 2 };

(int i, int j) tuple_unpacking_example = (){ 1, 2 };

struct point tuple_compatible_with_struct = (){ 1, 2 };

int pass_tuple_example = area_struct_unpacking((){ 1, 2 });

int block_value = { 4 };

void block_void_value = { 4; };

_Forall(T) int generic_example = sizeof(T);

_Forall(T) struct generic_struct_example {
    T *data;
    int length;
    int capacity;
}

generic_example(int);
struct generic_struct_example(int) foo;

int if_value = if (true) 1; else 2;
void value = if (true);
int while_value = while (true) { break 4 }

enum union shape {
    double circle;
    (double, double) rectangle;
} circle = { .circle = 3 };

double area(enum union shape s) = enum switch (s) {
    .circle = s * s * 3.1415,
    .rectangle = {
        (int h, int w) = s;
        h * w
    },
};
```
