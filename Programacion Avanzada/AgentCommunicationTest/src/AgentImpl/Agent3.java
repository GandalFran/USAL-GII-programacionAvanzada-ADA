package AgentImpl;

import BehavoirsImpl.TransceiverBehaviour;
import jade.content.lang.sl.SLCodec;
import jade.core.Agent;
import jade.domain.DFService;
import jade.domain.FIPAException;
import jade.domain.FIPAAgentManagement.DFAgentDescription;
import jade.domain.FIPAAgentManagement.ServiceDescription;
import utils.Constants;

public class Agent3 extends Agent{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void setup() {
		this.addBehaviour( new TransceiverBehaviour( Constants.ONTOLOGY_B_NAME, Constants.TRANSLATION_B_TO_A_SERVICE) );	
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

		sd.setName(Constants.RECEIVE_B_SERVICE);
		sd.setType(Constants.RECEIVE_B_SERVICE);
		sd.addOntologies(Constants.ONTOLOGY_B_NAME);
		sd.addLanguages( new SLCodec().getName() );
		dfd.addServices(sd);
		
		dfd.setName( this.getAID() );
		
		return dfd;
	}
}