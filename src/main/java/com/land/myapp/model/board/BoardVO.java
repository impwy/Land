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
	// 조회수
	private Integer board_viewcnt;
	// 댓글 갯수
	private Integer board_commentcnt;
	// 등록일
	private Date board_regdate;
	// 수정 날짜
	private Date board_updatereg;

	public BoardVO() {
	}

	public BoardVO(String board_title, String board_content, String member_id) {
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

	public Integer getBoard_viewcnt() {
		return board_viewcnt;
	}

	public void setBoard_viewcnt(Integer board_viewcnt) {
		this.board_viewcnt = board_viewcnt;
	}

	public Integer getBoard_commentcnt() {
		return board_commentcnt;
	}

	public void setBoard_commentcnt(Integer board_commentcnt) {
		this.board_commentcnt = board_commentcnt;
	}

	public Date getBoard_regdate() {
		return board_regdate;
	}

	public void setBoard_regdate(Date board_regdate) {
		this.board_regdate = board_regdate;
	}

	public Date getBoard_updatereg() {
		return board_updatereg;
	}

	public void setBoard_updatereg(Date board_updatereg) {
		this.board_updatereg = board_updatereg;
	}

	

	@Override
	public String toString() {
		return "BoardVO [board_num=" + board_num + ", board_title=" + board_title + ", board_content=" + board_content
				+ ", member_id=" + member_id + ", board_viewcnt=" + board_viewcnt + ", board_commentcnt="
				+ board_commentcnt + ", board_regdate=" + board_regdate + ", board_updatereg=" + board_updatereg + "]";
	}
	
}
