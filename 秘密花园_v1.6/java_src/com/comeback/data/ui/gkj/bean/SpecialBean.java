package com.comeback.data.ui.gkj.bean;

import com.comeback.data.ui.gkj.bean.NavBean;
import f.e.a.f.k;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public class SpecialBean extends k {
    public List<NavBean.DataEntity.ArticleVOSEntity> data;
    public boolean haveMore;

    public List<NavBean.DataEntity.ArticleVOSEntity> getData() {
        Iterator<NavBean.DataEntity.ArticleVOSEntity> it = this.data.iterator();
        while (it.hasNext()) {
            if (!it.next().isVip()) {
                it.remove();
            }
        }
        return this.data;
    }

    public boolean isHaveMore() {
        return this.haveMore;
    }

    public void setData(List<NavBean.DataEntity.ArticleVOSEntity> list) {
        this.data = list;
    }

    public void setHaveMore(boolean z) {
        this.haveMore = z;
    }
}
