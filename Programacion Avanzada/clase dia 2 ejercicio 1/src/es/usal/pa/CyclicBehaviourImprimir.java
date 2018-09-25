package es.usal.pa;

import jade.core.Agent;
import jade.core.behaviours.CyclicBehaviour;
import jade.lang.acl.ACLMessage;
import jade.lang.acl.MessageTemplate;
import jade.lang.acl.UnreadableException;

public class CyclicBehaviourImprimir extends CyclicBehaviour 
{

	private static final long serialVersionUID = 1L;

	public CyclicBehaviourImprimir(Agent agent)
	{
		super(agent);
	}

	@Override
	public void action() 
	{
		// TODO Auto-generated method stub
		ACLMessage msg=this.myAgent.blockingReceive(MessageTemplate.and(MessageTemplate.MatchPerformative(ACLMessage.REQUEST), MessageTemplate.MatchOntology("ontologia")));
		try
		{
			System.out.println("Mensaje: "+ (String)msg.getContentObject());
		}
		catch (UnreadableException e)
		{
		// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
