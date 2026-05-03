## ADDED Requirements

### Requirement: Trigger alarm when door left open
The system SHALL trigger an audible or visual alarm if the door remains physically open for a duration exceeding the allowed maximum time (e.g., 30 seconds).

#### Scenario: Door open too long
- **WHEN** the `sensor_puerta` indicates the door is open
- **AND** the open state persists continuously for longer than the maximum allowed time
- **THEN** the system triggers the "door open" alarm

#### Scenario: Door closes before timeout
- **WHEN** the `sensor_puerta` indicates the door is open
- **AND** the door is closed before the maximum allowed time expires
- **THEN** the open timer resets
- **AND** no alarm is triggered
