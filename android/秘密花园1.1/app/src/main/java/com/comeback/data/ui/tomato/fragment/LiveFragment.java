package com.comeback.data.ui.tomato.fragment;

import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.ui.tomato.adapter.RoomAdapter;
import f.e.a.e;
import f.e.a.j.m0.c.a;
import f.e.a.j.m0.c.c;
import i.g0;
import i.z;

/* loaded from: classes.dex */
public class LiveFragment extends BaseRefreshFragment {
    @Override // com.comeback.data.base.BaseRefreshFragment
    public BaseAbstractAdapter h() {
        return new RoomAdapter(getContext());
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public RecyclerView.LayoutManager i() {
        return new GridLayoutManager(getContext(), 2);
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public void l(int i2) {
        a aVar;
        g0 c2 = g0.c(String.format(e.a("TEABFgodWlswDlUJFg8PIlNAWUZbQwhsHRNYC1pGQRtWBQYqHh5bVgFEDkIcRkEbVgUGNwIJXBFJVAQa"), Integer.valueOf(i2)), z.c(e.a("VhITCAIQWEcaCVpIEhkMBQxCAAwKAUpWB1tBEx5HWw==")));
        synchronized (c.class) {
            if (c.b == null) {
                c.b = new c();
            }
            aVar = c.b.a;
        }
        g(aVar.a(c2), new f.e.a.j.m0.b.a(this));
    }
}
