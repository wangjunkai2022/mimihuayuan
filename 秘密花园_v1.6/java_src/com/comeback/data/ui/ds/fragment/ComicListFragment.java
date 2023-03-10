package com.comeback.data.ui.ds.fragment;

import android.os.Bundle;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.comeback.data.base.BaseFragment;
import com.comeback.data.ui.ds.adapter.RealTimeAdapter;
import com.comeback.data.ui.ds.bean.DsItemBean;
import com.comeback.secret.garden.R;
import f.e.a.e;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class ComicListFragment extends BaseFragment {

    /* renamed from: g  reason: collision with root package name */
    public ArrayList<DsItemBean> f630g;
    @BindView
    public RecyclerView rvList;

    public static ComicListFragment h(List<DsItemBean> list) {
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList(e.a("WwsQEA=="), (ArrayList) list);
        ComicListFragment comicListFragment = new ComicListFragment();
        comicListFragment.setArguments(bundle);
        return comicListFragment;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void a() {
        this.f630g = getArguments().getParcelableArrayList(e.a("WwsQEA=="));
    }

    @Override // com.comeback.data.base.BaseFragment
    public int b() {
        return R.layout.include_only_recycleview;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void e() {
        RealTimeAdapter realTimeAdapter = new RealTimeAdapter(getContext());
        this.rvList.setAdapter(realTimeAdapter);
        this.rvList.setLayoutManager(new LinearLayoutManager(getContext()));
        realTimeAdapter.a(this.f630g);
    }

    @Override // com.comeback.data.base.BaseFragment
    public void f() {
    }
}
