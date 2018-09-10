package AgentImpl;

import jade.core.Agent;
import jade.core.behaviours.Behaviour;
import jade.core.behaviours.CyclicBehaviour;

public class MyAgentImpl extends Agent{

	private Behaviour behaviour;
	private static final long serialVersionUID = 1L;
	
	public void setup() {
		
		this.behaviour = new CyclicBehaviour( this ) {
			
			private static final long serialVersionUID = 1L;
			
			public void action() {
				block();
			}
		};
		
		this.addBehaviour( this.behaviour );
	}
	
}
