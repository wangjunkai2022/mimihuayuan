package com.comeback.data.ui.gkj.bean;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import f.e.a.e;
import f.e.a.f.j;
import f.e.a.k.b;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class NavBean extends j {
    public List<DataEntity> data;
    public boolean haveMore;

    /* loaded from: classes.dex */
    public static class DataEntity {
        public List<ArticleVOSEntity> articleVOS;
        public int commonly;
        public int commonlySort;
        public int count;
        public String createTime;
        public boolean haveMore;
        public int horizontal;
        public int id;
        public int refIdCon;
        public String refIds;
        public int sort;
        public String specialName;
        public String specialNameEn;
        public int status;
        public int style;
        public int total;
        public int type;
        public String updateTime;

        /* loaded from: classes.dex */
        public static class ArticleVOSEntity implements Parcelable {
            public static final Parcelable.Creator<ArticleVOSEntity> CREATOR = new a();
            public long addTime;
            public String content;
            public int count;
            public String cover;
            public String coverH;
            public String coverS;
            public String createTime;
            public int finish;
            public int free;
            public double grade;
            public boolean haveNew;
            public int id;
            public String info;
            public int language;
            public boolean likeIs;
            public String name;
            public String nameCn;
            public int playPre;
            public int recommend;
            public String resources;
            public int someDay;
            public String src;
            public int status;
            public String updateBy;
            public String updateTime;
            public String videoTime;
            public int vip;

            /* loaded from: classes.dex */
            public static class a implements Parcelable.Creator<ArticleVOSEntity> {
                @Override // android.os.Parcelable.Creator
                public ArticleVOSEntity createFromParcel(Parcel parcel) {
                    return new ArticleVOSEntity(parcel);
                }

                @Override // android.os.Parcelable.Creator
                public ArticleVOSEntity[] newArray(int i2) {
                    return new ArticleVOSEntity[i2];
                }
            }

            public ArticleVOSEntity() {
            }

            @Override // android.os.Parcelable
            public int describeContents() {
                return 0;
            }

            public long getAddTime() {
                return this.addTime;
            }

            public String getContent() {
                return this.content;
            }

            public int getCount() {
                return this.count;
            }

            public String getCover() {
                if (!TextUtils.isEmpty(this.cover) && !this.cover.startsWith(e.a("XxYXFA=="))) {
                    StringBuilder sb = new StringBuilder();
                    f.b.a.a.a.B(sb, b.C, "GBAGFwQGS1AWFRs=");
                    sb.append(this.cover);
                    return sb.toString();
                }
                return this.cover;
            }

            public String getCoverH() {
                if (!TextUtils.isEmpty(this.coverH) && !this.coverH.startsWith(e.a("XxYXFA=="))) {
                    StringBuilder sb = new StringBuilder();
                    f.b.a.a.a.B(sb, b.C, "GBAGFwQGS1AWFRs=");
                    sb.append(this.coverH);
                    return sb.toString();
                }
                return this.coverH;
            }

            public String getCoverS() {
                if (!TextUtils.isEmpty(this.coverS) && !this.coverS.startsWith(e.a("XxYXFA=="))) {
                    StringBuilder sb = new StringBuilder();
                    f.b.a.a.a.B(sb, b.C, "GBAGFwQGS1AWFRs=");
                    sb.append(this.coverS);
                    return sb.toString();
                }
                return this.coverS;
            }

            public String getCreateTime() {
                return this.createTime;
            }

            public int getFinish() {
                return this.finish;
            }

            public int getFree() {
                return this.free;
            }

            public double getGrade() {
                return this.grade;
            }

            public int getId() {
                return this.id;
            }

            public String getInfo() {
                return this.info;
            }

            public int getLanguage() {
                return this.language;
            }

            public String getName() {
                return this.name;
            }

            public String getNameCn() {
                return this.nameCn;
            }

            public int getPlayPre() {
                return this.playPre;
            }

            public int getRecommend() {
                return this.recommend;
            }

            public String getResources() {
                StringBuilder sb = new StringBuilder();
                f.b.a.a.a.B(sb, f.e.a.j.m.p.e.f3920c, "GBAGFwQGS1AWFRs=");
                sb.append(this.resources);
                return sb.toString();
            }

            public int getSomeDay() {
                return this.someDay;
            }

            public String getSrc() {
                return this.src;
            }

            public int getStatus() {
                return this.status;
            }

            public String getUpdateBy() {
                return this.updateBy;
            }

            public String getUpdateTime() {
                return this.updateTime;
            }

            public String getVideoTime() {
                return this.videoTime;
            }

            public int getVip() {
                return this.vip;
            }

            public boolean isHaveNew() {
                return this.haveNew;
            }

            public boolean isLikeIs() {
                return this.likeIs;
            }

            public boolean isVip() {
                return !TextUtils.isEmpty(this.resources) || this.vip == 1;
            }

            public void setAddTime(long j2) {
                this.addTime = j2;
            }

            public void setContent(String str) {
                this.content = str;
            }

            public void setCount(int i2) {
                this.count = i2;
            }

            public void setCover(String str) {
                this.cover = str;
            }

            public void setCoverH(String str) {
                this.coverH = str;
            }

            public void setCoverS(String str) {
                this.coverS = str;
            }

            public void setCreateTime(String str) {
                this.createTime = str;
            }

            public void setFinish(int i2) {
                this.finish = i2;
            }

            public void setFree(int i2) {
                this.free = i2;
            }

            public void setGrade(double d2) {
                this.grade = d2;
            }

            public void setHaveNew(boolean z) {
                this.haveNew = z;
            }

            public void setId(int i2) {
                this.id = i2;
            }

            public void setInfo(String str) {
                this.info = str;
            }

            public void setLanguage(int i2) {
                this.language = i2;
            }

            public void setLikeIs(boolean z) {
                this.likeIs = z;
            }

            public void setName(String str) {
                this.name = str;
            }

            public void setNameCn(String str) {
                this.nameCn = str;
            }

            public void setPlayPre(int i2) {
                this.playPre = i2;
            }

            public void setRecommend(int i2) {
                this.recommend = i2;
            }

            public void setResources(String str) {
                this.resources = str;
            }

            public void setSomeDay(int i2) {
                this.someDay = i2;
            }

            public void setSrc(String str) {
                this.src = str;
            }

            public void setStatus(int i2) {
                this.status = i2;
            }

            public void setUpdateBy(String str) {
                this.updateBy = str;
            }

            public void setUpdateTime(String str) {
                this.updateTime = str;
            }

            public void setVideoTime(String str) {
                this.videoTime = str;
            }

            public void setVip(int i2) {
                this.vip = i2;
            }

            @Override // android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i2) {
                parcel.writeLong(this.addTime);
                parcel.writeByte(this.haveNew ? (byte) 1 : (byte) 0);
                parcel.writeByte(this.likeIs ? (byte) 1 : (byte) 0);
                parcel.writeString(this.src);
                parcel.writeInt(this.count);
                parcel.writeString(this.nameCn);
                parcel.writeInt(this.language);
                parcel.writeInt(this.recommend);
                parcel.writeString(this.updateTime);
                parcel.writeInt(this.someDay);
                parcel.writeString(this.coverH);
                parcel.writeString(this.createTime);
                parcel.writeString(this.updateBy);
                parcel.writeDouble(this.grade);
                parcel.writeString(this.name);
                parcel.writeInt(this.finish);
                parcel.writeInt(this.id);
                parcel.writeInt(this.playPre);
                parcel.writeInt(this.free);
                parcel.writeInt(this.vip);
                parcel.writeString(this.coverS);
                parcel.writeString(this.info);
                parcel.writeInt(this.status);
            }

            public ArticleVOSEntity(Parcel parcel) {
                this.addTime = parcel.readLong();
                this.haveNew = parcel.readByte() != 0;
                this.likeIs = parcel.readByte() != 0;
                this.src = parcel.readString();
                this.count = parcel.readInt();
                this.nameCn = parcel.readString();
                this.language = parcel.readInt();
                this.recommend = parcel.readInt();
                this.updateTime = parcel.readString();
                this.someDay = parcel.readInt();
                this.coverH = parcel.readString();
                this.createTime = parcel.readString();
                this.updateBy = parcel.readString();
                this.grade = parcel.readDouble();
                this.name = parcel.readString();
                this.finish = parcel.readInt();
                this.id = parcel.readInt();
                this.playPre = parcel.readInt();
                this.free = parcel.readInt();
                this.vip = parcel.readInt();
                this.coverS = parcel.readString();
                this.info = parcel.readString();
                this.status = parcel.readInt();
            }
        }

        public List<ArticleVOSEntity> getArticleVOS() {
            return this.articleVOS;
        }

        public int getCommonly() {
            return this.commonly;
        }

        public int getCommonlySort() {
            return this.commonlySort;
        }

        public int getCount() {
            return this.count;
        }

        public String getCreateTime() {
            return this.createTime;
        }

        public int getHorizontal() {
            return this.horizontal;
        }

        public int getId() {
            return this.id;
        }

        public int getRefIdCon() {
            return this.refIdCon;
        }

        public String getRefIds() {
            return this.refIds;
        }

        public int getSort() {
            return this.sort;
        }

        public String getSpecialName() {
            return this.specialName;
        }

        public String getSpecialNameEn() {
            return this.specialNameEn;
        }

        public int getStatus() {
            return this.status;
        }

        public int getStyle() {
            return this.style;
        }

        public int getTotal() {
            return this.total;
        }

        public String getTotalText() {
            return String.format(e.a("0f3Gg/f436jHg5D9UE9SD97hy00="), Integer.valueOf(this.total));
        }

        public int getType() {
            return this.type;
        }

        public String getUpdateTime() {
            return this.updateTime;
        }

        public boolean isHaveMore() {
            return this.haveMore;
        }

        public void setArticleVOS(List<ArticleVOSEntity> list) {
            this.articleVOS = list;
        }

        public void setCommonly(int i2) {
            this.commonly = i2;
        }

        public void setCommonlySort(int i2) {
            this.commonlySort = i2;
        }

        public void setCount(int i2) {
            this.count = i2;
        }

        public void setCreateTime(String str) {
            this.createTime = str;
        }

        public void setHaveMore(boolean z) {
            this.haveMore = z;
        }

        public void setHorizontal(int i2) {
            this.horizontal = i2;
        }

        public void setId(int i2) {
            this.id = i2;
        }

        public void setRefIdCon(int i2) {
            this.refIdCon = i2;
        }

        public void setRefIds(String str) {
            this.refIds = str;
        }

        public void setSort(int i2) {
            this.sort = i2;
        }

        public void setSpecialName(String str) {
            this.specialName = str;
        }

        public void setSpecialNameEn(String str) {
            this.specialNameEn = str;
        }

        public void setStatus(int i2) {
            this.status = i2;
        }

        public void setStyle(int i2) {
            this.style = i2;
        }

        public void setTotal(int i2) {
            this.total = i2;
        }

        public void setType(int i2) {
            this.type = i2;
        }

        public void setUpdateTime(String str) {
            this.updateTime = str;
        }
    }

    public List<DataEntity> getData() {
        Iterator<DataEntity> it = this.data.iterator();
        while (it.hasNext()) {
            List<DataEntity.ArticleVOSEntity> articleVOS = it.next().getArticleVOS();
            Iterator<DataEntity.ArticleVOSEntity> it2 = articleVOS.iterator();
            while (it2.hasNext()) {
                if (!it2.next().isVip()) {
                    it2.remove();
                }
            }
            if (articleVOS.size() == 0) {
                it.remove();
            }
        }
        return this.data;
    }

    public boolean isHaveMore() {
        return this.haveMore;
    }

    public void setData(List<DataEntity> list) {
        this.data = list;
    }

    public void setHaveMore(boolean z) {
        this.haveMore = z;
    }
}
