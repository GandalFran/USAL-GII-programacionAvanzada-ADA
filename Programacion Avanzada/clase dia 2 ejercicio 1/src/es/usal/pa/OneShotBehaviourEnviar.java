package es.usal.pa;

import java.util.Scanner;

import Utils.Utils;
import jade.core.Agent;
import jade.core.behaviours.OneShotBehaviour;

public class OneShotBehaviourEnviar extends OneShotBehaviour 
{
	private static final long serialVersionUID = 1L;

	public OneShotBehaviourEnviar(Agent agent)
	{
		super(agent);
	}

	@Override
	public void action() 
	{
		// TODO Auto-generated method stub
		Scanner scanner=new Scanner(System.in);
		String mensaje;
		
		while(true)
		{
			mensaje=scanner.nextLine();
			Utils.enviarMensaje(myAgent, "mensajeria", mensaje);
		}

	}

}
