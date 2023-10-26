// only work in mode
template<typename T, int miss_counter = 0, int hit_counter = 0>
static inline T * get(void * vaddr) {
    uint64_t tag = C::Op::tag((uint64_t)vaddr);
    // TODO: this is not thread safe
    // if (Tlb::lookup(tag))
        // return Tlb::offset();

    int off = C::select(tag);
    Token &token = C::Op::token(off);

    auto ret = C::Op::template paddr<T>(off, (uint64_t)vaddr);
    if (token.valid() && token.tag == tag) {
        if constexpr (hit_counter) counters[hit_counter]++;
        // Tlb::update(token,tag);
        return ret;
    }

    if constexpr (miss_counter) counters[miss_counter]++;
    if constexpr (need_mt) pthread_spin_lock(&token.lock);
    request_poll(off, tag);

    // printf("Sync cache[%d] <%d|r:%d,s:%d>\n", C::Value::qid,
    //         C::Op::token(off).seq, C::Op::rid(), C::Op::sid());
    // poll_qid(C::Value::qid, C::Op::token(off).seq);
    return ret;
}