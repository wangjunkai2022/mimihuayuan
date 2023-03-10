package com.comeback.data.ui.gkj.fragment;

import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.comeback.data.base.BaseFragment;
import com.comeback.data.ui.hm.adapter.ListAdapter;
import com.comeback.data.ui.hm.bean.ItemInfo;
import com.comeback.secret.garden.R;
import f.e.a.j.r.f.a;
import f.e.a.k.g;
import g.a.g0;
import g.a.j0;
import g.a.x;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class HomeCollectFragment extends BaseFragment {

    /* renamed from: g  reason: collision with root package name */
    public boolean f1064g = false;
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
        e();
    }

    @Override // com.comeback.data.base.BaseFragment
    public void e() {
        this.f1064g = a.c();
        j0<? extends g0> e2 = g.d(x.P()).e(ItemInfo.class);
        this.tvHint.setVisibility(e2.size() == 0 ? 0 : 8);
        this.rvList.setLayoutManager(new LinearLayoutManager(getContext()));
        ListAdapter listAdapter = new ListAdapter(getContext());
        this.rvList.setAdapter(listAdapter);
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < e2.size(); i2++) {
            ItemInfo itemInfo = (ItemInfo) e2.get(i2);
            if (itemInfo.isHm() == this.f1064g) {
                arrayList.add(itemInfo);
            }
        }
        listAdapter.b(arrayList, listAdapter.b.size());
    }

    @Override // com.comeback.data.base.BaseFragment
    public void f() {
    }
}
