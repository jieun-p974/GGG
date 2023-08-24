package com.green.domain;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

public class DogamVO {

	// dogam �뀒�씠釉�
	private int do_no;
	private String do_title;
	private String do_content;
	private String do_yoyak;
	private String do_realimg;
	private String do_realimg_addr;

	// lv_dogam �뀒�씠釉�
	private int lv_do_no;
	private int do_lev;
	private String do_img;
	private String do_img_addr;

	// mem_dogam �뀒�씠釉�
	private int mem_do_no;
	private String do_name;
	private String do_choice_YN;
	private int do_exp;

	// point_level �뀒�씠釉�
	private int level_no;
	private int lev_mim_point;
	private int lev_max_point;

	private String img1;
	private String img2;
	private String img3;
	private int nowLv;
	private String lv_img;

	public DogamVO() {
	}

	public int getDo_no() {
		return do_no;
	}

	public void setDo_no(int do_no) {
		this.do_no = do_no;
	}

	public String getDo_title() {
		return do_title;
	}

	public void setDo_title(String do_title) {
		this.do_title = do_title;
	}

	public String getDo_yoyak() {
		return do_yoyak;
	}

	public void setDo_yoyak(String do_yoyak) {
		this.do_yoyak = do_yoyak;
	}

	public String getDo_content() {
		return do_content;
	}

	public void setDo_content(String do_content) {
		this.do_content = do_content;
	}

	public String getDo_realimg() {
		return do_realimg;
	}

	public void setDo_realimg(String do_realimg) {
		this.do_realimg = do_realimg;
	}

	public String getDo_realimg_addr() {
		return do_realimg_addr;
	}

	public void setDo_realimg_addr(String do_realimg_addr) {
		this.do_realimg_addr = do_realimg_addr;
	}

	public int getLv_do_no() {
		return lv_do_no;
	}

	public void setLv_do_no(int lv_do_no) {
		this.lv_do_no = lv_do_no;
	}

	public int getDo_lev() {
		return do_lev;
	}

	public void setDo_lev(int do_lev) {
		this.do_lev = do_lev;
	}

	public String getDo_img() {
		return do_img;
	}

	public void setDo_img(String do_img) {
		this.do_img = do_img;
	}

	public String getDo_img_addr() {
		return do_img_addr;
	}

	public void setDo_img_addr(String do_img_addr) {
		this.do_img_addr = do_img_addr;
	}

	public int getMem_do_no() {
		return mem_do_no;
	}

	public void setMem_do_no(int mem_do_no) {
		this.mem_do_no = mem_do_no;
	}

	public String getDo_name() {
		return do_name;
	}

	public void setDo_name(String do_name) {
		this.do_name = do_name;
	}

	public String getDo_choice_YN() {
		return do_choice_YN;
	}

	public void setDo_choice_YN(String do_choice_YN) {
		this.do_choice_YN = do_choice_YN;
	}

	public int getDo_exp() {
		return do_exp;
	}

	public void setDo_exp(int do_exp) {
		this.do_exp = do_exp;
	};

	public int getLevel_no() {
		return level_no;
	}

	public void setLevel_no(int level_no) {
		this.level_no = level_no;
	}

	public int getLev_mim_point() {
		return lev_mim_point;
	}

	public void setLev_mim_point(int lev_mim_point) {
		this.lev_mim_point = lev_mim_point;
	}

	public int getLev_max_point() {
		return lev_max_point;
	}

	public void setLev_max_point(int lev_max_point) {
		this.lev_max_point = lev_max_point;
	}

	public String getImg1() {
		return img1;
	}

	public void setImg1(String img1) {
		this.img1 = img1;
	}

	public String getImg2() {
		return img2;
	}

	public void setImg2(String img2) {
		this.img2 = img2;
	}

	public String getImg3() {
		return img3;
	}

	public void setImg3(String img3) {
		this.img3 = img3;
	}

	public int getNowLv() {
		return nowLv;
	}

	public void setNowLv(int nowLv) {
		this.nowLv = nowLv;
	}

	public String getLv_img() {
		return lv_img;
	}

	public void setLv_img(String lv_img) {
		this.lv_img = lv_img;
	}
//*************************************************
	MultipartFile file; // write.jsp�뿉 �뙆�씪泥⑤��떆 name="file"怨� �룞�씪�븳 蹂��닔紐�

	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;
		// 업로드 파일 접근
		if (!file.isEmpty()) {
			this.do_img = file.getOriginalFilename();

			// �떎�젣 ���옣�맂 �뙆�씪紐� 留뚮뱾湲�
			UUID uuid = UUID.randomUUID();
			do_img_addr = uuid.toString() + "_" + do_img;

			// ***********************************************
			// �빐�떦 寃쎈줈濡� 蹂�寃�
			File f = new File("D:\\git2\\GGG\\green\\src\\main\\webapp\\resources\\imgs\\dogam\\" + do_img_addr);

			try {
				file.transferTo(f);

			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {

				e.printStackTrace();
			}
		}
	}

	// *************************************************
	MultipartFile file2; // write.jsp�뿉 �뙆�씪泥⑤��떆 name="file"怨� �룞�씪�븳 蹂��닔紐�

	public MultipartFile getFile2() {
		return file2;
	}

	public void setFile2(MultipartFile file2) {
		this.file2 = file2;

		// �뾽濡쒕뱶 �뙆�씪 �젒洹�
		if (!file2.isEmpty()) {
			this.do_realimg = file2.getOriginalFilename();

			// �떎�젣 ���옣�맂 �뙆�씪紐� 留뚮뱾湲�
			UUID uuid = UUID.randomUUID();
			do_realimg = uuid.toString() + "_" + do_realimg;

			// ***********************************************
			// 해당 경로로 변경
			File f = new File("D:\\git2\\GGG\\green\\src\\main\\webapp\\resources\\imgs\\dogam\\" + do_realimg_addr);

			try {
				file2.transferTo(f);

			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {

				e.printStackTrace();
			}
		}
	}

}