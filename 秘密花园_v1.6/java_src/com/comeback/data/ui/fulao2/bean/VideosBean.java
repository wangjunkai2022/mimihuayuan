package com.comeback.data.ui.fulao2.bean;

import c.a.a.b.g.h;
import f.e.a.e;
import f.e.a.k.b;
import g.a.f1.n;
import g.a.g0;
import g.a.t0;
import java.util.List;
/* loaded from: classes.dex */
public class VideosBean extends g0 implements t0 {
    public String actor;
    public String cover;
    public List<String> main_tag;
    public long release_date;
    public List<String> second_tag;
    public String thumb;
    public long upload_date;
    public int video_duration;
    public String video_id;
    public boolean video_like;
    public String video_title;

    public VideosBean() {
        if (this instanceof n) {
            ((n) this).realm$injectObjectContext();
        }
    }

    public String getActor() {
        return realmGet$actor();
    }

    public String getCover() {
        if (realmGet$cover().contains(e.a("XxYXFA=="))) {
            return realmGet$cover();
        }
        return b.z + realmGet$cover();
    }

    public List<String> getMain_tag() {
        return this.main_tag;
    }

    public String getMain_tagString() {
        StringBuffer stringBuffer = new StringBuffer();
        List<String> list = this.main_tag;
        if (list != null && list.size() != 0) {
            for (String str : this.main_tag) {
                stringBuffer.append(str);
            }
        }
        return stringBuffer.toString();
    }

    public long getRelease_date() {
        return realmGet$release_date();
    }

    public List<String> getSecond_tag() {
        return this.second_tag;
    }

    public String getSecond_tagString() {
        StringBuffer stringBuffer = new StringBuffer();
        List<String> list = this.second_tag;
        if (list != null && list.size() != 0) {
            for (String str : this.second_tag) {
                stringBuffer.append(str);
            }
        }
        return stringBuffer.toString();
    }

    public String getThumb() {
        if (realmGet$thumb().contains(e.a("XxYXFA=="))) {
            return realmGet$thumb();
        }
        return b.z + realmGet$thumb();
    }

    public String getTime() {
        if (realmGet$upload_date() != 0) {
            return h.Q0(getUpload_date() * 1000);
        }
        int realmGet$video_duration = realmGet$video_duration() % 60;
        int realmGet$video_duration2 = (realmGet$video_duration() / 60) % 60;
        int realmGet$video_duration3 = ((realmGet$video_duration() / 60) / 60) % 60;
        StringBuilder sb = new StringBuilder();
        if (realmGet$video_duration3 > 0) {
            sb.append(realmGet$video_duration3);
            sb.append(e.a("DQ=="));
        }
        if (realmGet$video_duration2 > 0) {
            if (realmGet$video_duration2 > 9) {
                sb.append(realmGet$video_duration2);
            } else {
                sb.append(e.a("Bw=="));
                sb.append(realmGet$video_duration2);
            }
            sb.append(e.a("DQ=="));
        } else {
            sb.append(e.a("B1JZ"));
        }
        if (realmGet$video_duration <= 0) {
            sb.append(e.a("B1I="));
        } else if (realmGet$video_duration > 9) {
            sb.append(realmGet$video_duration);
        } else {
            sb.append(e.a("Bw=="));
            sb.append(realmGet$video_duration);
        }
        return sb.toString();
    }

    public long getUpload_date() {
        return realmGet$upload_date();
    }

    public int getVideo_duration() {
        return realmGet$video_duration();
    }

    public String getVideo_id() {
        return realmGet$video_id();
    }

    public String getVideo_title() {
        return realmGet$video_title();
    }

    public boolean isVideo_like() {
        return realmGet$video_like();
    }

    @Override // g.a.t0
    public String realmGet$actor() {
        return this.actor;
    }

    @Override // g.a.t0
    public String realmGet$cover() {
        return this.cover;
    }

    @Override // g.a.t0
    public long realmGet$release_date() {
        return this.release_date;
    }

    @Override // g.a.t0
    public String realmGet$thumb() {
        return this.thumb;
    }

    @Override // g.a.t0
    public long realmGet$upload_date() {
        return this.upload_date;
    }

    @Override // g.a.t0
    public int realmGet$video_duration() {
        return this.video_duration;
    }

    @Override // g.a.t0
    public String realmGet$video_id() {
        return this.video_id;
    }

    @Override // g.a.t0
    public boolean realmGet$video_like() {
        return this.video_like;
    }

    @Override // g.a.t0
    public String realmGet$video_title() {
        return this.video_title;
    }

    @Override // g.a.t0
    public void realmSet$actor(String str) {
        this.actor = str;
    }

    @Override // g.a.t0
    public void realmSet$cover(String str) {
        this.cover = str;
    }

    @Override // g.a.t0
    public void realmSet$release_date(long j2) {
        this.release_date = j2;
    }

    @Override // g.a.t0
    public void realmSet$thumb(String str) {
        this.thumb = str;
    }

    @Override // g.a.t0
    public void realmSet$upload_date(long j2) {
        this.upload_date = j2;
    }

    @Override // g.a.t0
    public void realmSet$video_duration(int i2) {
        this.video_duration = i2;
    }

    @Override // g.a.t0
    public void realmSet$video_id(String str) {
        this.video_id = str;
    }

    @Override // g.a.t0
    public void realmSet$video_like(boolean z) {
        this.video_like = z;
    }

    @Override // g.a.t0
    public void realmSet$video_title(String str) {
        this.video_title = str;
    }

    public void setActor(String str) {
        realmSet$actor(str);
    }

    public void setCover(String str) {
        realmSet$cover(str);
    }

    public void setMain_tag(List<String> list) {
        this.main_tag = list;
    }

    public void setRelease_date(int i2) {
        realmSet$release_date(i2);
    }

    public void setSecond_tag(List<String> list) {
        this.second_tag = list;
    }

    public void setThumb(String str) {
        realmSet$thumb(str);
    }

    public void setUpload_date(int i2) {
        realmSet$upload_date(i2);
    }

    public void setVideo_duration(int i2) {
        realmSet$video_duration(i2);
    }

    public void setVideo_id(String str) {
        realmSet$video_id(str);
    }

    public void setVideo_like(boolean z) {
        realmSet$video_like(z);
    }

    public void setVideo_title(String str) {
        realmSet$video_title(str);
    }
}
