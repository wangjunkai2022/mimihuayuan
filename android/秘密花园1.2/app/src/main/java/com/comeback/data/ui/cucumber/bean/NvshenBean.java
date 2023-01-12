package com.comeback.data.ui.cucumber.bean;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import f.e.a.e;
import f.e.a.f.k;
import f.i.b.b0.b;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class NvshenBean extends k {
    public int code;
    public int count;
    public List<Video> data;
    public String enumCode;
    public String msg;
    public int pageCount;
    public int pageNo;
    public int pageSize;
    public boolean success;

    public int getCode() {
        return this.code;
    }

    public int getCount() {
        return this.count;
    }

    public List<Video> getData() {
        return this.data;
    }

    public String getEnumCode() {
        return this.enumCode;
    }

    public String getMsg() {
        return this.msg;
    }

    public int getPageCount() {
        return this.pageCount;
    }

    public int getPageNo() {
        return this.pageNo;
    }

    public int getPageSize() {
        return this.pageSize;
    }

    public boolean isSuccess() {
        return this.success;
    }

    public void setCode(int i2) {
        this.code = i2;
    }

    public void setCount(int i2) {
        this.count = i2;
    }

    public void setData(List<Video> list) {
        this.data = list;
    }

    public void setEnumCode(String str) {
        this.enumCode = str;
    }

    public void setMsg(String str) {
        this.msg = str;
    }

    public void setPageCount(int i2) {
        this.pageCount = i2;
    }

    public void setPageNo(int i2) {
        this.pageNo = i2;
    }

    public void setPageSize(int i2) {
        this.pageSize = i2;
    }

    public void setSuccess(boolean z) {
        this.success = z;
    }

    /* loaded from: classes.dex */
    public static class Video extends k implements Parcelable {
        public static final Parcelable.Creator<com.comeback.data.ui.cucumber.bean.Video> CREATOR = new a();
        public String actor;
        public List<ActorListBean> actorList;
        public AddressBean address;
        public AllCoversBean allCovers;
        public AllJCoversBean allJCovers;
        public int attenStatus;
        public String browId;
        public String browToken;
        public int collectNumber;
        public int commentCnt;
        public String director;
        public String domain;
        public int downloadNumber;
        public String encryKey;
        public int favorCnt;
        public String gmtCreate;
        public boolean hasDown;
        public boolean hasFavor;
        public int id;
        public int isMosaic;
        public int loveCnt;
        public String mins;
        public int movCls;
        public String movDesc;
        public int movId;
        public String movName;
        public int movPackageId;
        public String movScore;
        public MovSizeBean movSize;
        public String movSn;
        public String movSnOri;
        public String myInviteCode;
        public String name;
        public AllCoversBean oriUrl;
        public String p2pSharpness;
        public String p2pToken;
        public int playCnt;
        public String playCntStr;
        public int playNumber;
        public String realVideo;
        public List<TagsBean> relTagName;
        public int remainPlayCnt;
        public String strPlayCnt;
        public List<TagsBean> tags;
        public int uploadUserFans;
        public String uploadUserIcon;
        public String uploadUserName;
        public String uploaderInviteCode;
        public long userId;
        public int vipFlag;
        public int ydaPlayCnt;

        /* loaded from: classes.dex */
        public static class ActorListBean implements Parcelable {
            public static final Parcelable.Creator<ActorListBean> CREATOR = new a();
            public int id;
            public String nameCn;
            public String nameEn;
            public String nameJpn;
            public String photoUrl;

            /* loaded from: classes.dex */
            public static class a implements Parcelable.Creator<ActorListBean> {
                @Override // android.os.Parcelable.Creator
                public ActorListBean createFromParcel(Parcel parcel) {
                    return new ActorListBean(parcel);
                }

                @Override // android.os.Parcelable.Creator
                public ActorListBean[] newArray(int i2) {
                    return new ActorListBean[i2];
                }
            }

            public ActorListBean(Parcel parcel) {
                this.id = parcel.readInt();
                this.nameCn = parcel.readString();
                this.nameEn = parcel.readString();
                this.nameJpn = parcel.readString();
                this.photoUrl = parcel.readString();
            }

            @Override // android.os.Parcelable
            public int describeContents() {
                return 0;
            }

            public int getId() {
                return this.id;
            }

            public String getNameCn() {
                return this.nameCn;
            }

            public String getNameEn() {
                return this.nameEn;
            }

            public String getNameJpn() {
                return this.nameJpn;
            }

            public String getPhotoUrl() {
                return this.photoUrl;
            }

            public void setId(int i2) {
                this.id = i2;
            }

            public void setNameCn(String str) {
                this.nameCn = str;
            }

            public void setNameEn(String str) {
                this.nameEn = str;
            }

            public void setNameJpn(String str) {
                this.nameJpn = str;
            }

            public void setPhotoUrl(String str) {
                this.photoUrl = str;
            }

            @Override // android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i2) {
                parcel.writeInt(this.id);
                parcel.writeString(this.nameCn);
                parcel.writeString(this.nameEn);
                parcel.writeString(this.nameJpn);
                parcel.writeString(this.photoUrl);
            }
        }

        /* loaded from: classes.dex */
        public static class AddressBean implements Parcelable {
            public static final Parcelable.Creator<AddressBean> CREATOR = new a();
            @b("1080P")
            public String _$1080P;
            @b("240P")
            public String _$240P;
            @b("360P")
            public String _$360P;
            @b("480P")
            public String _$480P;
            @b("720P")
            public String _$720P;

            /* loaded from: classes.dex */
            public static class a implements Parcelable.Creator<AddressBean> {
                @Override // android.os.Parcelable.Creator
                public AddressBean createFromParcel(Parcel parcel) {
                    return new AddressBean(parcel);
                }

                @Override // android.os.Parcelable.Creator
                public AddressBean[] newArray(int i2) {
                    return new AddressBean[i2];
                }
            }

            public AddressBean(Parcel parcel) {
                this._$1080P = parcel.readString();
                this._$720P = parcel.readString();
                this._$360P = parcel.readString();
                this._$240P = parcel.readString();
                this._$480P = parcel.readString();
            }

            @Override // android.os.Parcelable
            public int describeContents() {
                return 0;
            }

            public String get_$1080P() {
                return f.e.a.k.b.N + this._$1080P;
            }

            public String get_$240P() {
                return f.e.a.k.b.N + this._$240P;
            }

            public String get_$360P() {
                return f.e.a.k.b.N + this._$360P;
            }

            public String get_$480P() {
                return f.e.a.k.b.N + this._$480P;
            }

            public String get_$720P() {
                return f.e.a.k.b.N + this._$720P;
            }

            public void set_$1080P(String str) {
                this._$1080P = str;
            }

            public void set_$240P(String str) {
                this._$240P = str;
            }

            public void set_$360P(String str) {
                this._$360P = str;
            }

            public void set_$480P(String str) {
                this._$480P = str;
            }

            public void set_$720P(String str) {
                this._$720P = str;
            }

            @Override // android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i2) {
                parcel.writeString(this._$1080P);
                parcel.writeString(this._$720P);
                parcel.writeString(this._$360P);
                parcel.writeString(this._$240P);
                parcel.writeString(this._$480P);
            }
        }

        /* loaded from: classes.dex */
        public static class AllCoversBean implements Parcelable {
            public static final Parcelable.Creator<AllCoversBean> CREATOR = new a();
            public String horizontal_large;
            public String horizontal_small;
            public String vertical_large;
            public String vertical_small;

            /* loaded from: classes.dex */
            public static class a implements Parcelable.Creator<AllCoversBean> {
                @Override // android.os.Parcelable.Creator
                public AllCoversBean createFromParcel(Parcel parcel) {
                    return new AllCoversBean(parcel);
                }

                @Override // android.os.Parcelable.Creator
                public AllCoversBean[] newArray(int i2) {
                    return new AllCoversBean[i2];
                }
            }

            public AllCoversBean(Parcel parcel) {
                this.vertical_small = parcel.readString();
                this.horizontal_large = parcel.readString();
                this.horizontal_small = parcel.readString();
                this.vertical_large = parcel.readString();
            }

            @Override // android.os.Parcelable
            public int describeContents() {
                return 0;
            }

            public String getHorizontal_large() {
                return f.e.a.k.b.O + this.horizontal_large;
            }

            public String getHorizontal_small() {
                return f.e.a.k.b.O + this.horizontal_small;
            }

            public String getVertical_large() {
                return f.e.a.k.b.O + this.vertical_large;
            }

            public String getVertical_small() {
                return f.e.a.k.b.O + this.vertical_small;
            }

            public void setHorizontal_large(String str) {
                this.horizontal_large = str;
            }

            public void setHorizontal_small(String str) {
                this.horizontal_small = str;
            }

            public void setVertical_large(String str) {
                this.vertical_large = str;
            }

            public void setVertical_small(String str) {
                this.vertical_small = str;
            }

            @Override // android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i2) {
                parcel.writeString(this.vertical_small);
                parcel.writeString(this.horizontal_large);
                parcel.writeString(this.horizontal_small);
                parcel.writeString(this.vertical_large);
            }
        }

        /* loaded from: classes.dex */
        public static class AllJCoversBean implements Parcelable {
            public static final Parcelable.Creator<AllJCoversBean> CREATOR = new a();
            public String horizontal_large;
            public String horizontal_small;
            public String vertical_large;
            public String vertical_small;

            /* loaded from: classes.dex */
            public static class a implements Parcelable.Creator<AllJCoversBean> {
                @Override // android.os.Parcelable.Creator
                public AllJCoversBean createFromParcel(Parcel parcel) {
                    return new AllJCoversBean(parcel);
                }

                @Override // android.os.Parcelable.Creator
                public AllJCoversBean[] newArray(int i2) {
                    return new AllJCoversBean[i2];
                }
            }

            public AllJCoversBean(Parcel parcel) {
                this.horizontal_large = parcel.readString();
                this.vertical_small = parcel.readString();
                this.horizontal_small = parcel.readString();
                this.vertical_large = parcel.readString();
            }

            @Override // android.os.Parcelable
            public int describeContents() {
                return 0;
            }

            public String getHorizontal_large() {
                return this.horizontal_large;
            }

            public String getHorizontal_small() {
                return this.horizontal_small;
            }

            public String getVertical_large() {
                return this.vertical_large;
            }

            public String getVertical_small() {
                return this.vertical_small;
            }

            public void setHorizontal_large(String str) {
                this.horizontal_large = str;
            }

            public void setHorizontal_small(String str) {
                this.horizontal_small = str;
            }

            public void setVertical_large(String str) {
                this.vertical_large = str;
            }

            public void setVertical_small(String str) {
                this.vertical_small = str;
            }

            @Override // android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i2) {
                parcel.writeString(this.horizontal_large);
                parcel.writeString(this.vertical_small);
                parcel.writeString(this.horizontal_small);
                parcel.writeString(this.vertical_large);
            }
        }

        /* loaded from: classes.dex */
        public static class MovSizeBean {
            @b("360P")
            public String _$360P;
            @b("480P")
            public String _$480P;

            public String get_$360P() {
                return this._$360P;
            }

            public String get_$480P() {
                return this._$480P;
            }

            public void set_$360P(String str) {
                this._$360P = str;
            }

            public void set_$480P(String str) {
                this._$480P = str;
            }
        }

        /* loaded from: classes.dex */
        public static class TagsBean implements Parcelable {
            public static final Parcelable.Creator<TagsBean> CREATOR = new a();
            public int id;
            public String name;

            /* loaded from: classes.dex */
            public static class a implements Parcelable.Creator<TagsBean> {
                @Override // android.os.Parcelable.Creator
                public TagsBean createFromParcel(Parcel parcel) {
                    return new TagsBean(parcel);
                }

                @Override // android.os.Parcelable.Creator
                public TagsBean[] newArray(int i2) {
                    return new TagsBean[i2];
                }
            }

            public TagsBean(Parcel parcel) {
                this.name = parcel.readString();
                this.id = parcel.readInt();
            }

            @Override // android.os.Parcelable
            public int describeContents() {
                return 0;
            }

            public int getId() {
                return this.id;
            }

            public String getName() {
                return this.name;
            }

            public void setId(int i2) {
                this.id = i2;
            }

            public void setName(String str) {
                this.name = str;
            }

            @Override // android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i2) {
                parcel.writeString(this.name);
                parcel.writeInt(this.id);
            }
        }

        /* loaded from: classes.dex */
        public static class a implements Parcelable.Creator<com.comeback.data.ui.cucumber.bean.Video> {
            @Override // android.os.Parcelable.Creator
            public com.comeback.data.ui.cucumber.bean.Video createFromParcel(Parcel parcel) {
                return new com.comeback.data.ui.cucumber.bean.Video(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public com.comeback.data.ui.cucumber.bean.Video[] newArray(int i2) {
                return new com.comeback.data.ui.cucumber.bean.Video[i2];
            }
        }

        public Video(Parcel parcel) {
            this.actor = parcel.readString();
            this.address = (AddressBean) parcel.readParcelable(AddressBean.class.getClassLoader());
            this.oriUrl = (AllCoversBean) parcel.readParcelable(AllCoversBean.class.getClassLoader());
            this.allCovers = (AllCoversBean) parcel.readParcelable(AllCoversBean.class.getClassLoader());
            this.allJCovers = (AllJCoversBean) parcel.readParcelable(AllJCoversBean.class.getClassLoader());
            this.attenStatus = parcel.readInt();
            this.browId = parcel.readString();
            this.browToken = parcel.readString();
            this.director = parcel.readString();
            this.domain = parcel.readString();
            this.encryKey = parcel.readString();
            this.gmtCreate = parcel.readString();
            this.hasDown = parcel.readByte() != 0;
            this.hasFavor = parcel.readByte() != 0;
            this.id = parcel.readInt();
            this.movId = parcel.readInt();
            this.isMosaic = parcel.readInt();
            this.loveCnt = parcel.readInt();
            this.mins = parcel.readString();
            this.movCls = parcel.readInt();
            this.movDesc = parcel.readString();
            this.movName = parcel.readString();
            this.name = parcel.readString();
            this.movScore = parcel.readString();
            this.movSn = parcel.readString();
            this.movSnOri = parcel.readString();
            this.p2pSharpness = parcel.readString();
            this.p2pToken = parcel.readString();
            this.playCnt = parcel.readInt();
            this.remainPlayCnt = parcel.readInt();
            this.strPlayCnt = parcel.readString();
            this.playCntStr = parcel.readString();
            this.uploadUserFans = parcel.readInt();
            this.uploadUserIcon = parcel.readString();
            this.uploadUserName = parcel.readString();
            this.uploaderInviteCode = parcel.readString();
            this.userId = parcel.readLong();
            this.vipFlag = parcel.readInt();
            this.ydaPlayCnt = parcel.readInt();
            this.playNumber = parcel.readInt();
            this.downloadNumber = parcel.readInt();
            this.collectNumber = parcel.readInt();
            this.movPackageId = parcel.readInt();
            this.favorCnt = parcel.readInt();
            this.commentCnt = parcel.readInt();
            this.realVideo = parcel.readString();
            this.actorList = parcel.createTypedArrayList(ActorListBean.CREATOR);
            this.tags = parcel.createTypedArrayList(TagsBean.CREATOR);
            this.relTagName = parcel.createTypedArrayList(TagsBean.CREATOR);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public String getActor() {
            return this.actor;
        }

        public List<ActorListBean> getActorList() {
            return this.actorList;
        }

        public AddressBean getAddress() {
            return this.address;
        }

        public AllCoversBean getAllCovers() {
            return this.allCovers;
        }

        public AllJCoversBean getAllJCovers() {
            return this.allJCovers;
        }

        public int getAttenStatus() {
            return this.attenStatus;
        }

        public String getBrowId() {
            return this.browId;
        }

        public String getBrowToken() {
            return this.browToken;
        }

        public int getCollectNumber() {
            return this.collectNumber;
        }

        public int getCommentCnt() {
            return this.commentCnt;
        }

        public String getDetail() {
            StringBuilder sb = new StringBuilder();
            sb.append(getMovScore());
            sb.append(e.a("0urlRBdT"));
            sb.append(getStrPlayCnt());
            sb.append(e.a("Fx5D"));
            f.b.a.a.a.B(sb, this.gmtCreate, "Fx5D");
            sb.append(this.movSnOri);
            return sb.toString();
        }

        public String getDirector() {
            return this.director;
        }

        public String getDomain() {
            return this.domain;
        }

        public int getDownloadNumber() {
            return this.downloadNumber;
        }

        public String getEncryKey() {
            return this.encryKey;
        }

        public int getFavorCnt() {
            return this.favorCnt;
        }

        public String getGmtCreate() {
            return this.gmtCreate;
        }

        public int getId() {
            int i2 = this.movId;
            return i2 == 0 ? this.id : i2;
        }

        public String getInviteCode() {
            if (!TextUtils.isEmpty(this.myInviteCode)) {
                return this.myInviteCode;
            }
            return this.uploaderInviteCode;
        }

        public int getIsMosaic() {
            return this.isMosaic;
        }

        public int getLoveCnt() {
            return this.loveCnt;
        }

        public String getMins() {
            return this.mins;
        }

        public int getMovCls() {
            return this.movCls;
        }

        public String getMovDesc() {
            return this.movDesc;
        }

        public int getMovId() {
            return this.movId;
        }

        public String getMovName() {
            if (TextUtils.isEmpty(this.name)) {
                return this.movName;
            }
            return this.name;
        }

        public int getMovPackageId() {
            return this.movPackageId;
        }

        public String getMovScore() {
            return this.movScore;
        }

        public MovSizeBean getMovSize() {
            return this.movSize;
        }

        public String getMovSn() {
            return this.movSn;
        }

        public String getMovSnOri() {
            return this.movSnOri;
        }

        public String getMyInviteCode() {
            return this.myInviteCode;
        }

        public String getName() {
            return this.name;
        }

        public AllCoversBean getOriUrl() {
            return this.oriUrl;
        }

        public String getP2pSharpness() {
            return this.p2pSharpness;
        }

        public String getP2pToken() {
            return this.p2pToken;
        }

        public int getPlayCnt() {
            return this.playCnt;
        }

        public String getPlayCntStr() {
            return this.playCntStr;
        }

        public List<String> getPlayName() {
            ArrayList arrayList = new ArrayList();
            AddressBean address = getAddress();
            if (!TextUtils.isEmpty(address._$1080P)) {
                arrayList.add(e.a("BlJbVDs="));
            }
            if (!TextUtils.isEmpty(address._$720P)) {
                arrayList.add(e.a("AFBTNA=="));
            }
            if (!TextUtils.isEmpty(address._$480P)) {
                arrayList.add(e.a("A1pTNA=="));
            }
            if (!TextUtils.isEmpty(address._$360P)) {
                arrayList.add(e.a("BFRTNA=="));
            }
            if (!TextUtils.isEmpty(address._$240P)) {
                arrayList.add(e.a("BVZTNA=="));
            }
            return arrayList;
        }

        public int getPlayNumber() {
            return this.playNumber;
        }

        public List<String> getPlayUrl() {
            ArrayList arrayList = new ArrayList();
            AddressBean address = getAddress();
            if (!TextUtils.isEmpty(address._$1080P)) {
                arrayList.add(address.get_$1080P());
            }
            if (!TextUtils.isEmpty(address._$720P)) {
                arrayList.add(address.get_$720P());
            }
            if (!TextUtils.isEmpty(address._$480P)) {
                arrayList.add(address.get_$480P());
            }
            if (!TextUtils.isEmpty(address._$360P)) {
                arrayList.add(address.get_$360P());
            }
            if (!TextUtils.isEmpty(address._$240P)) {
                arrayList.add(address.get_$240P());
            }
            return arrayList;
        }

        public String getRealVideo() {
            return this.realVideo;
        }

        public List<TagsBean> getRelTagName() {
            return this.relTagName;
        }

        public int getRemainPlayCnt() {
            return this.remainPlayCnt;
        }

        public String getStrPlayCnt() {
            if (TextUtils.isEmpty(this.playCntStr)) {
                return this.strPlayCnt;
            }
            return this.playCntStr;
        }

        public List<TagsBean> getTags() {
            return this.tags;
        }

        public int getUploadUserFans() {
            return this.uploadUserFans;
        }

        public String getUploadUserIcon() {
            return this.uploadUserIcon;
        }

        public String getUploadUserName() {
            return this.uploadUserName;
        }

        public String getUploaderInviteCode() {
            return this.uploaderInviteCode;
        }

        public long getUserId() {
            return this.userId;
        }

        public int getVipFlag() {
            return this.vipFlag;
        }

        public int getYdaPlayCnt() {
            return this.ydaPlayCnt;
        }

        public boolean isHasDown() {
            return this.hasDown;
        }

        public boolean isHasFavor() {
            return this.hasFavor;
        }

        public RealmVideo newRealm() {
            RealmVideo realmVideo = new RealmVideo();
            realmVideo.setId(String.valueOf(getId()));
            realmVideo.setName(getMovName());
            realmVideo.setMins(getMins());
            realmVideo.setStrPlayCnt(getStrPlayCnt());
            return realmVideo;
        }

        public void setActor(String str) {
            this.actor = str;
        }

        public void setActorList(List<ActorListBean> list) {
            this.actorList = list;
        }

        public void setAddress(AddressBean addressBean) {
            this.address = addressBean;
        }

        public void setAllCovers(AllCoversBean allCoversBean) {
            this.allCovers = allCoversBean;
        }

        public void setAllJCovers(AllJCoversBean allJCoversBean) {
            this.allJCovers = allJCoversBean;
        }

        public void setAttenStatus(int i2) {
            this.attenStatus = i2;
        }

        public void setBrowId(String str) {
            this.browId = str;
        }

        public void setBrowToken(String str) {
            this.browToken = str;
        }

        public void setCollectNumber(int i2) {
            this.collectNumber = i2;
        }

        public void setCommentCnt(int i2) {
            this.commentCnt = i2;
        }

        public void setDirector(String str) {
            this.director = str;
        }

        public void setDomain(String str) {
            this.domain = str;
        }

        public void setDownloadNumber(int i2) {
            this.downloadNumber = i2;
        }

        public void setEncryKey(String str) {
            this.encryKey = str;
        }

        public void setFavorCnt(int i2) {
            this.favorCnt = i2;
        }

        public void setGmtCreate(String str) {
            this.gmtCreate = str;
        }

        public void setHasDown(boolean z) {
            this.hasDown = z;
        }

        public void setHasFavor(boolean z) {
            this.hasFavor = z;
        }

        public void setId(int i2) {
            this.id = i2;
        }

        public void setIsMosaic(int i2) {
            this.isMosaic = i2;
        }

        public void setLoveCnt(int i2) {
            this.loveCnt = i2;
        }

        public void setMins(String str) {
            this.mins = str;
        }

        public void setMovCls(int i2) {
            this.movCls = i2;
        }

        public void setMovDesc(String str) {
            this.movDesc = str;
        }

        public void setMovId(int i2) {
            this.movId = i2;
        }

        public void setMovName(String str) {
            this.movName = str;
        }

        public void setMovPackageId(int i2) {
            this.movPackageId = i2;
        }

        public void setMovScore(String str) {
            this.movScore = str;
        }

        public void setMovSize(MovSizeBean movSizeBean) {
            this.movSize = movSizeBean;
        }

        public void setMovSn(String str) {
            this.movSn = str;
        }

        public void setMovSnOri(String str) {
            this.movSnOri = str;
        }

        public void setMyInviteCode(String str) {
            this.myInviteCode = str;
        }

        public void setName(String str) {
            this.name = str;
        }

        public void setOriUrl(AllCoversBean allCoversBean) {
            this.oriUrl = allCoversBean;
        }

        public void setP2pSharpness(String str) {
            this.p2pSharpness = str;
        }

        public void setP2pToken(String str) {
            this.p2pToken = str;
        }

        public void setPlayCnt(int i2) {
            this.playCnt = i2;
        }

        public void setPlayCntStr(String str) {
            this.playCntStr = str;
        }

        public void setPlayNumber(int i2) {
            this.playNumber = i2;
        }

        public void setRealVideo(String str) {
            this.realVideo = str;
        }

        public void setRelTagName(List<TagsBean> list) {
            this.relTagName = list;
        }

        public void setRemainPlayCnt(int i2) {
            this.remainPlayCnt = i2;
        }

        public void setStrPlayCnt(String str) {
            this.strPlayCnt = str;
        }

        public void setTags(List<TagsBean> list) {
            this.tags = list;
        }

        public void setUploadUserFans(int i2) {
            this.uploadUserFans = i2;
        }

        public void setUploadUserIcon(String str) {
            this.uploadUserIcon = str;
        }

        public void setUploadUserName(String str) {
            this.uploadUserName = str;
        }

        public void setUploaderInviteCode(String str) {
            this.uploaderInviteCode = str;
        }

        public void setUserId(long j2) {
            this.userId = j2;
        }

        public void setVipFlag(int i2) {
            this.vipFlag = i2;
        }

        public void setYdaPlayCnt(int i2) {
            this.ydaPlayCnt = i2;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeString(this.actor);
            parcel.writeParcelable(this.address, i2);
            parcel.writeParcelable(this.oriUrl, i2);
            parcel.writeParcelable(this.allCovers, i2);
            parcel.writeParcelable(this.allJCovers, i2);
            parcel.writeInt(this.attenStatus);
            parcel.writeString(this.browId);
            parcel.writeString(this.browToken);
            parcel.writeString(this.director);
            parcel.writeString(this.domain);
            parcel.writeString(this.encryKey);
            parcel.writeString(this.gmtCreate);
            parcel.writeByte(this.hasDown ? (byte) 1 : (byte) 0);
            parcel.writeByte(this.hasFavor ? (byte) 1 : (byte) 0);
            parcel.writeInt(this.id);
            parcel.writeInt(this.movId);
            parcel.writeInt(this.isMosaic);
            parcel.writeInt(this.loveCnt);
            parcel.writeString(this.mins);
            parcel.writeInt(this.movCls);
            parcel.writeString(this.movDesc);
            parcel.writeString(this.movName);
            parcel.writeString(this.name);
            parcel.writeString(this.movScore);
            parcel.writeString(this.movSn);
            parcel.writeString(this.movSnOri);
            parcel.writeString(this.p2pSharpness);
            parcel.writeString(this.p2pToken);
            parcel.writeInt(this.playCnt);
            parcel.writeInt(this.remainPlayCnt);
            parcel.writeString(this.strPlayCnt);
            parcel.writeString(this.playCntStr);
            parcel.writeInt(this.uploadUserFans);
            parcel.writeString(this.uploadUserIcon);
            parcel.writeString(this.uploadUserName);
            parcel.writeString(this.uploaderInviteCode);
            parcel.writeLong(this.userId);
            parcel.writeInt(this.vipFlag);
            parcel.writeInt(this.ydaPlayCnt);
            parcel.writeInt(this.playNumber);
            parcel.writeInt(this.downloadNumber);
            parcel.writeInt(this.collectNumber);
            parcel.writeInt(this.movPackageId);
            parcel.writeInt(this.favorCnt);
            parcel.writeInt(this.commentCnt);
            parcel.writeString(this.realVideo);
            parcel.writeTypedList(this.actorList);
            parcel.writeTypedList(this.tags);
            parcel.writeTypedList(this.relTagName);
        }

        public Video() {
        }
    }
}
