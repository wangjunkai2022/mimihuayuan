package com.comeback.data.ui.main;

import android.content.Context;
import android.widget.TextView;
import androidx.recyclerview.widget.DividerItemDecoration;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.comeback.data.base.BaseActivity;
import com.comeback.data.ui.main.adapter.CollectAdapter;
import com.comeback.data.ui.main.bean.CollectVideo;
import com.comeback.secret.garden.R;
import f.b.a.a.a;
import f.e.a.k.g;
import g.a.g0;
import g.a.j0;
import g.a.x;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class CollectActivity extends BaseActivity {
    @BindView
    public RecyclerView rvList;
    @BindView
    public TextView tvHint;

    public static void l(Context context) {
        a.u(context, CollectActivity.class);
    }

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_main_collect;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        j0<? extends g0> e2 = g.d(x.P()).e(CollectVideo.class);
        this.tvHint.setVisibility(e2.size() == 0 ? 0 : 8);
        this.rvList.setLayoutManager(new LinearLayoutManager(this));
        this.rvList.addItemDecoration(new DividerItemDecoration(this, 1));
        CollectAdapter collectAdapter = new CollectAdapter(this);
        this.rvList.setAdapter(collectAdapter);
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < e2.size(); i2++) {
            arrayList.add((CollectVideo) e2.get(i2));
        }
        collectAdapter.b(arrayList, collectAdapter.b.size());
    }
}
