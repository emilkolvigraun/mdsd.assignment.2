/*
 * generated by Xtext 2.21.0
 */
package org.xtext.assingment2.ui;

import com.google.inject.Injector;
import org.eclipse.core.runtime.Platform;
import org.eclipse.xtext.ui.guice.AbstractGuiceAwareExecutableExtensionFactory;
import org.osgi.framework.Bundle;
import org.xtext.assingment2.Mathinterpreter.ui.internal.MathinterpreterActivator;

/**
 * This class was generated. Customizations should only happen in a newly
 * introduced subclass. 
 */
public class MathinterpreterExecutableExtensionFactory extends AbstractGuiceAwareExecutableExtensionFactory {

	@Override
	protected Bundle getBundle() {
		return Platform.getBundle(MathinterpreterActivator.PLUGIN_ID);
	}
	
	@Override
	protected Injector getInjector() {
		MathinterpreterActivator activator = MathinterpreterActivator.getInstance();
		return activator != null ? activator.getInjector(MathinterpreterActivator.ORG_XTEXT_ASSINGMENT2_MATHINTERPRETER) : null;
	}

}