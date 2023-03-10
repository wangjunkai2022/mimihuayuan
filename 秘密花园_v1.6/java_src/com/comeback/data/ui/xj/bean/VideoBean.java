package com.comeback.data.ui.xj.bean;

import android.os.Parcel;
import android.os.Parcelable;
import f.e.a.e;
import f.e.a.f.k;
import java.util.List;
/* loaded from: classes.dex */
public class VideoBean extends k implements Parcelable {
    public static final Parcelable.Creator<VideoBean> CREATOR = new a();
    public List<?> actor_tags;
    public String areaid;
    public String areaname;
    public String cateid;
    public String catename;
    public String commentcount;
    public String coverpic;
    public String createtime;
    public String definition;
    public String down_url;
    public String downcount_total;
    public String downnum;
    public String duration;
    public int exclusive;
    public String intro;
    public String isvip;
    public int limit_free;
    public String mosaic;
    public String play;
    public String play_url;
    public int playcount_total;
    public String portrait;
    public String scorenum;
    public List<TagsBean> tags;
    public String title;
    public String updatetime;
    public String upnum;
    public String view_price;
    public String vodid;
    public String vodkey;
    public String yearid;
    public String yearname;

    /* loaded from: classes.dex */
    public static class TagsBean {
        public String itemcount;
        public String tagid;
        public String tagname;
        public String tagtype;

        public String getItemcount() {
            return this.itemcount;
        }

        public String getTagid() {
            return this.tagid;
        }

        public String getTagname() {
            return this.tagname;
        }

        public String getTagtype() {
            return this.tagtype;
        }

        public void setItemcount(String str) {
            this.itemcount = str;
        }

        public void setTagid(String str) {
            this.tagid = str;
        }

        public void setTagname(String str) {
            this.tagname = str;
        }

        public void setTagtype(String str) {
            this.tagtype = str;
        }
    }

    /* loaded from: classes.dex */
    public static class a implements Parcelable.Creator<VideoBean> {
        @Override // android.os.Parcelable.Creator
        public VideoBean createFromParcel(Parcel parcel) {
            return new VideoBean(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public VideoBean[] newArray(int i2) {
            return new VideoBean[i2];
        }
    }

    public VideoBean(Parcel parcel) {
        this.areaid = parcel.readString();
        this.areaname = parcel.readString();
        this.cateid = parcel.readString();
        this.catename = parcel.readString();
        this.commentcount = parcel.readString();
        this.coverpic = parcel.readString();
        this.createtime = parcel.readString();
        this.definition = parcel.readString();
        this.down_url = parcel.readString();
        this.downcount_total = parcel.readString();
        this.downnum = parcel.readString();
        this.duration = parcel.readString();
        this.intro = parcel.readString();
        this.limit_free = parcel.readInt();
        this.mosaic = parcel.readString();
        this.play_url = parcel.readString();
        this.playcount_total = parcel.readInt();
        this.portrait = parcel.readString();
        this.scorenum = parcel.readString();
        this.title = parcel.readString();
        this.updatetime = parcel.readString();
        this.upnum = parcel.readString();
        this.view_price = parcel.readString();
        this.vodid = parcel.readString();
        this.vodkey = parcel.readString();
        this.yearid = parcel.readString();
        this.yearname = parcel.readString();
        this.isvip = parcel.readString();
        this.exclusive = parcel.readInt();
        this.play = parcel.readString();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public List<?> getActor_tags() {
        return this.actor_tags;
    }

    public String getAreaid() {
        return this.areaid;
    }

    public String getAreaname() {
        return this.areaname;
    }

    public String getCateid() {
        return this.cateid;
    }

    public String getCatename() {
        return this.catename;
    }

    public String getCommentcount() {
        return this.commentcount;
    }

    public String getCoverpic() {
        return this.coverpic;
    }

    public String getCreatetime() {
        return this.createtime;
    }

    public String getDefinition() {
        if (isVip()) {
            return e.a("Aw==");
        }
        return this.definition;
    }

    public String getDown_url() {
        return this.down_url;
    }

    public String getDowncount_total() {
        return this.downcount_total;
    }

    public String getDownnum() {
        return this.downnum;
    }

    public String getDuration() {
        return this.duration;
    }

    public int getExclusive() {
        return this.exclusive;
    }

    public String getIntro() {
        return this.intro;
    }

    public String getIsvip() {
        return this.isvip;
    }

    public int getLimit_free() {
        return this.limit_free;
    }

    public String getMosaic() {
        return this.mosaic;
    }

    public String getPlay() {
        return this.play;
    }

    public String getPlay_url() {
        return this.play_url;
    }

    public int getPlaycount_total() {
        return this.playcount_total;
    }

    public String getPortrait() {
        return this.portrait;
    }

    public String getScorenum() {
        return this.scorenum;
    }

    public String getStar() {
        String tagname = (getTags() == null || getTags().size() == 0) ? "" : getTags().get(0).getTagname();
        return getScorenum() + e.a("DQ==") + tagname;
    }

    public List<TagsBean> getTags() {
        return this.tags;
    }

    public String getTitle() {
        return this.title;
    }

    public String getUpdatetime() {
        return this.updatetime;
    }

    public String getUpnum() {
        return this.upnum;
    }

    public String getView_price() {
        return this.view_price;
    }

    public String getVodid() {
        return this.vodid;
    }

    public String getVodkey() {
        return this.vodkey;
    }

    public String getYearid() {
        return this.yearid;
    }

    public String getYearname() {
        return this.yearname;
    }

    public boolean isVip() {
        return e.a("Bg==").equals(this.isvip);
    }

    public void setActor_tags(List<?> list) {
        this.actor_tags = list;
    }

    public void setAreaid(String str) {
        this.areaid = str;
    }

    public void setAreaname(String str) {
        this.areaname = str;
    }

    public void setCateid(String str) {
        this.cateid = str;
    }

    public void setCatename(String str) {
        this.catename = str;
    }

    public void setCommentcount(String str) {
        this.commentcount = str;
    }

    public void setCoverpic(String str) {
        this.coverpic = str;
    }

    public void setCreatetime(String str) {
        this.createtime = str;
    }

    public void setDefinition(String str) {
        this.definition = str;
    }

    public void setDown_url(String str) {
        this.down_url = str;
    }

    public void setDowncount_total(String str) {
        this.downcount_total = str;
    }

    public void setDownnum(String str) {
        this.downnum = str;
    }

    public void setDuration(String str) {
        this.duration = str;
    }

    public void setExclusive(int i2) {
        this.exclusive = i2;
    }

    public void setIntro(String str) {
        this.intro = str;
    }

    public void setIsvip(String str) {
        this.isvip = str;
    }

    public void setLimit_free(int i2) {
        this.limit_free = i2;
    }

    public void setMosaic(String str) {
        this.mosaic = str;
    }

    public void setPlay(String str) {
        this.play = str;
    }

    public void setPlay_url(String str) {
        this.play_url = str;
    }

    public void setPlaycount_total(int i2) {
        this.playcount_total = i2;
    }

    public void setPortrait(String str) {
        this.portrait = str;
    }

    public void setScorenum(String str) {
        this.scorenum = str;
    }

    public void setTags(List<TagsBean> list) {
        this.tags = list;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public void setUpdatetime(String str) {
        this.updatetime = str;
    }

    public void setUpnum(String str) {
        this.upnum = str;
    }

    public void setView_price(String str) {
        this.view_price = str;
    }

    public void setVodid(String str) {
        this.vodid = str;
    }

    public void setVodkey(String str) {
        this.vodkey = str;
    }

    public void setYearid(String str) {
        this.yearid = str;
    }

    public void setYearname(String str) {
        this.yearname = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.areaid);
        parcel.writeString(this.areaname);
        parcel.writeString(this.cateid);
        parcel.writeString(this.catename);
        parcel.writeString(this.commentcount);
        parcel.writeString(this.coverpic);
        parcel.writeString(this.createtime);
        parcel.writeString(this.definition);
        parcel.writeString(this.down_url);
        parcel.writeString(this.downcount_total);
        parcel.writeString(this.downnum);
        parcel.writeString(this.duration);
        parcel.writeString(this.intro);
        parcel.writeInt(this.limit_free);
        parcel.writeString(this.mosaic);
        parcel.writeString(this.play_url);
        parcel.writeInt(this.playcount_total);
        parcel.writeString(this.portrait);
        parcel.writeString(this.scorenum);
        parcel.writeString(this.title);
        parcel.writeString(this.updatetime);
        parcel.writeString(this.upnum);
        parcel.writeString(this.view_price);
        parcel.writeString(this.vodid);
        parcel.writeString(this.vodkey);
        parcel.writeString(this.yearid);
        parcel.writeString(this.yearname);
        parcel.writeString(this.isvip);
        parcel.writeInt(this.exclusive);
        parcel.writeString(this.play);
    }
}
