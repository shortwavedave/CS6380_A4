function KB = CS6380_create_beliefs(file)
% CS6380_create_beliefs - Constructs beliefs for an agent.
% On input:
%     filename (char array): Path to plain-text file specifying 
%     beleifs where each line is a clause consisting of logical
%     atoms.    
%      Line 1: List of terminal symbols (no spaces; e.g., ^v()~).
%      Line 2: List of non-terminal symbols (no spaces; e.g., SDCF).
%      Line 3: Start symbol.
%      Line 4 (to EOF): Production rules of the form 'S=S|aS' 
%             (one per line; no spaces).
%    
%     percept (struct vector): agent percept data
%       .x (float): x position of agent
%       .y (float): y position of agent
%       .z (float): z position of agent
%       .dx (float): x heading
%       .dy (float): y heading
%       .dz (float): z heading
%       .speed (float): ground speed
%       .time (float): current time
%       .del_t (float): time step
% On output:
%     action (struct vector): agent actions
%       .dx (float): heading in x
%       .dy (float): heading in y
%       .dz (float): heading in z
%       .speed (float): speed to move
%       .messages (struct vector)
% Call:
%     action = CS6380_UAS_tom_3(percept);
% Author:
%     T. Henderson
%     UU
%     Spring 2020
%
end