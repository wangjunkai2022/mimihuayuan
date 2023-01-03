package com.comeback.data.ui.gdian.bean;

import android.text.TextUtils;
import f.e.a.f.j;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class LiveList extends j {
    public String code;
    public List<DataEntity> data;
    public int is_login;
    public String msg;

    /* loaded from: classes.dex */
    public class DataEntity {
        public int error_count;
        public int live_type;
        public String relay_age;
        public String relay_hls;
        public String relay_id;
        public String relay_name;
        public String relay_picture;
        public int relay_state;

        public DataEntity() {
        }

        public int getError_count() {
            return this.error_count;
        }

        public int getLive_type() {
            return this.live_type;
        }

        public String getRelay_age() {
            return this.relay_age;
        }

        public String getRelay_hls() {
            return this.relay_hls;
        }

        public String getRelay_id() {
            return this.relay_id;
        }

        public String getRelay_name() {
            return this.relay_name;
        }

        public String getRelay_picture() {
            return this.relay_picture;
        }

        public int getRelay_state() {
            return this.relay_state;
        }

        public void setError_count(int i2) {
            this.error_count = i2;
        }

        public void setLive_type(int i2) {
            this.live_type = i2;
        }

        public void setRelay_age(String str) {
            this.relay_age = str;
        }

        public void setRelay_hls(String str) {
            this.relay_hls = str;
        }

        public void setRelay_id(String str) {
            this.relay_id = str;
        }

        public void setRelay_name(String str) {
            this.relay_name = str;
        }

        public void setRelay_picture(String str) {
            this.relay_picture = str;
        }

        public void setRelay_state(int i2) {
            this.relay_state = i2;
        }
    }

    public String getCode() {
        return this.code;
    }

    public List<DataEntity> getData() {
        Iterator<DataEntity> it = this.data.iterator();
        while (it.hasNext()) {
            if (TextUtils.isEmpty(it.next().relay_hls)) {
                it.remove();
            }
        }
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

    public void setData(List<DataEntity> list) {
        this.data = list;
    }

    public void setIs_login(int i2) {
        this.is_login = i2;
    }

    public void setMsg(String str) {
        this.msg = str;
    }
}
