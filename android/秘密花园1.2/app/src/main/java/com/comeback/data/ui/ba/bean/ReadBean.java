package com.comeback.data.ui.ba.bean;

import f.e.a.f.k;
import f.e.a.k.b;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class ReadBean extends k {
    public int code;
    public String msg;
    public ResultsBean results;

    /* loaded from: classes.dex */
    public static class ResultsBean {
        public List<String> episodes;

        public List<String> getEpisodes() {
            ArrayList arrayList = new ArrayList();
            for (int i2 = 0; i2 < this.episodes.size(); i2++) {
                String str = this.episodes.get(i2);
                if (str.contains(b.Z)) {
                    str = str.replace(b.Z, b.a0);
                }
                arrayList.add(str);
            }
            return arrayList;
        }

        public void setEpisodes(List<String> list) {
            this.episodes = list;
        }
    }

    public int getCode() {
        return this.code;
    }

    public String getMsg() {
        return this.msg;
    }

    public ResultsBean getResults() {
        return this.results;
    }

    public void setCode(int i2) {
        this.code = i2;
    }

    public void setMsg(String str) {
        this.msg = str;
    }

    public void setResults(ResultsBean resultsBean) {
        this.results = resultsBean;
    }
}
