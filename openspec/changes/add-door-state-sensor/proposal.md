## Why

Currently, the `top_cerradura` module lacks physical sensor inputs to detect whether the door is actually open or closed. Without this feedback (e.g., from a magnetic sensor), the system operates blindly regarding the physical state of the door, making it impossible to correctly trigger alarms if the door is left open, or to know when it is safe to lock it again.

## What Changes

- Add a new input port to `top_cerradura` (and relevant submodules) to monitor the physical door state (e.g., `sensor_puerta`).
- Integrate the sensor signal into the state machine / control logic to accurately reflect the door's physical position.
- Update internal modules (like alarms or state control) to utilize this new signal for better state management and alarm triggering.

## Capabilities

### New Capabilities
- `door-state-monitoring`: Read and process physical sensor inputs indicating if the door is open or closed, and update the system state accordingly.

### Modified Capabilities
- `lock-control`: Update lock mechanisms and state transitions to wait for or react to the physical door status.
- `alarm-management`: Modify alarm triggers to sound if the door is left open longer than permitted.

## Impact

- `top_cerradura.vhd`: Addition of input port(s).
- Main FSM or control module: Modification of state transitions to include door state sensor conditions.
- Alarm module: Updates to trigger logic based on physical door state.
- Testbenches: Need to be updated to simulate the physical door opening and closing.
