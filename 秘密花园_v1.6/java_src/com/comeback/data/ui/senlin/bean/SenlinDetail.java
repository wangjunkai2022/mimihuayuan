package com.comeback.data.ui.senlin.bean;

import android.text.TextUtils;
import f.e.a.e;
import f.e.a.f.k;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public class SenlinDetail extends k {
    public int code;
    public String limit;
    public List<ListEntity> list;
    public String msg;
    public int page;
    public int pagecount;
    public int total;

    /* loaded from: classes.dex */
    public class ListEntity {
        public int group_id;
        public int type_id;
        public int type_id_1;
        public String type_name;
        public String vod_actor;
        public String vod_area;
        public String vod_author;
        public String vod_behind;
        public String vod_blurb;
        public String vod_class;
        public String vod_color;
        public String vod_content;
        public int vod_copyright;
        public String vod_director;
        public int vod_douban_id;
        public String vod_douban_score;
        public int vod_down;
        public String vod_down_from;
        public String vod_down_note;
        public String vod_down_server;
        public String vod_down_url;
        public String vod_duration;
        public String vod_en;
        public int vod_hits;
        public int vod_hits_day;
        public int vod_hits_month;
        public int vod_hits_week;
        public int vod_id;
        public int vod_isend;
        public String vod_jumpurl;
        public String vod_lang;
        public String vod_letter;
        public int vod_level;
        public int vod_lock;
        public String vod_name;
        public String vod_pic;
        public String vod_pic_screenshot;
        public String vod_pic_slide;
        public String vod_pic_thumb;
        public String vod_play_from;
        public String vod_play_note;
        public String vod_play_server;
        public String vod_play_url;
        public int vod_plot;
        public String vod_plot_detail;
        public String vod_plot_name;
        public int vod_points;
        public int vod_points_down;
        public int vod_points_play;
        public String vod_pubdate;
        public String vod_pwd;
        public String vod_pwd_down;
        public String vod_pwd_down_url;
        public String vod_pwd_play;
        public String vod_pwd_play_url;
        public String vod_pwd_url;
        public String vod_rel_art;
        public String vod_rel_vod;
        public String vod_remarks;
        public String vod_reurl;
        public String vod_score;
        public int vod_score_all;
        public int vod_score_num;
        public String vod_serial;
        public String vod_state;
        public int vod_status;
        public String vod_sub;
        public String vod_tag;
        public String vod_time;
        public int vod_time_add;
        public int vod_time_hits;
        public int vod_time_make;
        public int vod_total;
        public String vod_tpl;
        public String vod_tpl_down;
        public String vod_tpl_play;
        public int vod_trysee;
        public String vod_tv;
        public int vod_up;
        public String vod_version;
        public String vod_weekday;
        public String vod_writer;
        public String vod_year;

        public ListEntity() {
        }

        public int getGroup_id() {
            return this.group_id;
        }

        public int getType_id() {
            return this.type_id;
        }

        public int getType_id_1() {
            return this.type_id_1;
        }

        public String getType_name() {
            return this.type_name;
        }

        public String getVod_actor() {
            return this.vod_actor;
        }

        public String getVod_area() {
            return this.vod_area;
        }

        public String getVod_author() {
            return this.vod_author;
        }

        public String getVod_behind() {
            return this.vod_behind;
        }

        public String getVod_blurb() {
            return this.vod_blurb;
        }

        public String getVod_class() {
            return this.vod_class;
        }

        public String getVod_color() {
            return this.vod_color;
        }

        public String getVod_content() {
            if (TextUtils.isEmpty(this.vod_blurb)) {
                return this.vod_content;
            }
            return this.vod_blurb;
        }

        public int getVod_copyright() {
            return this.vod_copyright;
        }

        public String getVod_director() {
            return this.vod_director;
        }

        public int getVod_douban_id() {
            return this.vod_douban_id;
        }

        public String getVod_douban_score() {
            return this.vod_douban_score;
        }

        public int getVod_down() {
            return this.vod_down;
        }

        public String getVod_down_from() {
            return this.vod_down_from;
        }

        public String getVod_down_note() {
            return this.vod_down_note;
        }

        public String getVod_down_server() {
            return this.vod_down_server;
        }

        public String getVod_down_url() {
            return this.vod_down_url;
        }

        public String getVod_duration() {
            return this.vod_duration;
        }

        public String getVod_en() {
            return this.vod_en;
        }

        public int getVod_hits() {
            return this.vod_hits;
        }

        public int getVod_hits_day() {
            return this.vod_hits_day;
        }

        public int getVod_hits_month() {
            return this.vod_hits_month;
        }

        public int getVod_hits_week() {
            return this.vod_hits_week;
        }

        public int getVod_id() {
            return this.vod_id;
        }

        public int getVod_isend() {
            return this.vod_isend;
        }

        public String getVod_jumpurl() {
            return this.vod_jumpurl;
        }

        public String getVod_lang() {
            return this.vod_lang;
        }

        public String getVod_letter() {
            return this.vod_letter;
        }

        public int getVod_level() {
            return this.vod_level;
        }

        public int getVod_lock() {
            return this.vod_lock;
        }

        public String getVod_name() {
            return this.vod_name;
        }

        public String getVod_pic() {
            return this.vod_pic;
        }

        public String getVod_pic_screenshot() {
            return this.vod_pic_screenshot;
        }

        public String getVod_pic_slide() {
            return this.vod_pic_slide;
        }

        public String getVod_pic_thumb() {
            return this.vod_pic_thumb;
        }

        public String getVod_play_from() {
            return this.vod_play_from;
        }

        public String getVod_play_note() {
            return this.vod_play_note;
        }

        public String getVod_play_server() {
            return this.vod_play_server;
        }

        public String getVod_play_url() {
            if (!this.vod_play_url.contains(e.a("XxYXFA=="))) {
                return e.a("XxYXFBhJFhwEEUNJGgsKD0JMAAsG");
            }
            if (this.vod_play_url.startsWith(e.a("XxYXFA=="))) {
                return this.vod_play_url;
            }
            String[] split = this.vod_play_url.split(e.a("XxYXFA=="));
            return e.a("XxYXFA==") + split[1];
        }

        public ArrayList<String> getVod_play_urlList() {
            String[] split;
            ArrayList<String> arrayList = new ArrayList<>();
            if (this.vod_play_url.contains(e.a("FA=="))) {
                if (this.vod_play_url.contains(e.a("E0ZH"))) {
                    for (String str : this.vod_play_url.split(e.a("a0Y/QDdX"))) {
                        for (String str2 : str.split(e.a("FA=="))) {
                            if (!str2.contains(e.a("RAoCFg4=")) || str2.contains(e.a("GQ9QEQ==")) || str2.contains(e.a("GQ8TUA=="))) {
                                arrayList.add(str2);
                            }
                        }
                    }
                } else {
                    for (String str3 : this.vod_play_url.split(e.a("FA=="))) {
                        arrayList.add(str3);
                    }
                }
            } else {
                arrayList.add(this.vod_play_url);
            }
            Iterator<String> it = arrayList.iterator();
            while (it.hasNext()) {
                String next = it.next();
                if (TextUtils.isEmpty(next) || !next.contains(e.a("Ew=="))) {
                    it.remove();
                }
            }
            return arrayList;
        }

        public int getVod_plot() {
            return this.vod_plot;
        }

        public String getVod_plot_detail() {
            return this.vod_plot_detail;
        }

        public String getVod_plot_name() {
            return this.vod_plot_name;
        }

        public int getVod_points() {
            return this.vod_points;
        }

        public int getVod_points_down() {
            return this.vod_points_down;
        }

        public int getVod_points_play() {
            return this.vod_points_play;
        }

        public String getVod_pubdate() {
            return this.vod_pubdate;
        }

        public String getVod_pwd() {
            return this.vod_pwd;
        }

        public String getVod_pwd_down() {
            return this.vod_pwd_down;
        }

        public String getVod_pwd_down_url() {
            return this.vod_pwd_down_url;
        }

        public String getVod_pwd_play() {
            return this.vod_pwd_play;
        }

        public String getVod_pwd_play_url() {
            return this.vod_pwd_play_url;
        }

        public String getVod_pwd_url() {
            return this.vod_pwd_url;
        }

        public String getVod_rel_art() {
            return this.vod_rel_art;
        }

        public String getVod_rel_vod() {
            return this.vod_rel_vod;
        }

        public String getVod_remarks() {
            return this.vod_remarks;
        }

        public String getVod_reurl() {
            return this.vod_reurl;
        }

        public String getVod_score() {
            return this.vod_score;
        }

        public int getVod_score_all() {
            return this.vod_score_all;
        }

        public int getVod_score_num() {
            return this.vod_score_num;
        }

        public String getVod_serial() {
            return this.vod_serial;
        }

        public String getVod_state() {
            return this.vod_state;
        }

        public int getVod_status() {
            return this.vod_status;
        }

        public String getVod_sub() {
            return this.vod_sub;
        }

        public String getVod_tag() {
            return this.vod_tag;
        }

        public String getVod_time() {
            return this.vod_time;
        }

        public int getVod_time_add() {
            return this.vod_time_add;
        }

        public int getVod_time_hits() {
            return this.vod_time_hits;
        }

        public int getVod_time_make() {
            return this.vod_time_make;
        }

        public int getVod_total() {
            return this.vod_total;
        }

        public String getVod_tpl() {
            return this.vod_tpl;
        }

        public String getVod_tpl_down() {
            return this.vod_tpl_down;
        }

        public String getVod_tpl_play() {
            return this.vod_tpl_play;
        }

        public int getVod_trysee() {
            return this.vod_trysee;
        }

        public String getVod_tv() {
            return this.vod_tv;
        }

        public int getVod_up() {
            return this.vod_up;
        }

        public String getVod_version() {
            return this.vod_version;
        }

        public String getVod_weekday() {
            return this.vod_weekday;
        }

        public String getVod_writer() {
            return this.vod_writer;
        }

        public String getVod_year() {
            return this.vod_year;
        }

        public void setGroup_id(int i2) {
            this.group_id = i2;
        }

        public void setType_id(int i2) {
            this.type_id = i2;
        }

        public void setType_id_1(int i2) {
            this.type_id_1 = i2;
        }

        public void setType_name(String str) {
            this.type_name = str;
        }

        public void setVod_actor(String str) {
            this.vod_actor = str;
        }

        public void setVod_area(String str) {
            this.vod_area = str;
        }

        public void setVod_author(String str) {
            this.vod_author = str;
        }

        public void setVod_behind(String str) {
            this.vod_behind = str;
        }

        public void setVod_blurb(String str) {
            this.vod_blurb = str;
        }

        public void setVod_class(String str) {
            this.vod_class = str;
        }

        public void setVod_color(String str) {
            this.vod_color = str;
        }

        public void setVod_content(String str) {
            this.vod_content = str;
        }

        public void setVod_copyright(int i2) {
            this.vod_copyright = i2;
        }

        public void setVod_director(String str) {
            this.vod_director = str;
        }

        public void setVod_douban_id(int i2) {
            this.vod_douban_id = i2;
        }

        public void setVod_douban_score(String str) {
            this.vod_douban_score = str;
        }

        public void setVod_down(int i2) {
            this.vod_down = i2;
        }

        public void setVod_down_from(String str) {
            this.vod_down_from = str;
        }

        public void setVod_down_note(String str) {
            this.vod_down_note = str;
        }

        public void setVod_down_server(String str) {
            this.vod_down_server = str;
        }

        public void setVod_down_url(String str) {
            this.vod_down_url = str;
        }

        public void setVod_duration(String str) {
            this.vod_duration = str;
        }

        public void setVod_en(String str) {
            this.vod_en = str;
        }

        public void setVod_hits(int i2) {
            this.vod_hits = i2;
        }

        public void setVod_hits_day(int i2) {
            this.vod_hits_day = i2;
        }

        public void setVod_hits_month(int i2) {
            this.vod_hits_month = i2;
        }

        public void setVod_hits_week(int i2) {
            this.vod_hits_week = i2;
        }

        public void setVod_id(int i2) {
            this.vod_id = i2;
        }

        public void setVod_isend(int i2) {
            this.vod_isend = i2;
        }

        public void setVod_jumpurl(String str) {
            this.vod_jumpurl = str;
        }

        public void setVod_lang(String str) {
            this.vod_lang = str;
        }

        public void setVod_letter(String str) {
            this.vod_letter = str;
        }

        public void setVod_level(int i2) {
            this.vod_level = i2;
        }

        public void setVod_lock(int i2) {
            this.vod_lock = i2;
        }

        public void setVod_name(String str) {
            this.vod_name = str;
        }

        public void setVod_pic(String str) {
            this.vod_pic = str;
        }

        public void setVod_pic_screenshot(String str) {
            this.vod_pic_screenshot = str;
        }

        public void setVod_pic_slide(String str) {
            this.vod_pic_slide = str;
        }

        public void setVod_pic_thumb(String str) {
            this.vod_pic_thumb = str;
        }

        public void setVod_play_from(String str) {
            this.vod_play_from = str;
        }

        public void setVod_play_note(String str) {
            this.vod_play_note = str;
        }

        public void setVod_play_server(String str) {
            this.vod_play_server = str;
        }

        public void setVod_play_url(String str) {
            this.vod_play_url = str;
        }

        public void setVod_plot(int i2) {
            this.vod_plot = i2;
        }

        public void setVod_plot_detail(String str) {
            this.vod_plot_detail = str;
        }

        public void setVod_plot_name(String str) {
            this.vod_plot_name = str;
        }

        public void setVod_points(int i2) {
            this.vod_points = i2;
        }

        public void setVod_points_down(int i2) {
            this.vod_points_down = i2;
        }

        public void setVod_points_play(int i2) {
            this.vod_points_play = i2;
        }

        public void setVod_pubdate(String str) {
            this.vod_pubdate = str;
        }

        public void setVod_pwd(String str) {
            this.vod_pwd = str;
        }

        public void setVod_pwd_down(String str) {
            this.vod_pwd_down = str;
        }

        public void setVod_pwd_down_url(String str) {
            this.vod_pwd_down_url = str;
        }

        public void setVod_pwd_play(String str) {
            this.vod_pwd_play = str;
        }

        public void setVod_pwd_play_url(String str) {
            this.vod_pwd_play_url = str;
        }

        public void setVod_pwd_url(String str) {
            this.vod_pwd_url = str;
        }

        public void setVod_rel_art(String str) {
            this.vod_rel_art = str;
        }

        public void setVod_rel_vod(String str) {
            this.vod_rel_vod = str;
        }

        public void setVod_remarks(String str) {
            this.vod_remarks = str;
        }

        public void setVod_reurl(String str) {
            this.vod_reurl = str;
        }

        public void setVod_score(String str) {
            this.vod_score = str;
        }

        public void setVod_score_all(int i2) {
            this.vod_score_all = i2;
        }

        public void setVod_score_num(int i2) {
            this.vod_score_num = i2;
        }

        public void setVod_serial(String str) {
            this.vod_serial = str;
        }

        public void setVod_state(String str) {
            this.vod_state = str;
        }

        public void setVod_status(int i2) {
            this.vod_status = i2;
        }

        public void setVod_sub(String str) {
            this.vod_sub = str;
        }

        public void setVod_tag(String str) {
            this.vod_tag = str;
        }

        public void setVod_time(String str) {
            this.vod_time = str;
        }

        public void setVod_time_add(int i2) {
            this.vod_time_add = i2;
        }

        public void setVod_time_hits(int i2) {
            this.vod_time_hits = i2;
        }

        public void setVod_time_make(int i2) {
            this.vod_time_make = i2;
        }

        public void setVod_total(int i2) {
            this.vod_total = i2;
        }

        public void setVod_tpl(String str) {
            this.vod_tpl = str;
        }

        public void setVod_tpl_down(String str) {
            this.vod_tpl_down = str;
        }

        public void setVod_tpl_play(String str) {
            this.vod_tpl_play = str;
        }

        public void setVod_trysee(int i2) {
            this.vod_trysee = i2;
        }

        public void setVod_tv(String str) {
            this.vod_tv = str;
        }

        public void setVod_up(int i2) {
            this.vod_up = i2;
        }

        public void setVod_version(String str) {
            this.vod_version = str;
        }

        public void setVod_weekday(String str) {
            this.vod_weekday = str;
        }

        public void setVod_writer(String str) {
            this.vod_writer = str;
        }

        public void setVod_year(String str) {
            this.vod_year = str;
        }
    }

    public int getCode() {
        return this.code;
    }

    public String getLimit() {
        return this.limit;
    }

    public List<ListEntity> getList() {
        return this.list;
    }

    public String getMsg() {
        return this.msg;
    }

    public int getPage() {
        return this.page;
    }

    public int getPagecount() {
        return this.pagecount;
    }

    public int getTotal() {
        return this.total;
    }

    public void setCode(int i2) {
        this.code = i2;
    }

    public void setLimit(String str) {
        this.limit = str;
    }

    public void setList(List<ListEntity> list) {
        this.list = list;
    }

    public void setMsg(String str) {
        this.msg = str;
    }

    public void setPage(int i2) {
        this.page = i2;
    }

    public void setPagecount(int i2) {
        this.pagecount = i2;
    }

    public void setTotal(int i2) {
        this.total = i2;
    }
}
