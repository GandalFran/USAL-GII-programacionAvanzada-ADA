package BehavoirsImpl;

import BehavoirsImpl.AuxiliarBehaviours.TranslateOntologyXIntoYBehaviour;
import jade.core.behaviours.Behaviour;
import jade.core.behaviours.ParallelBehaviour;
import jade.core.behaviours.ThreadedBehaviourFactory;
import utils.Constants;

public class TranslationBehaviour extends ParallelBehaviour{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private Behaviour AtoBTranslationBehaviour;
	private Behaviour BtoATranslationBehaviour;
	
	
	public TranslationBehaviour()
	{
		super();
		
		AtoBTranslationBehaviour = new TranslateOntologyXIntoYBehaviour( Constants.ONTOLOGY_A_NAME, Constants.ONTOLOGY_B_NAME, Constants.RECEIVE_B_SERVICE);
		BtoATranslationBehaviour = new TranslateOntologyXIntoYBehaviour( Constants.ONTOLOGY_B_NAME, Constants.ONTOLOGY_A_NAME, Constants.RECEIVE_A_SERVICE);
		
		addSubBehaviour(new ThreadedBehaviourFactory().wrap(AtoBTranslationBehaviour));
		addSubBehaviour(new ThreadedBehaviourFactory().wrap(BtoATranslationBehaviour));
	}

}
