 Assertions
1. Assert that req is followed by ack within 3 cycles.
2. Ensure reset is deasserted within 5 cycles of power-up.
3. Assert that wvalid stays high for at most 2 cycles without wready.
4. Ensure FIFO never underflows (read without empty).
5. Assert that no transaction occurs during reset.
6. Assert burst transfers complete with burst_len cycles.
7. Check that write happens only when enable is high.
8. Assert a transaction ID is not repeated consecutively.
9. Ensure address in a write is aligned (addr % 4 == 0).
10.Assert signal done is only asserted after start.
11.Check arvalid is followed by arready within 5 cycles.
12.Assert that clock frequency doesn’t skip (no 2 rising edges too close).
13.Check that packet size is always less than max allowed size.
14.Ensure grant signal is not active for more than 10 cycles.
15.Assert temperature never exceeds 120°C.
16.Ensure data_valid is only high when data_ready is also high.
17.Assert a valid handshake occurs before any data is transferred.
18.Check that a signal toggles at least once every 20 cycles.
19.Ensure no packet is dropped (valid & !ready case).
20.Check that fsm never enters an invalid or undefined state
