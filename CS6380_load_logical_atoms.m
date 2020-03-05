% CS6380_load_logical_atoms - Loads and sets the logical atoms for
% a BDI UAS agent.
% 
% On input:
%     None.
%
% On output:
%     Logical atoms and their assignment values.
%     num_atoms (double): The number of logical atoms.
%
% Call:
%     CS6380_load_logical_atoms;
%
% Errors and Exceptions:
%     None
%
% Side-effects:
%     1. Logical atoms and their values defined here are loaded
%     into matlab as variables assigned to doubles.
%     2. The scope of the logical atoms depends on where this routine
%     is called.
%
% Pre-conditions:
%     None.
%
% Post-conditions:
%     None.
%
% Invariants:
%     None.

% Notes:
%     1. User must ensure that they have spelled the names of the
%     logica variables correctly.
%     2. Since we use persistent variables, this file only needs to
%     be called once.
%
% Author:
%     Michael Cline
%     University of Utah
%     Spring 2020
%
persistent num_atoms NOMINAL AWAITING_ASSIGNMENT 
persistent WAITING_TO_START_MISSION AT_NEXT_WAYPOINT
persistent IN_FLIGHT IN_LANE SPEED_OK ON_HEADING CONTINGENCY_POWER 
persistent CONTINGENCY_RAIN CONTINGENCY_WIND

% Keep track of the number of atoms we have
num_atoms = 10;

% Are all of sensors, motors, etc. functioning correctly.
NOMINAL = 1;

% Are we waiting to be assignment a mission.
AWAITING_ASSIGNMENT = 2;

% Are we waiting to start the mission (that is to say, are we
% waiting for the current time to be equal to the start time for
% the mission).
WAITING_TO_START_MISSION = 3;

% Are we at the next waypoint for a mission (this also includes
% whether we are at the start and end waypoints for a mission).
AT_NEXT_WAYPOINT = 3;

% Are we currently flying somewhere.
IN_FLIGHT = 4;

% Are we in the lane for the mission.
IN_LANE = 5;

% Are we maintaining the speed required for the mission.
SPEED_OK = 6;

% Are we on the correct heading to arrive at a waypoint.
ON_HEADING = 7;

% Are we having problems because of issues with our power.
CONTINGENCY_POWER = 8;

% Are we having problems because there is rain in the environment.
CONTINGENCY_RAIN = 9;

% Are we having problems because there is wind in the environment.
CONTINGENCY_WIND = 10;