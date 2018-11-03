package AgentImpl;

import BehavoirsImpl.TranslationBehaviour;
import jade.content.lang.sl.SLCodec;
import jade.core.AID;
import jade.core.Agent;
import jade.domain.DFService;
import jade.domain.FIPAException;
import jade.domain.FIPAAgentManagement.DFAgentDescription;
import jade.domain.FIPAAgentManagement.ServiceDescription;
import utils.Constants;

public class Agent2 extends Agent{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void setup() {
		this.addBehaviour( new TranslationBehaviour() );
		
		try {
			DFService.register( this,  getAgentDescriptionWithServices() );
		} catch (FIPAException e) {
			e.printStackTrace();
			System.exit(0);
		}
	}
	
	private DFAgentDescription getAgentDescriptionWithServices() {
		DFAgentDescription dfd = new DFAgentDescription();
		ServiceDescription sd = new ServiceDescription();
		
		sd.setName(Constants.TRANSLATION_A_TO_B_SERVICE);
		sd.setType(Constants.TRANSLATION_A_TO_B_SERVICE);
		sd.addOntologies(Constants.ONTOLOGY_A_NAME);
		sd.addLanguages( new SLCodec().getName() );
		dfd.addServices(sd);

		sd.setName(Constants.TRANSLATION_B_TO_A_SERVICE);
		sd.setType(Constants.TRANSLATION_B_TO_A_SERVICE);
		sd.addOntologies(Constants.ONTOLOGY_B_NAME);
		sd.addLanguages( new SLCodec().getName() );
		dfd.addServices(sd);
		
		dfd.setName( this.getAID() );
		
		return dfd;
	}
	
}
