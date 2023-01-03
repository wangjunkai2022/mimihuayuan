package com.comeback.data.ui.jhlf.bean;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import c.a.a.b.g.h;
import f.e.a.e;
import f.e.a.f.j;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class MMList extends j {
    public List<DataEntity> data;

    /* loaded from: classes.dex */
    public static class DataEntity implements Parcelable {
        public static final Parcelable.Creator<DataEntity> CREATOR = new a();
        public String address;
        public String age;
        public String city;
        public long createdTime;
        public String descd;
        public String faceLevel;
        public int id;
        public long paTime;
        public String phone;
        public String photo;
        public String photoUrl;
        public String price;
        public String qq;
        public String serverList;
        public String source;
        public String title;
        public String wechat;

        /* loaded from: classes.dex */
        public static class a implements Parcelable.Creator<DataEntity> {
            /* Return type fixed from 'java.lang.Object' to match base method */
            @Override // android.os.Parcelable.Creator
            public DataEntity createFromParcel(Parcel parcel) {
                return new DataEntity(parcel);
            }

            /* Return type fixed from 'java.lang.Object[]' to match base method */
            @Override // android.os.Parcelable.Creator
            public DataEntity[] newArray(int i2) {
                return new DataEntity[i2];
            }
        }

        public DataEntity(Parcel parcel) {
            this.qq = parcel.readString();
            this.descd = parcel.readString();
            this.address = parcel.readString();
            this.paTime = parcel.readLong();
            this.city = parcel.readString();
            this.serverList = parcel.readString();
            this.wechat = parcel.readString();
            this.photo = parcel.readString();
            this.source = parcel.readString();
            this.title = parcel.readString();
            this.faceLevel = parcel.readString();
            this.photoUrl = parcel.readString();
            this.phone = parcel.readString();
            this.price = parcel.readString();
            this.createdTime = parcel.readLong();
            this.id = parcel.readInt();
            this.age = parcel.readString();
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public String getAddress() {
            if (TextUtils.isEmpty(this.address)) {
                return e.a("0fjhgvfZ36fFg4nynfbTjqri");
            }
            return this.address;
        }

        public String getAge() {
            return this.age;
        }

        public List<String> getAllCover() {
            ArrayList arrayList = new ArrayList();
            if (!TextUtils.isEmpty(this.photo) && !TextUtils.isEmpty(this.photoUrl)) {
                if (this.photo.contains(e.a("Gw=="))) {
                    String[] split = this.photo.split(e.a("Gw=="));
                    for (String str : split) {
                        arrayList.add(this.photoUrl + str);
                    }
                } else {
                    arrayList.add(this.photoUrl + this.photo);
                }
            }
            return arrayList;
        }

        public String getCity() {
            return this.city;
        }

        public String getCover() {
            if (TextUtils.isEmpty(this.photo) || TextUtils.isEmpty(this.photoUrl)) {
                return "";
            }
            if (this.photo.contains(e.a("Gw=="))) {
                String[] split = this.photo.split(e.a("Gw=="));
                return this.photoUrl + split[0];
            }
            return this.photoUrl + this.photo;
        }

        public long getCreatedTime() {
            return this.createdTime;
        }

        public String getDescd() {
            return this.descd;
        }

        public String getFaceLevel() {
            return this.faceLevel;
        }

        public int getId() {
            return this.id;
        }

        public long getPaTime() {
            return this.paTime;
        }

        public String getPhone() {
            return this.phone;
        }

        public String getPhoto() {
            return this.photo;
        }

        public String getPhotoUrl() {
            return this.photoUrl;
        }

        public String getPrice() {
            return this.price;
        }

        public String getPublished_at() {
            return h.O0(this.createdTime);
        }

        public String getQq() {
            return this.qq;
        }

        public String getServerList() {
            return this.serverList;
        }

        public String getSource() {
            return this.source;
        }

        public String getTitle() {
            return this.title;
        }

        public String getWechat() {
            return this.wechat;
        }

        public void setAddress(String str) {
            this.address = str;
        }

        public void setAge(String str) {
            this.age = str;
        }

        public void setCity(String str) {
            this.city = str;
        }

        public void setCreatedTime(long j2) {
            this.createdTime = j2;
        }

        public void setDescd(String str) {
            this.descd = str;
        }

        public void setFaceLevel(String str) {
            this.faceLevel = str;
        }

        public void setId(int i2) {
            this.id = i2;
        }

        public void setPaTime(long j2) {
            this.paTime = j2;
        }

        public void setPhone(String str) {
            this.phone = str;
        }

        public void setPhoto(String str) {
            this.photo = str;
        }

        public void setPhotoUrl(String str) {
            this.photoUrl = str;
        }

        public void setPrice(String str) {
            this.price = str;
        }

        public void setQq(String str) {
            this.qq = str;
        }

        public void setServerList(String str) {
            this.serverList = str;
        }

        public void setSource(String str) {
            this.source = str;
        }

        public void setTitle(String str) {
            this.title = str;
        }

        public void setWechat(String str) {
            this.wechat = str;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeString(this.qq);
            parcel.writeString(this.descd);
            parcel.writeString(this.address);
            parcel.writeLong(this.paTime);
            parcel.writeString(this.city);
            parcel.writeString(this.serverList);
            parcel.writeString(this.wechat);
            parcel.writeString(this.photo);
            parcel.writeString(this.source);
            parcel.writeString(this.title);
            parcel.writeString(this.faceLevel);
            parcel.writeString(this.photoUrl);
            parcel.writeString(this.phone);
            parcel.writeString(this.price);
            parcel.writeLong(this.createdTime);
            parcel.writeInt(this.id);
            parcel.writeString(this.age);
        }
    }

    public List<DataEntity> getData() {
        return this.data;
    }

    public void setData(List<DataEntity> list) {
        this.data = list;
    }
}
