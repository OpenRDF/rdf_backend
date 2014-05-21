package com.openrdf.service;

import com.openrdf.dao.RDFDao;

public class RDFService {

	private RDFDao rdfDao;

	
	
	public RDFDao getRdfDao() {
		return rdfDao;
	}

	public void setRdfDao(RDFDao rdfDao) {
		this.rdfDao = rdfDao;
	}
}
