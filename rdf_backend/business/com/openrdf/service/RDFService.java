package com.openrdf.service;

import java.util.List;

import com.openrdf.beans.Concept;
import com.openrdf.beans.SearchHistory;
import com.openrdf.dao.RDFDao;
import com.openrdf.rdf.JenaParser;
import com.openrdf.utils.Utils;

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
	 * @param userName 
	 * @return
	 */
	public List<Concept> searchKeyWord(String keyword, String userName) {
		// 对RDF文件搜索
		JenaParser jenaParser = new JenaParser();
		List<Concept> conceptList = jenaParser.SearchByKeyword(keyword);
		if (conceptList == null){
			return null;
		}
		// 保存搜索记录 
		SearchHistory searchHistory = new SearchHistory();
		searchHistory.setKeyword(keyword);
		searchHistory.setSerachTime(Utils.getDateTime());
		searchHistory.setWhoSearch(userName);
		searchHistory.setId(null);
		System.out.println(keyword);
		if (conceptList.size() == 0){
			// 查询失败 
			searchHistory.setOther("0");
		}else{
			// 查询成功
			searchHistory.setOther("1");
		}
		rdfDao.searchKeyWord(searchHistory);
		return conceptList;
	}
	
	/**      getter and setter        **/
	public RDFDao getRdfDao() {
		return rdfDao;
	}

	public void setRdfDao(RDFDao rdfDao) {
		this.rdfDao = rdfDao;
	}

}
