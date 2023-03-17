package com.land.myapp.model.board;

public class BoardVO {
	public class Board{

	    //멤버아이디
	    private String memberId;

	    //게시판번호
	    private int boardNum;

	    //게시판내용
	    private String boardContent;

	    //게시판등록날짜
	    private String boardRegDate;

	    //게시판 제목
	    private String boardTitle;

	    public String getMemberId() {
	        return memberId;
	    }

	    public void setMemberId(String memberId) {
	        this.memberId = memberId;
	    }

	    public int getBoardNum() {
	        return boardNum;
	    }

	    public void setBoardNum(int boardNum) {
	        this.boardNum = boardNum;
	    }

	    public String getBoardContent() {
	        return boardContent;
	    }

	    public void setBoardContent(String boardContent) {
	        this.boardContent = boardContent;
	    }

	    public String getBoardRegDate() {
	        return boardRegDate;
	    }

	    public void setBoardRegDate(String boardRegDate) {
	        this.boardRegDate = boardRegDate;
	    }

	    public String getBoardTitle() {
	        return boardTitle;
	    }

	    public void setBoardTitle(String boardTitle) {
	        this.boardTitle = boardTitle;
	    }
	}
}
