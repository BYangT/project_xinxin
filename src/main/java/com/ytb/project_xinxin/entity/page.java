package com.ytb.project_xinxin.entity;

/**
 * @author 杨天宝
 * @version 1.0
 * @date 2022/12/21 12:46
 */
public class page {
    private int currentPage = 1; //当前页
    private int pageSize = 3; //每页显示的最大条数
    private int begin;		//每页的起始位置
    private int totalPage;//总页数
    private int rows;//总记录行数

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

    public int getBegin() {
        begin = (this.currentPage - 1) * pageSize;
        return begin;
    }

    public void setBegin(int begin) {
        this.begin = begin;
    }

    public int getTotalPage() {
        totalPage  = rows%pageSize==0 ? rows/pageSize: rows/pageSize + 1;
        return totalPage;
    }

    public void setTotalPage(int totalPage) {
        this.totalPage = totalPage;
    }

    public int getRows() {
        return rows;
    }

    public void setRows(int rows) {
        this.rows = rows;
    }
}
