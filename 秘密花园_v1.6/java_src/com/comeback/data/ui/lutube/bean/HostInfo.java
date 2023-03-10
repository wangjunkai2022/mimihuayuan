package com.comeback.data.ui.lutube.bean;

import android.text.TextUtils;
import f.e.a.e;
import f.e.a.f.k;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public class HostInfo extends k {
    public List<ApiEntity> api;
    public List<ImgEntity> img;
    public List<StreamEntity> stream;

    /* loaded from: classes.dex */
    public class ApiEntity {
        public String mode;
        public String url;

        public ApiEntity() {
        }

        public boolean checkRemove() {
            return e.a("WgMNEQof").equals(this.mode);
        }

        public String getUrl() {
            return this.url;
        }

        public void setUrl(String str) {
            this.url = str;
        }
    }

    /* loaded from: classes.dex */
    public class ImgEntity {
        public String encrypt;
        public String mode;
        public String url;

        public ImgEntity() {
        }

        public boolean checkRemove() {
            return e.a("QVA=").equals(this.encrypt) && TextUtils.isEmpty(this.mode);
        }

        public String getEncrypt() {
            return this.encrypt;
        }

        public String getUrl() {
            return this.url;
        }

        public void setEncrypt(String str) {
            this.encrypt = str;
        }

        public void setUrl(String str) {
            this.url = str;
        }
    }

    /* loaded from: classes.dex */
    public class StreamEntity {
        public String mode;
        public String url;

        public StreamEntity() {
        }

        public boolean checkRemove() {
            return e.a("WgMNEQof").equals(this.mode);
        }

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

    public List<ApiEntity> getApi() {
        Iterator<ApiEntity> it = this.api.iterator();
        while (it.hasNext()) {
            if (it.next().checkRemove()) {
                it.remove();
            }
        }
        return this.api;
    }

    public List<String> getApis() {
        ArrayList arrayList = new ArrayList();
        Iterator<ApiEntity> it = this.api.iterator();
        while (it.hasNext()) {
            ApiEntity next = it.next();
            if (next.checkRemove()) {
                it.remove();
            } else {
                arrayList.add(next.getUrl());
            }
        }
        return arrayList;
    }

    public List<ImgEntity> getImg() {
        Iterator<ImgEntity> it = this.img.iterator();
        while (it.hasNext()) {
            if (it.next().checkRemove()) {
                it.remove();
            }
        }
        return this.img;
    }

    public List<String> getImgs() {
        ArrayList arrayList = new ArrayList();
        Iterator<ImgEntity> it = this.img.iterator();
        while (it.hasNext()) {
            ImgEntity next = it.next();
            if (!next.checkRemove()) {
                arrayList.add(next.url);
            } else {
                it.remove();
            }
        }
        return arrayList;
    }

    public List<StreamEntity> getStream() {
        Iterator<StreamEntity> it = this.stream.iterator();
        while (it.hasNext()) {
            if (it.next().checkRemove()) {
                it.remove();
            }
        }
        return this.stream;
    }

    public List<String> getStreams() {
        ArrayList arrayList = new ArrayList();
        Iterator<StreamEntity> it = this.stream.iterator();
        while (it.hasNext()) {
            StreamEntity next = it.next();
            if (next.checkRemove()) {
                it.remove();
            } else {
                arrayList.add(next.getUrl());
            }
        }
        return arrayList;
    }

    public void setApi(List<ApiEntity> list) {
        this.api = list;
    }

    public void setImg(List<ImgEntity> list) {
        this.img = list;
    }

    public void setStream(List<StreamEntity> list) {
        this.stream = list;
    }
}
