package com.openrdf.base.action;

import com.openrdf.utils.properties.URLPropertiesUtils;

public class BaseAction extends OpenRDFBaseAction {

	/**
	 * BaseAction 
	 */
	private static final long serialVersionUID = 1L;
	private String rdf_fronts_href = "";
	private String rdf_cas_href = "";

	public String toAdminPage(){
		return "success";
	}
	
	// ==================== getters ===========================//
	public String getRdf_fronts_href() {
		return rdf_fronts_href;
	}

	public String getRdf_cas_href() {
		return rdf_cas_href;
	}
}
