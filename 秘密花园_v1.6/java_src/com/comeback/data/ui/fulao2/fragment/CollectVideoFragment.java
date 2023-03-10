package com.comeback.data.ui.fulao2.fragment;

import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.comeback.data.base.BaseFragment;
import com.comeback.data.ui.fulao2.adapter.VideoListAdapter;
import com.comeback.data.ui.fulao2.bean.VideosBean;
import com.comeback.secret.garden.R;
import f.e.a.k.g;
import g.a.g0;
import g.a.j0;
import g.a.x;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class CollectVideoFragment extends BaseFragment {
    @BindView
    public RecyclerView rvList;
    @BindView
    public TextView tvHint;

    @Override // com.comeback.data.base.BaseFragment
    public int b() {
        return R.layout.fragment_base_realm;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void d() {
        if (this.f108c && this.f109d) {
            e();
        }
    }

    @Override // com.comeback.data.base.BaseFragment
    public void e() {
        j0<? extends g0> e2 = g.d(x.P()).e(VideosBean.class);
        this.tvHint.setVisibility(e2.size() == 0 ? 0 : 8);
        this.rvList.setLayoutManager(new LinearLayoutManager(getContext()));
        VideoListAdapter videoListAdapter = new VideoListAdapter(getContext());
        this.rvList.setAdapter(videoListAdapter);
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < e2.size(); i2++) {
            arrayList.add((VideosBean) e2.get(i2));
        }
        videoListAdapter.b(arrayList, videoListAdapter.b.size());
    }

    @Override // com.comeback.data.base.BaseFragment
    public void f() {
    }
}
