## ADDED Requirements

### Requirement: Lock requires door to be physically closed
The system SHALL NOT re-engage the physical locking mechanism unless the door is physically closed according to the `sensor_puerta`.

#### Scenario: User tries to lock open door
- **WHEN** the lock sequence/timeout is triggered to re-lock the door
- **AND** the `sensor_puerta` indicates the door is open
- **THEN** the system remains in the UNLOCKED/WAITING state
- **AND** does not engage the lock mechanism

#### Scenario: Door closes and locks
- **WHEN** the door is physically closed (`sensor_puerta` becomes 1)
- **AND** the system is in the state expecting to lock
- **THEN** the system engages the lock mechanism
- **AND** transitions to the LOCKED state
