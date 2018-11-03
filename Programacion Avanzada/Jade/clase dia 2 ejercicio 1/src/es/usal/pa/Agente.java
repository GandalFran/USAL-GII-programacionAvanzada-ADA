package es.usal.pa;

import jade.content.lang.sl.SLCodec;
import jade.core.Agent;
import jade.domain.DFService;
import jade.domain.FIPAException;
import jade.domain.FIPAAgentManagement.DFAgentDescription;
import jade.domain.FIPAAgentManagement.ServiceDescription;

public class Agente extends Agent 
{

	private static final long serialVersionUID = 1L;
	protected ParallelBehaviourMensaje parallelBehaviourMensaje;
	
	public void setup()
	{
		//registrar servicios
		DFAgentDescription dfd=new DFAgentDescription();
		dfd.setName(getAID());

		ServiceDescription sd=new ServiceDescription();
		sd.setName("Chat");
		sd.setType("mensajeria");
		sd.addOntologies("ontologia");
		sd.addLanguages(new SLCodec().getName());
		dfd.addServices(sd);
		
		try 
		{
			DFService.register(this, dfd);
		} 
		catch (FIPAException e) 
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		//registrar comportamientos
		parallelBehaviourMensaje=new ParallelBehaviourMensaje(this);
		this.addBehaviour(parallelBehaviourMensaje);
	}
}
