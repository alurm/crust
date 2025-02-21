
```c
int twice(int x) = x + x;

int area(struct { int x = a; int y = b; }) = a * b;

struct { int x; int y; } p = struct { int x = 1; int y = 2; };

area(struct { 1, 2 });

int four = { 4 };

_Forall(t) void traverse_array(
    t *array,
    size_t length,
    void f(t),
) = for (size_t i = 0; i < length; i++) f(array[i]);

traverse_array(int)(
    (int[]){ 1, 2, 3 },
    3,
    (int i) = printf("%d\n", i),
);

_Forall(t) struct array_list {
    t *array;
    size_t used;
    size_t free;
};

struct int_array_list = struct array_list(int);

enum union shape {
    double circle;
    struct { double w; double h; } rectangle;
} circle = { .circle = 3 };

double area(enum union shape s) = (s) {
    .circle = s * s * 3.1415,
    .rectangle = {
        struct { double w = w; double h = h; } = s;
        h * w
    },
}

int five = block: while (true) {
    block 5;
};

void _ = void;
```
