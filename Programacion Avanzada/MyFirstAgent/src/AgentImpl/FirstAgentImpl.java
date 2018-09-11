package AgentImpl;

import jade.core.behaviours.CyclicBehaviour;

/**
 * 
 * @author franpintosantos
 * @date 10/09/2018 
 * @description Inherits from MyAgentAbs and implements a cyclical behavior.\n Will play the role of first agent.
 * 
 * */

public class FirstAgentImpl extends AgentAbs{
	
	private static final long serialVersionUID = 1L;


	public FirstAgentImpl() {
		super();
	}
	
	@Override
	public void instanceNewBehaviour() {
		
		this.behaviour = new CyclicBehaviour( this ) {
			private static final long serialVersionUID = 1L;
			public void action() {
				block();
			}
		};
		
	}

}
