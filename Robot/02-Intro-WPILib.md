# Session 2:Introduction to WPILib

## WPILib Software Tools

- Driver Station
  - Comms between robot and code
- NetworkTables is a database system used to store data from robot-code communication
- SmartDashboard or Shuffleboard (we use Shuffleboard)
  - Graphical data representation from NetworkTables
- PathWeaver --> Trajectory builder
- Robot Characterization --> Auto-tune PID gains for elevators, arms, and drivetrains
- [API Documentation](https://first.wpi.edu/FRC/roborio/release/docs/java/index.html)
  - **Your best friend**
  - Complete list of classes, methods, and interfaces within WPILib
    - Sometimes we extend these for extra functionality

## Object Oriented Programming

- Classes --> Describe objects/items - single ideas
- Superclasses and subclasses
  - Subclasses may extend one superclass, or none at all
- Interfaces are implemented by classes
  - One class can implement any number of interfaces
  - Interfaces can extend other interfaces in the same fashion as classes

### Premises of Command Based Programming

- Subsystems that each represent a discrete physical mechanism on the robot. For instance, an arm, an elevator, a drivetrain, a shooter, and a turret are all mechanisms that would receive their own subsystems
- Commands command one or more subsystems to move or take an action
  - Command groups are composed of multiple commands
- We will get more into Command-Based Programming later, this is all that you need to know for now
- Both subsystems and commands are classes

## Team 501 File Structure (2020)

- root directory (`C:\` for Windows) has `F_FIRST` directory
  - `GitRepos` directory within `F_FIRST`
  - `yearRepos` directory(-ies) within `GitRepos`

Within the robot project, the bulk of the robot code lives in `src/main/java/frc/robot`

Core files of the robot:

- `Robot.java`: This class contains all the code to interact with the different game modes - teloperated, autonomous, disabled, and test - and handles orchestration of key functions
- `Team501Robot.java`: Extends `Robot.java` and adds additional telemetry when started by `Main.java`. This additional telemetry consists of the code version - see `config` directory below - and the current programmer's name in an effort to maintain primitive version control and ensure the proper code is on the RIO.
- `Main.java`: Class responsinble for starting the robot code up
- ~~`RobotContainer`: A monolithic WPILib class that we deemed unecessary~~
- ~~`Constants.java`: A WPILib class that created many global constant values that are better suited to a subsystem or manager-specific access~~
- `OI.java`: Class that handles interface to the operator input through joysticks and buttons

Core directories of the robot:

- `commands`: This directory contains all the commands used for the robot, organized into subdirectories based on subsystem dependencies - `drive`, `ballevator`, or `shooter`, in the 2020 season, for instance.
- `config`: This directory contains the class `CodeVersionInfo.java`, a file used for primitive version control between code downloads to the robot to ensure the correct code is on the robot.
- `modules`: A module is defined as a technical item (object) that is neither a susbsystem - a physical object with motors - nor a sensor - a physical object that takes in data. There were two modules during the 2020 season: the Power Distribution Panel and the Raspberry PI. The `modules` directory also contains a predominant interface, `IModule.java` that contains all necessary base module method names; a factory, `ModuleFactory.java` that loads the proper class for each module - stub, real, or otherwise; and a names file, `ModuleNames.java` that contains standardized telemetry names with which to refer to modules. Each subdirectory contains its own interface, its own base class that implements said interface, and its own factory.
- `preferences`: Preferences are values stored in a subdirectory on the NetworkTables that stores user-defined preferences for robot performance. Preferences are used to tune PID loops dynamically. The Preferences are initialized by the class `PropertiesInitializer.java` using naming conventions established in `PreferenceNames.java` before beign accessed on a case-by-case basis from subsystems.
- `properties`: Properties refer to the values in a .props file in the root directory `/home/lvuser` directory on the RIO that are read from the file and implemented in code. The getting and accessing of properties is orchestrated by `PropertiesManager.java` and uses a standard naming pattern established in `PropertyNames.java`. The getting and setting of properties is done using a class that encapsulates the standard java Map that is named `PKProperties.java`. Properties are used to control the dynamic class loading of classes - stub, real, or otherwise.
- `sensors`: Sensors are physical mechanisms on the robot that collect input - in 2020, the vision and color sensor were both sensors. The core directory contains an interface, `ISensor.java` that extends ITelemetryProvider and which all sensor interfaces extend; a factory, `Sensor.java` that loads the proper class for each sensor - stub, real, or otherwise; and a names file, `SensorNames.java` that contains standardized telemetry names with which to refer to sensors. Each subdirectory contains its own interface, its own base class that implements said interface, and its own factory, as well as the necessary classes - stub, real, and otherwise - that may be loaded. Additionally, each subdirectory contains separate classes for changing hardware - a limelight versus Raspberry PI vision, or an AHRS inertial measurement unit versus another type of Gyro.
- `subsystems`: Subsystems are physical mechanisms on the robot that use motors - in 2020, the chassis, ballevator, and shooter were all subsystems. The core directory contains an interface, `ISubsystem.java` that extends ITelemetryProvider and which all subsystem interfaces extend; a factory, `SubsystemFactory.java` that loads the proper class for each subsystem - stub, real, or otherwise; and a names file, `SubsystemNames.java` that contains standardized telemetry names with which to refer to subsystems. Each subdirectory contains its own interface, its own base class that implements said interface, and its own factory, as well as the necessary classes - stub, real, and otherwise - that may be loaded. There is one caveat: the `drive` directory also contains two utility classes to perform drive smoothing.
- `telemetry`: Telemetry refers to the data sent to the dashboard to be represented graphically. The `TelemetryManager.java` registers telemetry providers to provide data and then updates the telemetry every code cycle - 20 ms. The `ITelemetryProvider.java` is the interface that all modules, sensors, and subsystems implement in order to update telemetry. The `SchedulerProvider.java` is a class that reaches into the Scheduler - the class that coordinates commands - in order to send the currently running commands as telemetry to the dashboard. `TelemetryNames.java` establishes standardized naming conventions for all ITelemetryProviders to use when sending telemetry to the dashboard.
- `utils`: This directory contains utility function classes with commonly used methods not found in core Java or WPILib. Some classes are extensions of WPILib classes - in 2020, `PKColor.java` - while others are created by Team 501 - in 2020, `PKStatus.java` and `HelperFunctions.java`.

<hr>
