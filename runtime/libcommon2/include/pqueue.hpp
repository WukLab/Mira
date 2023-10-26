#ifndef _PQUEUE_HPP_
#define _PQUEUE_HPP_

template <typename T, int capacity>
struct PQueue {
    inline int ad(int i) { return (i + 1) % capacity; }
    inline int da(int i) { return (i - 1) % capacity; }
    void repush(T x) {
        int t = da(tail);
        for (int i = tail; i != head; i = ad(i))  {
            if (arr[i] == x) {
                arr[i] = arr[t];
                arr[t] = x;
                return;
            }
        }
        arr[head++] = x;
    }
    T pop() {
        T v = arr[tail];
        tail = ad(tail);
        return v;
    }
  private:
    int head = 0, tail = 0;
    T arr[capacity];
};

#endif
