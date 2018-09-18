package AgentAbs;

import jade.core.Agent;
import jade.core.behaviours.Behaviour;

public abstract class AgentAbs extends Agent{
	
	protected Behaviour agentBehavoir;
	private static final long serialVersionUID = 1L;
	
	public abstract void instanceBehavoir();
	
	public void setup() {
		this.instanceBehavoir();
		this.addBehaviour( this.agentBehavoir );
	}
}
