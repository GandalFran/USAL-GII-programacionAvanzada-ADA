package BehavoirsImpl.AuxiliarBehaviours;

import jade.core.behaviours.CyclicBehaviour;
import utils.Utils;

public class TranslateOntologyXIntoYBehaviour extends CyclicBehaviour{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private String ontologyX;
	private String ontologyY;
	private String receptorService;
	
	public TranslateOntologyXIntoYBehaviour(String ontologyX, String ontologyY, String receptorService) {
		this.ontologyX = ontologyX;
		this.ontologyY = ontologyY;
		this.receptorService = receptorService;
	}

	@Override
	public void action() {
		String msg = (String) Utils.reciveMsg(myAgent,ontologyX);
		Utils.enviarMensaje(myAgent, receptorService, msg, ontologyY);
	}
	
}
