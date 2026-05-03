## Context

The current `top_cerradura` module implements access control logic without feedback on the actual, physical state of the door. This means the lock operates on a timer or sequence without knowing if the door was actually opened, or if it remains open, leading to security vulnerabilities (e.g. failing to lock, or failing to trigger an alarm when the door is held open).

## Goals / Non-Goals

**Goals:**
- Add a new physical input signal `sensor_puerta` to `top_cerradura` (1 = closed, 0 = open, or vice-versa depending on standard).
- Plumb this signal into the main finite state machine (FSM) to make state transitions dependent on the physical door state (e.g., transition from UNLOCKED to LOCKED only when `sensor_puerta` indicates closed).
- Plumb this signal into the alarm module to trigger an alarm if the door remains open beyond a specific duration.

**Non-Goals:**
- We are not changing the authentication method (e.g. keyboard input logic remains the same).
- We are not replacing the entire control logic, only augmenting it with the door state.

## Decisions

1. **Active High vs Active Low**: Assume `sensor_puerta` is active high when closed (1 = Puerta cerrada, 0 = Puerta abierta). We will document this convention in the top module.
2. **Debouncing**: Since it's a physical sensor, it might experience bounce. We will implement or use a basic debouncer logic if required, although for a slow-moving physical door a simple synchronizer and small delay might suffice.
3. **Alarm integration**: We will use a counter in the `alarmas` module that increments while `sensor_puerta == 0` (open) and triggers the alarm if it exceeds the max allowed open time.

## Risks / Trade-offs

- **Risk**: False alarms due to sensor bounce.
  - **Mitigation**: Add debouncing to the `sensor_puerta` input before it reaches the main FSM and alarm counter.
- **Risk**: Changes to FSM states could break existing testbenches.
  - **Mitigation**: Update testbenches immediately to drive `sensor_puerta` realistically based on lock output.
