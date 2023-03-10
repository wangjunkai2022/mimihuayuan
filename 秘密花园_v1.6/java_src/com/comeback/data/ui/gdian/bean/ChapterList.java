package com.comeback.data.ui.gdian.bean;

import f.e.a.f.k;
import java.util.List;
/* loaded from: classes.dex */
public class ChapterList extends k {
    public String code;
    public DataEntity data;
    public String is_login;
    public String msg;

    /* loaded from: classes.dex */
    public class DataEntity {
        public List<ListEntity> list;
        public PagesEntity pages;

        /* loaded from: classes.dex */
        public class ListEntity {
            public String chapter_id;
            public String chapter_name;
            public String chapter_no;
            public String content_long;
            public String fiction_id;
            public String have_mp3;
            public String serial_time;
            public String state;

            public ListEntity() {
            }

            public String getChapter_id() {
                return this.chapter_id;
            }

            public String getChapter_name() {
                return this.chapter_name;
            }

            public String getChapter_no() {
                return this.chapter_no;
            }

            public String getContent_long() {
                return this.content_long;
            }

            public String getFiction_id() {
                return this.fiction_id;
            }

            public String getHave_mp3() {
                return this.have_mp3;
            }

            public String getSerial_time() {
                return this.serial_time;
            }

            public String getState() {
                return this.state;
            }

            public void setChapter_id(String str) {
                this.chapter_id = str;
            }

            public void setChapter_name(String str) {
                this.chapter_name = str;
            }

            public void setChapter_no(String str) {
                this.chapter_no = str;
            }

            public void setContent_long(String str) {
                this.content_long = str;
            }

            public void setFiction_id(String str) {
                this.fiction_id = str;
            }

            public void setHave_mp3(String str) {
                this.have_mp3 = str;
            }

            public void setSerial_time(String str) {
                this.serial_time = str;
            }

            public void setState(String str) {
                this.state = str;
            }
        }

        /* loaded from: classes.dex */
        public class PagesEntity {
            public String all_page;
            public String list_count;
            public String num;
            public String this_page;

            public PagesEntity() {
            }

            public String getAll_page() {
                return this.all_page;
            }

            public String getList_count() {
                return this.list_count;
            }

            public String getNum() {
                return this.num;
            }

            public String getThis_page() {
                return this.this_page;
            }

            public void setAll_page(String str) {
                this.all_page = str;
            }

            public void setList_count(String str) {
                this.list_count = str;
            }

            public void setNum(String str) {
                this.num = str;
            }

            public void setThis_page(String str) {
                this.this_page = str;
            }
        }

        public DataEntity() {
        }

        public List<ListEntity> getList() {
            return this.list;
        }

        public PagesEntity getPages() {
            return this.pages;
        }

        public void setList(List<ListEntity> list) {
            this.list = list;
        }

        public void setPages(PagesEntity pagesEntity) {
            this.pages = pagesEntity;
        }
    }

    public String getCode() {
        return this.code;
    }

    public DataEntity getData() {
        return this.data;
    }

    public String getIs_login() {
        return this.is_login;
    }

    public String getMsg() {
        return this.msg;
    }

    public void setCode(String str) {
        this.code = str;
    }

    public void setData(DataEntity dataEntity) {
        this.data = dataEntity;
    }

    public void setIs_login(String str) {
        this.is_login = str;
    }

    public void setMsg(String str) {
        this.msg = str;
    }
}
