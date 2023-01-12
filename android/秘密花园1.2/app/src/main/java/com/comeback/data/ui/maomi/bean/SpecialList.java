package com.comeback.data.ui.maomi.bean;

import com.comeback.data.ui.commom.PPTAdapter;
import f.e.a.f.k;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class SpecialList extends k implements PPTAdapter.c {
    public String code;
    public List<DataBean> data;
    public String message;

    /* loaded from: classes.dex */
    public static class DataBean {
        public String describe;
        public String id;
        public String image;
        public String label;
        public String name;

        public String getDescribe() {
            return this.describe;
        }

        public String getId() {
            return this.id;
        }

        public String getImage() {
            return this.image;
        }

        public String getLabel() {
            return this.label;
        }

        public String getName() {
            return this.name;
        }

        public void setDescribe(String str) {
            this.describe = str;
        }

        public void setId(String str) {
            this.id = str;
        }

        public void setImage(String str) {
            this.image = str;
        }

        public void setLabel(String str) {
            this.label = str;
        }

        public void setName(String str) {
            this.name = str;
        }
    }

    public String getCode() {
        return this.code;
    }

    public List<DataBean> getData() {
        return this.data;
    }

    @Override // com.comeback.data.ui.commom.PPTAdapter.c
    public List<String> getImages() {
        ArrayList arrayList = new ArrayList();
        for (DataBean dataBean : getData()) {
            arrayList.add(dataBean.getImage());
        }
        return arrayList;
    }

    public String getMessage() {
        return this.message;
    }

    @Override // com.comeback.data.ui.commom.PPTAdapter.c
    public List<String> getTitles() {
        ArrayList arrayList = new ArrayList();
        for (DataBean dataBean : getData()) {
            arrayList.add(dataBean.getName());
        }
        return arrayList;
    }

    public void setCode(String str) {
        this.code = str;
    }

    public void setData(List<DataBean> list) {
        this.data = list;
    }

    public void setMessage(String str) {
        this.message = str;
    }
}
