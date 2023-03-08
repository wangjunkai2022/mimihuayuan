package com.comeback.data.ui.km;

import android.content.Context;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshActivity;
import com.comeback.data.ui.km.bean.Video;
import f.b.a.a.a;
import f.e.a.k.g;
import g.a.g0;
import g.a.j0;
import g.a.x;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class CollectListActivity extends BaseRefreshActivity {
    public static void r(Context context) {
        a.u(context, CollectListActivity.class);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public void e() {
        j(-1);
        q(false);
        this.mRvList.setLayoutManager(m());
        VideoListAdapter videoListAdapter = new VideoListAdapter(this);
        this.f114c = videoListAdapter;
        this.mRvList.setAdapter(videoListAdapter);
        j0<? extends g0> e2 = g.d(x.P()).e(Video.class);
        BaseAbstractAdapter baseAbstractAdapter = this.f114c;
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < e2.size(); i2++) {
            arrayList.add((Video) e2.get(i2));
        }
        baseAbstractAdapter.a(arrayList);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public BaseAbstractAdapter l() {
        return new VideoListAdapter(this);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public RecyclerView.LayoutManager m() {
        return new StaggeredGridLayoutManager(2, 1);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public void p(int i2) {
    }
}
