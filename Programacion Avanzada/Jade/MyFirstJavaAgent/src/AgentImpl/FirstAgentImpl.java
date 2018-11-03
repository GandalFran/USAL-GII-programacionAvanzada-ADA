package AgentImpl;

import AgentAbs.AgentAbs;
import BehavioursImpl.MyCyclicBehaviour;

public class FirstAgentImpl extends AgentAbs{

	private static final long serialVersionUID = 1L;
	
	@Override
	public void instanceBehavoir() {
		this.agentBehavoir = new MyCyclicBehaviour();
	}


}
