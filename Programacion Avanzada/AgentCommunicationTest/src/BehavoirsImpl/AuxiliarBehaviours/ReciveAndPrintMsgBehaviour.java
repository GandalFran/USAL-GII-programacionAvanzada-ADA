package BehavoirsImpl.AuxiliarBehaviours;

import jade.core.behaviours.CyclicBehaviour;
import utils.Utils;

public class ReciveAndPrintMsgBehaviour extends CyclicBehaviour{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private String myOntology;
	
	public ReciveAndPrintMsgBehaviour(String myOntology) {
		this.myOntology = myOntology;
	}
	
	@Override
	public void action() {
		String msg = (String) Utils.reciveMsg(myAgent,myOntology);
		System.out.println("[New message] " + msg);
	}

}
