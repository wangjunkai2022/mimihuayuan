package com.comeback.data.ui.tv91.bean;

import android.text.TextUtils;
import f.e.a.f.j;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class Tags extends j {
    public String Code;
    public List<MessageBean> Message;
    public int Result;

    /* loaded from: classes.dex */
    public static class MessageBean {
        public int ID;
        public String Name;

        public int getID() {
            return this.ID;
        }

        public String getName() {
            return this.Name;
        }

        public void setID(int i2) {
            this.ID = i2;
        }

        public void setName(String str) {
            this.Name = str;
        }
    }

    public String getCode() {
        return this.Code;
    }

    public List<MessageBean> getMessage() {
        return this.Message;
    }

    public int getResult() {
        return this.Result;
    }

    public void setCode(String str) {
        this.Code = str;
    }

    public void setMessage(List<MessageBean> list) {
        this.Message = list;
    }

    public void setResult(int i2) {
        this.Result = i2;
    }

    public List<MessageBean> getMessage(String str) {
        if (TextUtils.isEmpty(str)) {
            return this.Message;
        }
        ArrayList arrayList = new ArrayList();
        for (MessageBean messageBean : this.Message) {
            if (messageBean.Name.contains(str)) {
                arrayList.add(messageBean);
            }
        }
        return arrayList;
    }
}
