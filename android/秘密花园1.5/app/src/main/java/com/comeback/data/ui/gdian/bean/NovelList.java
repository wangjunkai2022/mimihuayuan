package com.comeback.data.ui.gdian.bean;

import android.os.Parcel;
import android.os.Parcelable;
import f.e.a.e;
import f.e.a.f.k;
import java.util.List;

/* loaded from: classes.dex */
public class NovelList extends k {
    public String code;
    public DataEntity data;
    public int is_login;
    public String msg;

    /* loaded from: classes.dex */
    public class DataEntity {
        public List<NovelEntity> data;
        public int total;

        public DataEntity() {
        }

        public List<NovelEntity> getData() {
            return this.data;
        }

        public int getTotal() {
            return this.total;
        }

        public void setData(List<NovelEntity> list) {
            this.data = list;
        }

        public void setTotal(int i2) {
            this.total = i2;
        }
    }

    /* loaded from: classes.dex */
    public static class NovelEntity implements Parcelable {
        public static final Parcelable.Creator<NovelEntity> CREATOR = new a();
        public int collect_count_cycle;
        public String fiction_author;
        public String fiction_cover;
        public int fiction_id;
        public int fiction_long;
        public String fiction_name;
        public int fiction_score;
        public int have_movie;
        public int have_voice;
        public String introduction;
        public int is_end;
        public List<String> labels;
        public int push_time;
        public int watch_count;
        public int watch_count_cycle;

        /* loaded from: classes.dex */
        public static class a implements Parcelable.Creator<NovelEntity> {
            @Override // android.os.Parcelable.Creator
            public NovelEntity createFromParcel(Parcel parcel) {
                return new NovelEntity(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public NovelEntity[] newArray(int i2) {
                return new NovelEntity[i2];
            }
        }

        public NovelEntity(Parcel parcel) {
            this.fiction_cover = parcel.readString();
            this.collect_count_cycle = parcel.readInt();
            this.fiction_name = parcel.readString();
            this.have_voice = parcel.readInt();
            this.is_end = parcel.readInt();
            this.fiction_long = parcel.readInt();
            this.have_movie = parcel.readInt();
            this.fiction_score = parcel.readInt();
            this.labels = parcel.createStringArrayList();
            this.fiction_author = parcel.readString();
            this.watch_count_cycle = parcel.readInt();
            this.watch_count = parcel.readInt();
            this.push_time = parcel.readInt();
            this.fiction_id = parcel.readInt();
            this.introduction = parcel.readString();
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public int getCollect_count_cycle() {
            return this.collect_count_cycle;
        }

        public String getFiction_author() {
            return this.fiction_author;
        }

        public String getFiction_cover() {
            return this.fiction_cover;
        }

        public int getFiction_id() {
            return this.fiction_id;
        }

        public int getFiction_long() {
            return this.fiction_long;
        }

        public String getFiction_name() {
            return this.fiction_name;
        }

        public int getFiction_score() {
            return this.fiction_score;
        }

        public int getHave_movie() {
            return this.have_movie;
        }

        public int getHave_voice() {
            return this.have_voice;
        }

        public String getIntroduction() {
            return this.introduction;
        }

        public int getIs_end() {
            return this.is_end;
        }

        public String getLabelText() {
            StringBuilder sb = new StringBuilder();
            List<String> list = this.labels;
            if (list != null && list.size() != 0) {
                f.b.a.a.a.B(sb, this.labels.get(0), "Sw==");
            }
            sb.append(e.a(this.is_end == 1 ? "0szvg9Dg" : "3939jNbO"));
            return sb.toString();
        }

        public List<String> getLabels() {
            return this.labels;
        }

        public int getPush_time() {
            return this.push_time;
        }

        public int getWatch_count() {
            return this.watch_count;
        }

        public int getWatch_count_cycle() {
            return this.watch_count_cycle;
        }

        public void setCollect_count_cycle(int i2) {
            this.collect_count_cycle = i2;
        }

        public void setFiction_author(String str) {
            this.fiction_author = str;
        }

        public void setFiction_cover(String str) {
            this.fiction_cover = str;
        }

        public void setFiction_id(int i2) {
            this.fiction_id = i2;
        }

        public void setFiction_long(int i2) {
            this.fiction_long = i2;
        }

        public void setFiction_name(String str) {
            this.fiction_name = str;
        }

        public void setFiction_score(int i2) {
            this.fiction_score = i2;
        }

        public void setHave_movie(int i2) {
            this.have_movie = i2;
        }

        public void setHave_voice(int i2) {
            this.have_voice = i2;
        }

        public void setIntroduction(String str) {
            this.introduction = str;
        }

        public void setIs_end(int i2) {
            this.is_end = i2;
        }

        public void setLabels(List<String> list) {
            this.labels = list;
        }

        public void setPush_time(int i2) {
            this.push_time = i2;
        }

        public void setWatch_count(int i2) {
            this.watch_count = i2;
        }

        public void setWatch_count_cycle(int i2) {
            this.watch_count_cycle = i2;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeString(this.fiction_cover);
            parcel.writeInt(this.collect_count_cycle);
            parcel.writeString(this.fiction_name);
            parcel.writeInt(this.have_voice);
            parcel.writeInt(this.is_end);
            parcel.writeInt(this.fiction_long);
            parcel.writeInt(this.have_movie);
            parcel.writeInt(this.fiction_score);
            parcel.writeStringList(this.labels);
            parcel.writeString(this.fiction_author);
            parcel.writeInt(this.watch_count_cycle);
            parcel.writeInt(this.watch_count);
            parcel.writeInt(this.push_time);
            parcel.writeInt(this.fiction_id);
            parcel.writeString(this.introduction);
        }
    }

    public String getCode() {
        return this.code;
    }

    public DataEntity getData() {
        return this.data;
    }

    public int getIs_login() {
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

    public void setIs_login(int i2) {
        this.is_login = i2;
    }

    public void setMsg(String str) {
        this.msg = str;
    }
}
