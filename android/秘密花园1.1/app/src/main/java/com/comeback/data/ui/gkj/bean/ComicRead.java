package com.comeback.data.ui.gkj.bean;

import android.text.TextUtils;
import f.e.a.e;
import f.e.a.f.j;
import f.e.a.k.b;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class ComicRead extends j {
    public int code;
    public ContentEntity content;
    public String message;

    /* loaded from: classes.dex */
    public class ContentEntity {
        public String data;

        public ContentEntity() {
        }

        public String getData() {
            return this.data;
        }

        public ArrayList<String> getDataList() {
            String[] split;
            ArrayList<String> arrayList = new ArrayList<>();
            if (this.data.contains(e.a("Gw=="))) {
                for (String str : this.data.split(e.a("Gw=="))) {
                    if (TextUtils.isEmpty(str) || str.startsWith(e.a("XxYXFA=="))) {
                        arrayList.add(str);
                    } else {
                        arrayList.add(b.C + e.a("GBAGFwQGS1AWFRs=") + str);
                    }
                }
            }
            return arrayList;
        }

        public void setData(String str) {
            this.data = str;
        }
    }

    public int getCode() {
        return this.code;
    }

    public ContentEntity getContent() {
        return this.content;
    }

    public String getMessage() {
        return this.message;
    }

    public void setCode(int i2) {
        this.code = i2;
    }

    public void setContent(ContentEntity contentEntity) {
        this.content = contentEntity;
    }

    public void setMessage(String str) {
        this.message = str;
    }
}
