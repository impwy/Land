package com.land.myapp.model.board;

import java.sql.Date;

public class BoardVO {

	// 게시글번호
	private Integer board_num;
	// 게시글 제목
	private String board_title;
	// 게시글 내용
	private String board_content;
	// 게시글 작성자
	private String member_id;
	//조회수
	private String board_viewcnt;
	//댓글 수
	private String board_commentcnt;
	// 등록일
	private Date board_regdate;
	// 이전글
	private Integer prevPage;
	//다음글
	private Integer nextPage;

	public BoardVO() {}
	
	public BoardVO(String board_title, String board_content, String member_id) {
		super();
		this.board_title = board_title;
		this.board_content = board_content;
		this.member_id = member_id;
	}

	public Integer getBoard_num() {
		return board_num;
	}

	public void setBoard_num(Integer board_num) {
		this.board_num = board_num;
	}

	public String getBoard_title() {
		return board_title;
	}

	public void setBoard_title(String board_title) {
		this.board_title = board_title;
	}

	public String getBoard_content() {
		return board_content;
	}

	public void setBoard_content(String board_content) {
		this.board_content = board_content;
	}

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public String getBoard_viewcnt() {
		return board_viewcnt;
	}

	public void setBoard_viewcnt(String board_viewcnt) {
		this.board_viewcnt = board_viewcnt;
	}

	public String getBoard_commentcnt() {
		return board_commentcnt;
	}

	public void setBoard_commentcnt(String board_commentcnt) {
		this.board_commentcnt = board_commentcnt;
	}

	public Date getBoard_regdate() {
		return board_regdate;
	}

	public void setBoard_regdate(Date board_regdate) {
		this.board_regdate = board_regdate;
	}

	public int getPrevPage() {
		return prevPage;
	}

	public void setPrevPage(int prevPage) {
		this.prevPage = prevPage;
	}

	public int getNextPage() {
		return nextPage;
	}

	public void setNextPage(int nextPage) {
		this.nextPage = nextPage;
	}

	@Override
	public String toString() {
		return "BoardVO{" +
				"board_num=" + board_num +
				", board_title='" + board_title + '\'' +
				", board_content='" + board_content + '\'' +
				", member_id='" + member_id + '\'' +
				", board_viewcnt='" + board_viewcnt + '\'' +
				", board_commentcnt='" + board_commentcnt + '\'' +
				", board_regdate=" + board_regdate +
				", prevPage=" + prevPage +
				", nextPage=" + nextPage +
				'}';
	}
}
