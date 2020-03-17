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
	
	override getHoverInfoAsHtml(EObject o) {    
		//val mathinterpreter = new MathinterpreterGenerator();
		return '''<p><b>hello</b></p>'''
//		if (o instanceof MathExpression) {      
//			val exp = o as MathExpression     
//			
//			if (exp instanceof VariableDefinition){
//				return '''<p><b>«mathinterpreter.display(exp)»</b></p>'''	
//			} else {
//				return '''<p>interpretation:<b>«mathinterpreter.display(exp)»</b> <br>value:<b>«mathinterpreter.compute(exp)»</b></p>'''				
//			}
//		} else      
//			return super.getHoverInfoAsHtml(o)
	}
	
	def programHasNoError(EObject o) {    
		for (diagnostic : Diagnostician.INSTANCE.validate(o.rootContainer).children) 
			if (diagnostic.severity == Diagnostic.ERROR) 
				return false
		true
	} 
}