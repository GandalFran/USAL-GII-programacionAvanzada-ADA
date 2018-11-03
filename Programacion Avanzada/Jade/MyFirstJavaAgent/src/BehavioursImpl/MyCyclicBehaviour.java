package BehavioursImpl;

import jade.core.behaviours.CyclicBehaviour;

public class MyCyclicBehaviour extends CyclicBehaviour{

	private static final long serialVersionUID = 1L;
	
	@Override
	public void action() {
		block();
	}

}
