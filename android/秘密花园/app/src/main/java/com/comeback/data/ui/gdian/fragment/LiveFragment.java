package com.comeback.data.ui.gdian.fragment;

import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.ui.gdian.adapter.RoomAdapter;
import com.comeback.data.ui.gdian.bean.LiveList;
import f.e.a.j.l.e.e;

/* loaded from: classes.dex */
public class LiveFragment extends BaseRefreshFragment {

    /* loaded from: classes.dex */
    public class a extends BaseRefreshFragment.a<LiveList> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f828f;

        /* JADX INFO: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i2) {
            super();
            this.f828f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            LiveList liveList = (LiveList) obj;
            if (this.f828f == 1) {
                LiveFragment.this.f117h.c();
            }
            LiveFragment.this.f117h.a(liveList.getData());
        }
    }

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
        g(e.a().e(20, i2), new a(i2));
    }
}
