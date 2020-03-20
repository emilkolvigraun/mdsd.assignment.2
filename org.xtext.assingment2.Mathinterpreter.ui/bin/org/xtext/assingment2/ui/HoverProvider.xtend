package org.xtext.assingment2.ui

import org.eclipse.emf.ecore.EObject
import org.eclipse.xtext.ui.editor.hover.html.DefaultEObjectHoverProvider
import org.xtext.assingment2.generator.MathinterpreterGenerator
import org.xtext.assingment2.mathinterpreter.MathExpression
import org.xtext.assingment2.mathinterpreter.VariableDefinition
import org.eclipse.emf.ecore.util.Diagnostician
import org.eclipse.emf.common.util.Diagnostic

import static extension org.eclipse.emf.ecore.util.EcoreUtil.*

class HoverProvider extends DefaultEObjectHoverProvider {  
	val mathinterpreter = new MathinterpreterGenerator()
	
	override getHoverInfoAsHtml(EObject o) {    
		
		if (o instanceof MathExpression){
			val mexp = o as MathExpression
			
			try {
				if (mexp instanceof VariableDefinition){
					return  '''
								<p>
									<b>«mathinterpreter.display(mexp)»</b>
								</p>
							'''	
				} else {
					return 	'''
								<p>
									interpretation: <b>«mathinterpreter.display(mexp)»</b><br>
									result: <b>«mathinterpreter.computeResult(mexp)»</b>
								</p>
							'''					
				}
			}
			catch (Exception e) {
				return 	'''
							<p>
								interpretation: <b>«mathinterpreter.display(mexp)»</b><br>
								class: <b>«o.class»</b>
							</p>
						'''		
			}
		}
	}
}