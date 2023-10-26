#ifndef _CYCLES_H_
#define _CYCLES_H_
// rdtsc
const static unsigned CPU_F = 2317;

typedef struct Clock {
	unsigned low0, high0, low1, high1;
} Clock;

void tic(Clock *c)
{
	asm volatile ("cpuid\n\t"
		"rdtsc\n\t"
		"mov %%edx, %0\n\t"
		"mov %%eax, %1\n\t"
		: "=r" (c->high0), "=r" (c->low0)
		:: "%rax", "%rbx", "%rcx", "%rdx");
}

void tac(Clock *c)
{
	asm volatile ("rdtscp\n\t"
		"mov %%edx, %0\n\t"
		"mov %%eax, %1\n\t"
		"cpuid\n\t"
		: "=r" (c->high1), "=r" (c->low1)
		:: "%rax", "%rbx", "%rcx", "%rdx");
}

uint64_t time_gap(Clock c, uint64_t start)
{
	uint64_t end = ( ((uint64_t)c.high1 << 32) | c.low1 );
	return (end - start);
}

// spinning waiting
inline void wait_until_cycles(unsigned long long wc) {
	Clock c;
	tic(&c);
	uint64_t start = ( ((uint64_t)c.high0 << 32) | c.low0 );
	while (1)
	{
		tac(&c);
		if (time_gap(c, start) > wc) break;
	}
}

#endif