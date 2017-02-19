/*
 * generated by Xtext 2.11.0
 */
package it.csec.xtext.web

import com.google.inject.Guice
import com.google.inject.Injector
import it.csec.xtext.VsdlRuntimeModule
import it.csec.xtext.VsdlStandaloneSetup
import it.csec.xtext.ide.VsdlIdeModule
import org.eclipse.xtext.util.Modules2

/**
 * Initialization support for running Xtext languages in web applications.
 */
class VsdlWebSetup extends VsdlStandaloneSetup {
	
	override Injector createInjector() {
		return Guice.createInjector(Modules2.mixin(new VsdlRuntimeModule, new VsdlIdeModule, new VsdlWebModule))
	}
	
}
