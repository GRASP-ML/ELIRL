% Draw indicator for human agent in interactive highway2 environment.
function agent = highway2drawhuman(mdp_params,~,s,a)

[y,lane,speed] = highway2statetocoord(s,mdp_params);
x = (speed-1)*mdp_params.lanes+lane;
disp(nargin)
if nargin < 4,
    % Unknown action.
    agent = rectangle('Position',[x-0.8,y-0.8,0.6,0.6],'FaceColor',[0.8 0.8 1]);
else
    % Action is known.
    agent = [];
    actionmap = [ 5 3 4 2 1 ];
    gridworlddrawagent(x,y,actionmap(a),[1 1 1]);
end;
