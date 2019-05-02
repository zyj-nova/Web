package com.nefu.domain;

import java.util.List;

public class PageBean {
	private int currentPage;
	private int pageSize;
	private int count;
	private int totalPage;
	private List<news> list;
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public int getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
	public List<news> getList() {
		return list;
	}
	public void setList(List<news> list) {
		this.list = list;
	}
	
}
