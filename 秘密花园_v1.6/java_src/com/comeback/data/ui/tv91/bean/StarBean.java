package com.comeback.data.ui.tv91.bean;

import f.e.a.f.k;
import java.util.List;
/* loaded from: classes.dex */
public class StarBean extends k {
    public String Code;
    public MessageBean Message;
    public int Result;

    /* loaded from: classes.dex */
    public static class MessageBean {
        public List<DataBean> Data;
        public int PageCount;
        public int Total;

        /* loaded from: classes.dex */
        public static class DataBean {
            public String Count;
            public int ID;
            public String Name;
            public String Pic;

            public String getCount() {
                return this.Count;
            }

            public int getID() {
                return this.ID;
            }

            public String getName() {
                return this.Name;
            }

            public String getPic() {
                return this.Pic;
            }

            public void setCount(String str) {
                this.Count = str;
            }

            public void setID(int i2) {
                this.ID = i2;
            }

            public void setName(String str) {
                this.Name = str;
            }

            public void setPic(String str) {
                this.Pic = str;
            }
        }

        public List<DataBean> getData() {
            return this.Data;
        }

        public int getPageCount() {
            return this.PageCount;
        }

        public int getTotal() {
            return this.Total;
        }

        public void setData(List<DataBean> list) {
            this.Data = list;
        }

        public void setPageCount(int i2) {
            this.PageCount = i2;
        }

        public void setTotal(int i2) {
            this.Total = i2;
        }
    }

    public String getCode() {
        return this.Code;
    }

    public MessageBean getMessage() {
        return this.Message;
    }

    public int getResult() {
        return this.Result;
    }

    public void setCode(String str) {
        this.Code = str;
    }

    public void setMessage(MessageBean messageBean) {
        this.Message = messageBean;
    }

    public void setResult(int i2) {
        this.Result = i2;
    }
}
