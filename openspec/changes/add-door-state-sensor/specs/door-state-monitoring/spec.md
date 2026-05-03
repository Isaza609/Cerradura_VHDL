## ADDED Requirements

### Requirement: Process physical door sensor input
The system SHALL monitor a physical input signal (`sensor_puerta`) to determine if the door is physically open or closed.

#### Scenario: Door physically opens
- **WHEN** the door is mechanically opened
- **THEN** the `sensor_puerta` signal transitions to represent the open state (e.g., 0)
- **AND** the internal state machine updates its tracking of the door state to "Open"

#### Scenario: Door physically closes
- **WHEN** the door is mechanically closed
- **THEN** the `sensor_puerta` signal transitions to represent the closed state (e.g., 1)
- **AND** the internal state machine updates its tracking of the door state to "Closed"
