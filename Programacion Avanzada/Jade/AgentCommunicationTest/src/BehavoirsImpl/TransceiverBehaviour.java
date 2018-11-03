package BehavoirsImpl;

import BehavoirsImpl.AuxiliarBehaviours.ReciveAndPrintMsgBehaviour;
import BehavoirsImpl.AuxiliarBehaviours.WriteInConsoleAndSendBehaviour;
import jade.core.behaviours.Behaviour;
import jade.core.behaviours.ParallelBehaviour;
import jade.core.behaviours.ThreadedBehaviourFactory;

public class TransceiverBehaviour extends ParallelBehaviour{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Behaviour reciveBehaviour;
	private Behaviour sendBehaviour;
	
	
	public TransceiverBehaviour(String myOntology, String translatorService)
	{
		super();
		
		reciveBehaviour = new ReciveAndPrintMsgBehaviour( myOntology );
		sendBehaviour   = new WriteInConsoleAndSendBehaviour(  myOntology, translatorService );
		
		addSubBehaviour(new ThreadedBehaviourFactory().wrap(reciveBehaviour));
		addSubBehaviour(new ThreadedBehaviourFactory().wrap(sendBehaviour));
	}
}
