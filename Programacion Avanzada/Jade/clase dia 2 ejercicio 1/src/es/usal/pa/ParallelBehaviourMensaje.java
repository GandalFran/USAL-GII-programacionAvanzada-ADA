package es.usal.pa;

import jade.core.Agent;
import jade.core.behaviours.ParallelBehaviour;
import jade.core.behaviours.ThreadedBehaviourFactory;

public class ParallelBehaviourMensaje extends ParallelBehaviour 
{
	private static final long serialVersionUID = 1L;
	protected CyclicBehaviourImprimir cyclicBehaviourImprimir;
	protected OneShotBehaviourEnviar oneShotBehaviourEnviar;
	
	
	public ParallelBehaviourMensaje(Agent agent)
	{
		super();
		
		//para insertar cada comportamiento en un hilo independiente
		ThreadedBehaviourFactory tf=new ThreadedBehaviourFactory();
		
		cyclicBehaviourImprimir=new CyclicBehaviourImprimir(agent);
		addSubBehaviour(tf.wrap(cyclicBehaviourImprimir));
		
		tf=new ThreadedBehaviourFactory();
		oneShotBehaviourEnviar=new OneShotBehaviourEnviar(agent);
		addSubBehaviour(tf.wrap(oneShotBehaviourEnviar));
	}
	

}
