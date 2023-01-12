package com.comeback.data.ui.gkj.bean;

import android.os.Parcel;
import android.os.Parcelable;
import f.e.a.e;
import f.e.a.f.k;
import java.util.List;

/* loaded from: classes.dex */
public class ComicDetail extends k {
    public DataEntity data;

    /* loaded from: classes.dex */
    public static class DataEntity {
        public long addTime;
        public int chapterPrice;
        public List<ChaptersEntity> chapters;
        public int count;
        public String coverH;
        public String coverS;
        public String createTime;
        public int discount;
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
        public double playSum;
        public int recommend;
        public int someDay;
        public String src;
        public int status;
        public List<TagsEntity> tags;
        public String updateBy;
        public String updateTime;
        public int vip;

        /* loaded from: classes.dex */
        public static class ChaptersEntity implements Parcelable {
            public static final Parcelable.Creator<ChaptersEntity> CREATOR = new a();
            public int id;
            public int index;
            public String name;
            public boolean playIs;

            /* loaded from: classes.dex */
            public static class a implements Parcelable.Creator<ChaptersEntity> {
                @Override // android.os.Parcelable.Creator
                public ChaptersEntity createFromParcel(Parcel parcel) {
                    return new ChaptersEntity(parcel);
                }

                @Override // android.os.Parcelable.Creator
                public ChaptersEntity[] newArray(int i2) {
                    return new ChaptersEntity[i2];
                }
            }

            public ChaptersEntity() {
            }

            @Override // android.os.Parcelable
            public int describeContents() {
                return 0;
            }

            public int getId() {
                return this.id;
            }

            public int getIndex() {
                return this.index;
            }

            public String getName() {
                return this.name;
            }

            public boolean isPlayIs() {
                return this.playIs;
            }

            public void setId(int i2) {
                this.id = i2;
            }

            public void setIndex(int i2) {
                this.index = i2;
            }

            public void setName(String str) {
                this.name = str;
            }

            public void setPlayIs(boolean z) {
                this.playIs = z;
            }

            @Override // android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i2) {
                parcel.writeByte(this.playIs ? (byte) 1 : (byte) 0);
                parcel.writeString(this.name);
                parcel.writeInt(this.index);
                parcel.writeInt(this.id);
            }

            public ChaptersEntity(Parcel parcel) {
                this.playIs = parcel.readByte() != 0;
                this.name = parcel.readString();
                this.index = parcel.readInt();
                this.id = parcel.readInt();
            }
        }

        /* loaded from: classes.dex */
        public class TagsEntity {
            public int id;
            public String tagName;

            public TagsEntity() {
            }

            public int getId() {
                return this.id;
            }

            public String getTagName() {
                return this.tagName;
            }

            public void setId(int i2) {
                this.id = i2;
            }

            public void setTagName(String str) {
                this.tagName = str;
            }
        }

        public long getAddTime() {
            return this.addTime;
        }

        public int getChapterPrice() {
            return this.chapterPrice;
        }

        public List<ChaptersEntity> getChapters() {
            return this.chapters;
        }

        public int getCount() {
            return this.count;
        }

        public String getCoverH() {
            return this.coverH;
        }

        public String getCoverS() {
            return this.coverS;
        }

        public String getCreateTime() {
            return this.createTime;
        }

        public int getDiscount() {
            return this.discount;
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

        public double getPlaySum() {
            return this.playSum;
        }

        public int getRecommend() {
            return this.recommend;
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

        public List<TagsEntity> getTags() {
            return this.tags;
        }

        public String getUpdate() {
            return e.a("0fnXgv3D0bTA") + this.count + e.a("383+");
        }

        public String getUpdateBy() {
            return this.updateBy;
        }

        public String getUpdateTime() {
            return this.updateTime;
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

        public void setAddTime(long j2) {
            this.addTime = j2;
        }

        public void setChapterPrice(int i2) {
            this.chapterPrice = i2;
        }

        public void setChapters(List<ChaptersEntity> list) {
            this.chapters = list;
        }

        public void setCount(int i2) {
            this.count = i2;
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

        public void setDiscount(int i2) {
            this.discount = i2;
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

        public void setPlaySum(double d2) {
            this.playSum = d2;
        }

        public void setRecommend(int i2) {
            this.recommend = i2;
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

        public void setTags(List<TagsEntity> list) {
            this.tags = list;
        }

        public void setUpdateBy(String str) {
            this.updateBy = str;
        }

        public void setUpdateTime(String str) {
            this.updateTime = str;
        }

        public void setVip(int i2) {
            this.vip = i2;
        }
    }

    public DataEntity getData() {
        return this.data;
    }

    public void setData(DataEntity dataEntity) {
        this.data = dataEntity;
    }
}
