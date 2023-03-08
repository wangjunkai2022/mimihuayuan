package com.comeback.data.ui.xj.bean;

import com.comeback.data.ui.xj.bean.Channel;
import f.e.a.f.k;
import java.util.List;

/* loaded from: classes.dex */
public class Special extends k {
    public DataBean data;
    public String errmsg;
    public int retcode;

    /* loaded from: classes.dex */
    public static class DataBean {
        public Channel.DataBean.RowsBean row;
        public List<VideoBean> vodrows;

        public Channel.DataBean.RowsBean getRow() {
            return this.row;
        }

        public List<VideoBean> getVodrows() {
            return this.vodrows;
        }

        public void setRow(Channel.DataBean.RowsBean rowsBean) {
            this.row = rowsBean;
        }

        public void setVodrows(List<VideoBean> list) {
            this.vodrows = list;
        }
    }

    public DataBean getData() {
        return this.data;
    }

    public String getErrmsg() {
        return this.errmsg;
    }

    public int getRetcode() {
        return this.retcode;
    }

    public void setData(DataBean dataBean) {
        this.data = dataBean;
    }

    public void setErrmsg(String str) {
        this.errmsg = str;
    }

    public void setRetcode(int i2) {
        this.retcode = i2;
    }
}
