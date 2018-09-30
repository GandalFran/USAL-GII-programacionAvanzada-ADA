package BehavoirsImpl.AuxiliarBehaviours;

import java.util.Scanner;

import utils.Utils;
import jade.core.behaviours.OneShotBehaviour;

public class WriteInConsoleAndSendBehaviour extends OneShotBehaviour 
{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private String myOntology = null;
	private String translatorService = null;
	
	public WriteInConsoleAndSendBehaviour(String myOntology, String translatorService) {
		this.myOntology = myOntology;
		this.translatorService = translatorService;
	}
	

	@Override
	public void action() 
	{
		String msg;
		Scanner sc = new Scanner(System.in);
		
		for(int i=0; i<1000; i++){
		
			 msg = sc.nextLine();
			 Utils.enviarMensaje(myAgent, this.translatorService, msg, this.myOntology);
		}
		
		 sc.close();
	}
}
