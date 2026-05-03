## 1. Top Level Modification

- [x] 1.1 Add `sensor_puerta` input port to `top_cerradura.vhd`
- [x] 1.2 Wire `sensor_puerta` signal to the internal main FSM (control logic) module
- [x] 1.3 Wire `sensor_puerta` signal to the internal alarm module

## 2. Control Logic Update

- [x] 2.1 Update the FSM logic in the lock control module to use `sensor_puerta`
- [x] 2.2 Modify transition from WAITING/UNLOCKED to LOCKED to require `sensor_puerta = '1'` (door closed)
- [x] 2.3 Prevent the lock mechanism from engaging if `sensor_puerta = '0'`

## 3. Alarm Logic Update

- [x] 3.1 Update the alarm module to monitor the `sensor_puerta` signal
- [x] 3.2 Add a timer/counter that increments while `sensor_puerta = '0'`
- [x] 3.3 Trigger an alarm if the counter exceeds the maximum allowed time
- [x] 3.4 Reset the counter when `sensor_puerta` becomes '1'

## 4. Testing & Validation

- [x] 4.1 Update `top_cerradura_tb.vhd` to provide realistic `sensor_puerta` stimuli based on lock state
- [x] 4.2 Verify scenario: door is left open and lock does not engage
- [x] 4.3 Verify scenario: door is left open for too long and alarm triggers
- [x] 4.4 Verify scenario: door is opened and closed normally, locking resumes without alarm
