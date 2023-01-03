package com.comeback.data.ui.main.bean;

import android.os.Parcel;
import android.os.Parcelable;
import f.e.a.f.j;

/* loaded from: classes.dex */
public class AD extends j implements Parcelable, f.e.a.g.a {
    public static final Parcelable.Creator<AD> CREATOR = new a();
    public String image;
    public String name;
    public String targetUrl;

    /* loaded from: classes.dex */
    public static class a implements Parcelable.Creator<AD> {
        /* Return type fixed from 'java.lang.Object' to match base method */
        @Override // android.os.Parcelable.Creator
        public AD createFromParcel(Parcel parcel) {
            return new AD(parcel, null);
        }

        /* Return type fixed from 'java.lang.Object[]' to match base method */
        @Override // android.os.Parcelable.Creator
        public AD[] newArray(int i2) {
            return new AD[i2];
        }
    }

    public /* synthetic */ AD(Parcel parcel, a aVar) {
        this(parcel);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // f.e.a.g.a
    public String getCover() {
        return this.image;
    }

    @Override // f.e.a.g.a
    public String getId() {
        return this.targetUrl;
    }

    public String getImage() {
        return this.image;
    }

    public String getName() {
        return this.name;
    }

    public String getTargetUrl() {
        return this.targetUrl;
    }

    @Override // f.e.a.g.a
    public String getTitle() {
        return this.name;
    }

    public void setImage(String str) {
        this.image = str;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setTargetUrl(String str) {
        this.targetUrl = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.targetUrl);
        parcel.writeString(this.image);
        parcel.writeString(this.name);
    }

    public AD() {
    }

    public AD(Parcel parcel) {
        this.targetUrl = parcel.readString();
        this.image = parcel.readString();
        this.name = parcel.readString();
    }
}
