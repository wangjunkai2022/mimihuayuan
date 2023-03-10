package com.comeback.data.ui.hg.bean;

import android.text.TextUtils;
import f.b.a.a.a;
import f.e.a.e;
import f.e.a.f.k;
import f.i.b.b0.b;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class VideoList extends k {
    public int code;
    public List<DataBean> data;
    public String enumCode;
    public String msg;
    public boolean success;

    /* loaded from: classes.dex */
    public static class DataBean {
        public AddressBean address;
        public AllCoversBean allCovers;
        public AllJCoversBean allJCovers;
        public String cover;
        public String gmtCreate;
        public int id;
        public String jThumbnail;
        public String mins;
        public String movDesc;
        public String movName;
        public String movScore;
        public MovSizeBean movSize;
        public String movSn;
        public String movSnOri;
        public int playCnt;
        public String primevalCover;
        public List<RelTagNameBean> relTagName;
        public String score;
        public String selector;
        public String strPlayCnt;
        public String thumbnail;
        public Object userId;
        public int vipFlag;

        /* loaded from: classes.dex */
        public static class AddressBean {
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
        }

        /* loaded from: classes.dex */
        public static class AllCoversBean {
            public String horizontal_large;
            public String horizontal_small;
            public String vertical_large;
            public String vertical_small;

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
        }

        /* loaded from: classes.dex */
        public static class AllJCoversBean {
            public String horizontal_large;
            public String horizontal_small;
            public String vertical_large;
            public String vertical_small;

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
        }

        /* loaded from: classes.dex */
        public static class MovSizeBean {
            @b("360P")
            public String _$360P;

            public String get_$360P() {
                return this._$360P;
            }

            public void set_$360P(String str) {
                this._$360P = str;
            }
        }

        /* loaded from: classes.dex */
        public static class RelTagNameBean {
            public int id;
            public String name;

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

        public String getCover() {
            return f.e.a.k.b.O + this.cover;
        }

        public String getDetail() {
            StringBuilder sb = new StringBuilder();
            sb.append(getMovScore());
            sb.append(e.a("0urlRBdT"));
            sb.append(getStrPlayCnt());
            sb.append(e.a("Fx5D"));
            a.B(sb, this.gmtCreate, "Fx5D");
            sb.append(this.movSnOri);
            return sb.toString();
        }

        public int getId() {
            return this.id;
        }

        public String getJThumbnail() {
            return this.jThumbnail;
        }

        public String getMins() {
            return this.mins;
        }

        public String getMovDesc() {
            return this.movDesc;
        }

        public String getMovName() {
            return this.movName;
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

        public int getPlayCnt() {
            return this.playCnt;
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

        public String getPrimevalCover() {
            return this.primevalCover;
        }

        public List<RelTagNameBean> getRelTagName() {
            return this.relTagName;
        }

        public String getScore() {
            return this.score;
        }

        public String getSelector() {
            return this.selector;
        }

        public String getStrPlayCnt() {
            return this.strPlayCnt;
        }

        public String getThumbnail() {
            return this.thumbnail;
        }

        public Object getUserId() {
            return this.userId;
        }

        public int getVipFlag() {
            return this.vipFlag;
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

        public void setCover(String str) {
            this.cover = str;
        }

        public void setId(int i2) {
            this.id = i2;
        }

        public void setJThumbnail(String str) {
            this.jThumbnail = str;
        }

        public void setMins(String str) {
            this.mins = str;
        }

        public void setMovDesc(String str) {
            this.movDesc = str;
        }

        public void setMovName(String str) {
            this.movName = str;
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

        public void setPlayCnt(int i2) {
            this.playCnt = i2;
        }

        public void setPrimevalCover(String str) {
            this.primevalCover = str;
        }

        public void setRelTagName(List<RelTagNameBean> list) {
            this.relTagName = list;
        }

        public void setScore(String str) {
            this.score = str;
        }

        public void setSelector(String str) {
            this.selector = str;
        }

        public void setStrPlayCnt(String str) {
            this.strPlayCnt = str;
        }

        public void setThumbnail(String str) {
            this.thumbnail = str;
        }

        public void setUserId(Object obj) {
            this.userId = obj;
        }

        public void setVipFlag(int i2) {
            this.vipFlag = i2;
        }
    }

    public int getCode() {
        return this.code;
    }

    public List<DataBean> getData() {
        return this.data;
    }

    public String getEnumCode() {
        return this.enumCode;
    }

    public String getMsg() {
        return this.msg;
    }

    public boolean isSuccess() {
        return this.success;
    }

    public void setCode(int i2) {
        this.code = i2;
    }

    public void setData(List<DataBean> list) {
        this.data = list;
    }

    public void setEnumCode(String str) {
        this.enumCode = str;
    }

    public void setMsg(String str) {
        this.msg = str;
    }

    public void setSuccess(boolean z) {
        this.success = z;
    }
}
