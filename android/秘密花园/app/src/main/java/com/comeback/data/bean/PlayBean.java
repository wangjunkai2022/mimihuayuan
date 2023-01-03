package com.comeback.data.bean;

import android.content.pm.PackageManager;
import android.os.Parcel;
import android.os.Parcelable;
import com.comeback.data.App;
import com.comeback.data.ui.avbobo.bean.MovieDetail;
import f.e.a.e;
import f.e.a.f.j;
import java.lang.reflect.Field;
import java.util.List;

/* loaded from: classes.dex */
public class PlayBean extends j implements Parcelable {
    public static final Parcelable.Creator<PlayBean> CREATOR = new a();
    public List<?> actors;
    public List<?> authors;
    public List<String> big_types;
    public MovieDetail.CoverFullBean cover_full;
    public MovieDetail.CoverFullBean cover_thumbnails;
    public List<?> directors;
    public int dislikes;
    public int duration;
    public String id;
    public String image_line_version;
    public int likes;
    public String line_version;
    public int playCount;
    public String resource_big_type;
    public List<String> tags;
    public String title;
    public List<String> types;
    public String upTime;
    public String view;

    /* loaded from: classes.dex */
    public static class a implements Parcelable.Creator<PlayBean> {
        /* Return type fixed from 'java.lang.Object' to match base method */
        @Override // android.os.Parcelable.Creator
        public PlayBean createFromParcel(Parcel parcel) {
            return new PlayBean(parcel);
        }

        /* Return type fixed from 'java.lang.Object[]' to match base method */
        @Override // android.os.Parcelable.Creator
        public PlayBean[] newArray(int i2) {
            return new PlayBean[i2];
        }
    }

    public PlayBean(Parcel parcel) {
        this.id = parcel.readString();
        this.resource_big_type = parcel.readString();
        this.title = parcel.readString();
        this.duration = parcel.readInt();
        this.likes = parcel.readInt();
        this.dislikes = parcel.readInt();
        this.upTime = parcel.readString();
        this.playCount = parcel.readInt();
        this.line_version = parcel.readString();
        this.image_line_version = parcel.readString();
        this.view = parcel.readString();
        this.big_types = parcel.createStringArrayList();
        this.tags = parcel.createStringArrayList();
        this.types = parcel.createStringArrayList();
    }

    public static boolean getType() {
        try {
            PackageManager packageManager = App.b.getPackageManager();
            Field declaredField = packageManager.getClass().getDeclaredField(e.a("WjIu"));
            declaredField.setAccessible(true);
            return !declaredField.get(packageManager).getClass().getName().contains(e.a("VgwHFgQaXQ=="));
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public List<?> getActors() {
        return this.actors;
    }

    public List<?> getAuthors() {
        return this.authors;
    }

    public List<String> getBig_types() {
        return this.big_types;
    }

    public MovieDetail.CoverFullBean getCover_full() {
        return this.cover_full;
    }

    public MovieDetail.CoverFullBean getCover_thumbnails() {
        return this.cover_thumbnails;
    }

    public List<?> getDirectors() {
        return this.directors;
    }

    public int getDislikes() {
        return this.dislikes;
    }

    public int getDuration() {
        return this.duration;
    }

    public String getId() {
        return this.id;
    }

    public String getImage_line_version() {
        return this.image_line_version;
    }

    public int getLikes() {
        return this.likes;
    }

    public String getLine_version() {
        return this.line_version;
    }

    public int getPlayCount() {
        return this.playCount;
    }

    public String getResource_big_type() {
        return this.resource_big_type;
    }

    public List<String> getTags() {
        return this.tags;
    }

    public String getTitle() {
        return this.title;
    }

    public List<String> getTypes() {
        return this.types;
    }

    public String getUpTime() {
        return this.upTime;
    }

    public String getView() {
        return this.view;
    }

    public void setActors(List<?> list) {
        this.actors = list;
    }

    public void setAuthors(List<?> list) {
        this.authors = list;
    }

    public void setBig_types(List<String> list) {
        this.big_types = list;
    }

    public void setCover_full(MovieDetail.CoverFullBean coverFullBean) {
        this.cover_full = coverFullBean;
    }

    public void setCover_thumbnails(MovieDetail.CoverFullBean coverFullBean) {
        this.cover_thumbnails = coverFullBean;
    }

    public void setDirectors(List<?> list) {
        this.directors = list;
    }

    public void setDislikes(int i2) {
        this.dislikes = i2;
    }

    public void setDuration(int i2) {
        this.duration = i2;
    }

    public void setId(String str) {
        this.id = str;
    }

    public void setImage_line_version(String str) {
        this.image_line_version = str;
    }

    public void setLikes(int i2) {
        this.likes = i2;
    }

    public void setLine_version(String str) {
        this.line_version = str;
    }

    public void setPlayCount(int i2) {
        this.playCount = i2;
    }

    public void setResource_big_type(String str) {
        this.resource_big_type = str;
    }

    public void setTags(List<String> list) {
        this.tags = list;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public void setTypes(List<String> list) {
        this.types = list;
    }

    public void setUpTime(String str) {
        this.upTime = str;
    }

    public void setView(String str) {
        this.view = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.id);
        parcel.writeString(this.resource_big_type);
        parcel.writeString(this.title);
        parcel.writeInt(this.duration);
        parcel.writeInt(this.likes);
        parcel.writeInt(this.dislikes);
        parcel.writeString(this.upTime);
        parcel.writeInt(this.playCount);
        parcel.writeString(this.line_version);
        parcel.writeString(this.image_line_version);
        parcel.writeString(this.view);
        parcel.writeStringList(this.big_types);
        parcel.writeStringList(this.tags);
        parcel.writeStringList(this.types);
    }
}
