package com.comeback.data.ui.fulao2.bean;

import android.text.TextUtils;
import f.e.a.e;
import f.e.a.f.k;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes.dex */
public class Host extends k {
    public List<ApiBean> api;
    public List<ImgBean> img;
    public List<StreamBean> stream;

    /* loaded from: classes.dex */
    public static class ApiBean {
        public String mode;
        public String url;

        public String getMode() {
            return this.mode;
        }

        public String getUrl() {
            return this.url;
        }

        public void setMode(String str) {
            this.mode = str;
        }

        public void setUrl(String str) {
            this.url = str;
        }
    }

    /* loaded from: classes.dex */
    public static class ImgBean {
        public String encrypt;
        public String mode;
        public String url;

        public String getEncrypt() {
            return this.encrypt;
        }

        public String getMode() {
            return this.mode;
        }

        public String getUrl() {
            return this.url;
        }

        public void setEncrypt(String str) {
            this.encrypt = str;
        }

        public void setMode(String str) {
            this.mode = str;
        }

        public void setUrl(String str) {
            this.url = str;
        }
    }

    /* loaded from: classes.dex */
    public static class StreamBean {
        public String mode;
        public String title;
        public String url;

        public String getMode() {
            return this.mode;
        }

        public String getName() {
            return TextUtils.isEmpty(this.title) ? this.mode : this.title;
        }

        public String getUrl() {
            return this.url;
        }

        public void setMode(String str) {
            this.mode = str;
        }

        public void setUrl(String str) {
            this.url = str;
        }
    }

    public List<ApiBean> getApi() {
        return this.api;
    }

    public CharSequence[] getApiString() {
        String[] strArr = new String[getApi().size()];
        for (int i2 = 0; i2 < getApi().size(); i2++) {
            strArr[i2] = getApi().get(i2).getUrl();
        }
        return strArr;
    }

    public String getBestApi() {
        HashMap hashMap = new HashMap();
        for (ApiBean apiBean : getApi()) {
            String url = apiBean.getUrl();
            Integer num = (Integer) hashMap.get(url);
            if (num != null) {
                hashMap.put(url, Integer.valueOf(num.intValue() + 1));
            } else {
                hashMap.put(url, 1);
            }
        }
        int i2 = 0;
        String str = "";
        for (String str2 : hashMap.keySet()) {
            Integer num2 = (Integer) hashMap.get(str2);
            if (num2.intValue() > i2) {
                i2 = num2.intValue();
                str = str2;
            }
        }
        return str;
    }

    public String getBestImage() {
        HashMap hashMap = new HashMap();
        for (ImgBean imgBean : getImg()) {
            String url = imgBean.getUrl();
            Integer num = (Integer) hashMap.get(url);
            if (num != null) {
                hashMap.put(url, Integer.valueOf(num.intValue() + 1));
            } else {
                hashMap.put(url, 1);
            }
        }
        int i2 = 0;
        String str = "";
        for (String str2 : hashMap.keySet()) {
            Integer num2 = (Integer) hashMap.get(str2);
            if (num2.intValue() > i2) {
                i2 = num2.intValue();
                str = str2;
            }
        }
        return str;
    }

    public String getDefaultStream() {
        for (StreamBean streamBean : getStream()) {
            if (e.a("WQ0VDRs=").equals(streamBean.getMode())) {
                return streamBean.getUrl();
            }
        }
        return (getStream() == null || getStream().size() == 0) ? "" : getStream().get(0).getUrl();
    }

    public CharSequence[] getImageString() {
        String[] strArr = new String[getImg().size()];
        for (int i2 = 0; i2 < getImg().size(); i2++) {
            strArr[i2] = getImg().get(i2).getUrl();
        }
        return strArr;
    }

    public List<ImgBean> getImg() {
        return this.img;
    }

    public List<StreamBean> getStream() {
        return this.stream;
    }

    public CharSequence[] getStreamString() {
        String[] strArr = new String[getStream().size()];
        for (int i2 = 0; i2 < getStream().size(); i2++) {
            strArr[i2] = getStream().get(i2).getUrl();
        }
        return strArr;
    }

    public void setApi(List<ApiBean> list) {
        this.api = list;
    }

    public void setImg(List<ImgBean> list) {
        this.img = list;
    }

    public void setStream(List<StreamBean> list) {
        this.stream = list;
    }
}
