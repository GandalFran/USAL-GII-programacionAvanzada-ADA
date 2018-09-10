package AgentImpl;

import jade.core.Agent;
import jade.core.behaviours.Behaviour;
import jade.core.behaviours.CyclicBehaviour;

/**
 * 
 * @author franpintosantos
 * @date 10/09/2018 
 * @description Used as a template for multiple agent instantiation.
 * 
 * */

public abstract class AgentAbs extends Agent{

	public AgentAbs() {
		super();
	}
	
	protected Behaviour behaviour;
	private static final long serialVersionUID = 1L;
	
	public abstract void instanceNewBehaviour();
	
	public void setup() {
		this.instanceNewBehaviour();
		this.addBehaviour( this.behaviour );
	}

}
