package org.xtext.assingment2.ui

import org.eclipse.ui.plugin.AbstractUIPlugin
import org.eclipse.xtext.ui.editor.hover.IEObjectHoverProvider

class MathinterpreterUiModule extends AbstractMathinterpreterUiModule {
	
	new(AbstractUIPlugin plugin) {
		super(plugin)
	}
	
	def Class<? extends IEObjectHoverProvider > bindIEObjectHoverProvider() { 
		return HoverProvider;
	}
}