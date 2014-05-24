package com.openrdf.service;

import com.openrdf.beans.Concept;
import com.openrdf.dao.RDFDao;
import com.openrdf.rdf.JenaParser;

public class RDFService {

	private RDFDao rdfDao;

	/**
	 * 添加概念到rdf文件 
	 * 
	 * @param concept
	 */
	public boolean addConcept(Concept concept) {
		// 仅仅对RDF文件操作 
		JenaParser jenaParser = new JenaParser();
		return jenaParser.AddConcept2RDF(concept);
	}
	
	/**
	 * 搜索关键字 
	 * 
	 * @param keyword
	 * @return
	 */
	public Concept searchKeyWord(String keyword) {
		// 对RDF文件搜索
		JenaParser jenaParser = new JenaParser();
		Concept concept = jenaParser.SearchByKeyword(keyword);
		if (concept == null){
			return null;
		}
		// 保存搜索记录 
		
		return concept;
	}
	
	/**      getter and setter        **/
	public RDFDao getRdfDao() {
		return rdfDao;
	}

	public void setRdfDao(RDFDao rdfDao) {
		this.rdfDao = rdfDao;
	}

}
