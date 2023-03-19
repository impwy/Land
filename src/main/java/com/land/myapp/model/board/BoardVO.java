package com.land.myapp.model.board;

import java.util.Date;

public class BoardVO {

		// 멤버아이디
		private String member_id;

		// 게시판번호
		private int board_num;

		// 게시판내용
		private String board_content;

		// 게시판등록날짜
		private Date board_regDate;

		// 게시판 제목
		private String board_title;

		public String getMember_id() {
			return member_id;
		}

		public void setMember_id(String member_id) {
			this.member_id = member_id;
		}

		public int getBoard_num() {
			return board_num;
		}

		public void setBoard_num(int board_num) {
			this.board_num = board_num;
		}

		public String getBoard_content() {
			return board_content;
		}

		public void setBoard_content(String board_content) {
			this.board_content = board_content;
		}

		public Date getBoard_regDate() {
			return board_regDate;
		}

		public void setBoard_regDate(Date board_regDate) {
			this.board_regDate = board_regDate;
		}

		public String getBoard_title() {
			return board_title;
		}

		public void setBoard_title(String board_title) {
			this.board_title = board_title;
		}

		@Override
		public String toString() {
			return "BoardVO [MEMBER_ID=" + member_id + ", BOARD_NUM=" + board_num + ", BOARD_CONTENT" + board_content
					+ ", BOARD_REG_DATE=" + board_regDate + ", BOARD_TITLE=" + board_title + "]";
		}
	}
