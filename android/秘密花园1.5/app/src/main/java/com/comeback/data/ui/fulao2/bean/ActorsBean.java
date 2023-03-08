package com.comeback.data.ui.fulao2.bean;

import android.os.Parcel;
import android.os.Parcelable;
import f.e.a.e;
import f.e.a.k.b;
import g.a.f1.n;
import g.a.g0;
import g.a.s0;

/* loaded from: classes.dex */
public class ActorsBean extends g0 implements Parcelable, s0 {
    public static final Parcelable.Creator<ActorsBean> CREATOR = new a();
    public int actor_collects;
    public String actor_id;
    public boolean actor_like;
    public String actor_name;
    public String actor_url;
    public boolean actor_vip;
    public String video_title;

    /* loaded from: classes.dex */
    public static class a implements Parcelable.Creator<ActorsBean> {
        @Override // android.os.Parcelable.Creator
        public ActorsBean createFromParcel(Parcel parcel) {
            return new ActorsBean(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public ActorsBean[] newArray(int i2) {
            return new ActorsBean[i2];
        }
    }

    public ActorsBean() {
        if (this instanceof n) {
            ((n) this).realm$injectObjectContext();
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getActor_collects() {
        return realmGet$actor_collects();
    }

    public String getActor_id() {
        return realmGet$actor_id();
    }

    public String getActor_name() {
        return realmGet$actor_name();
    }

    public String getActor_url() {
        if (realmGet$actor_url().contains(e.a("XxYXFA=="))) {
            return realmGet$actor_url();
        }
        return b.z + realmGet$actor_url();
    }

    public String getVideo_title() {
        return realmGet$video_title();
    }

    public boolean isActor_like() {
        return realmGet$actor_like();
    }

    public boolean isActor_vip() {
        return realmGet$actor_vip();
    }

    @Override // g.a.s0
    public int realmGet$actor_collects() {
        return this.actor_collects;
    }

    @Override // g.a.s0
    public String realmGet$actor_id() {
        return this.actor_id;
    }

    @Override // g.a.s0
    public boolean realmGet$actor_like() {
        return this.actor_like;
    }

    @Override // g.a.s0
    public String realmGet$actor_name() {
        return this.actor_name;
    }

    @Override // g.a.s0
    public String realmGet$actor_url() {
        return this.actor_url;
    }

    @Override // g.a.s0
    public boolean realmGet$actor_vip() {
        return this.actor_vip;
    }

    @Override // g.a.s0
    public String realmGet$video_title() {
        return this.video_title;
    }

    @Override // g.a.s0
    public void realmSet$actor_collects(int i2) {
        this.actor_collects = i2;
    }

    @Override // g.a.s0
    public void realmSet$actor_id(String str) {
        this.actor_id = str;
    }

    @Override // g.a.s0
    public void realmSet$actor_like(boolean z) {
        this.actor_like = z;
    }

    @Override // g.a.s0
    public void realmSet$actor_name(String str) {
        this.actor_name = str;
    }

    @Override // g.a.s0
    public void realmSet$actor_url(String str) {
        this.actor_url = str;
    }

    @Override // g.a.s0
    public void realmSet$actor_vip(boolean z) {
        this.actor_vip = z;
    }

    @Override // g.a.s0
    public void realmSet$video_title(String str) {
        this.video_title = str;
    }

    public void setActor_collects(int i2) {
        realmSet$actor_collects(i2);
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

    public void setActor_vip(boolean z) {
        realmSet$actor_vip(z);
    }

    public void setVideo_title(String str) {
        realmSet$video_title(str);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(realmGet$actor_id());
        parcel.writeString(realmGet$actor_name());
        parcel.writeString(realmGet$actor_url());
        parcel.writeByte(realmGet$actor_like() ? (byte) 1 : (byte) 0);
        parcel.writeInt(realmGet$actor_collects());
        parcel.writeByte(realmGet$actor_vip() ? (byte) 1 : (byte) 0);
        parcel.writeString(realmGet$video_title());
    }

    public ActorsBean(Parcel parcel) {
        if (this instanceof n) {
            ((n) this).realm$injectObjectContext();
        }
        realmSet$actor_id(parcel.readString());
        realmSet$actor_name(parcel.readString());
        realmSet$actor_url(parcel.readString());
        realmSet$actor_like(parcel.readByte() != 0);
        realmSet$actor_collects(parcel.readInt());
        realmSet$actor_vip(parcel.readByte() != 0);
        realmSet$video_title(parcel.readString());
    }
}
