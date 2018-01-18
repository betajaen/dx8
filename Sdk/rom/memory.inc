macro @memcpysm dst, src, length {
    push.w dst
    push.w src
    push.b length

    set a, 1
    callt $400, a
}

macro @memset dst, val, length {
    push.w dst
    push.b val
    push.w length

    set a, 2
    callt $400, a
}

macro @memmap virtual, real {
    push.b virtual
    push.b real

    set a, 3
    callt $400, a
}
