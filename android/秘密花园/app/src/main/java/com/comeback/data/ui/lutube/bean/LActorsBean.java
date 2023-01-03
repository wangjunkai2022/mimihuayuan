package com.comeback.data.ui.lutube.bean;

import android.os.Parcel;
import android.os.Parcelable;
import f.e.a.k.b;
import g.a.f1.n;
import g.a.g0;
import g.a.z0;

/* loaded from: classes.dex */
public class LActorsBean extends g0 implements Parcelable, z0 {
    public static final Parcelable.Creator<LActorsBean> CREATOR = new a();
    public String actor_id;
    public boolean actor_like;
    public String actor_name;
    public String actor_url;

    /* loaded from: classes.dex */
    public static class a implements Parcelable.Creator<LActorsBean> {
        /* Return type fixed from 'java.lang.Object' to match base method */
        @Override // android.os.Parcelable.Creator
        public LActorsBean createFromParcel(Parcel parcel) {
            return new LActorsBean(parcel);
        }

        /* Return type fixed from 'java.lang.Object[]' to match base method */
        @Override // android.os.Parcelable.Creator
        public LActorsBean[] newArray(int i2) {
            return new LActorsBean[i2];
        }
    }

    public LActorsBean() {
        if (this instanceof n) {
            ((n) this).realm$injectObjectContext();
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getActor_id() {
        return realmGet$actor_id();
    }

    public String getActor_name() {
        return realmGet$actor_name();
    }

    public String getActor_url() {
        return b.r + realmGet$actor_url();
    }

    public boolean isActor_like() {
        return realmGet$actor_like();
    }

    @Override // g.a.z0
    public String realmGet$actor_id() {
        return this.actor_id;
    }

    @Override // g.a.z0
    public boolean realmGet$actor_like() {
        return this.actor_like;
    }

    @Override // g.a.z0
    public String realmGet$actor_name() {
        return this.actor_name;
    }

    @Override // g.a.z0
    public String realmGet$actor_url() {
        return this.actor_url;
    }

    @Override // g.a.z0
    public void realmSet$actor_id(String str) {
        this.actor_id = str;
    }

    @Override // g.a.z0
    public void realmSet$actor_like(boolean z) {
        this.actor_like = z;
    }

    @Override // g.a.z0
    public void realmSet$actor_name(String str) {
        this.actor_name = str;
    }

    @Override // g.a.z0
    public void realmSet$actor_url(String str) {
        this.actor_url = str;
    }

    public void setActor_id(String str) {
        realmSet$actor_id(str);
    }

    public void setActor_like(boolean z) {
        realmSet$actor_like(z);
    }

    public void setActor_name(String str) {
        realmSet$actor_name(str);
    }

    public void setActor_url(String str) {
        realmSet$actor_url(str);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(realmGet$actor_id());
        parcel.writeString(realmGet$actor_name());
        parcel.writeString(realmGet$actor_url());
        parcel.writeByte(realmGet$actor_like() ? (byte) 1 : 0);
    }

    public LActorsBean(Parcel parcel) {
        if (this instanceof n) {
            ((n) this).realm$injectObjectContext();
        }
        realmSet$actor_id(parcel.readString());
        realmSet$actor_name(parcel.readString());
        realmSet$actor_url(parcel.readString());
        realmSet$actor_like(parcel.readByte() != 0);
    }
}
