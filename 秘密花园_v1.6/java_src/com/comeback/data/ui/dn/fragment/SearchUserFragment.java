package com.comeback.data.ui.dn.fragment;

import android.text.TextUtils;
import chuangyuan.ycj.videolibrary.video.VideoPlayerManager;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.ui.dn.adapter.UserAdapter;
import com.comeback.data.ui.dn.bean.UserList;
import f.e.a.e;
import f.e.a.j.h.c.b;
import java.util.HashMap;
/* loaded from: classes.dex */
public class SearchUserFragment extends BaseRefreshFragment {

    /* renamed from: i  reason: collision with root package name */
    public String f570i = "";

    /* loaded from: classes.dex */
    public class a extends BaseRefreshFragment.a<UserList> {
        public a() {
            super();
        }

        @Override // m.j
        public void f(Object obj) {
            SearchUserFragment.m(SearchUserFragment.this, (UserList) obj);
        }
    }

    public static void m(SearchUserFragment searchUserFragment, UserList userList) {
        if (searchUserFragment.f116g == 1) {
            searchUserFragment.f117h.c();
        }
        searchUserFragment.f117h.a(userList.getData().getInfo());
    }

    @Override // com.comeback.data.base.BaseFragment
    public void c() {
        VideoPlayerManager.getInstance().onPause(true);
    }

    @Override // com.comeback.data.base.BaseRefreshFragment, com.comeback.data.base.BaseFragment
    public void e() {
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public BaseAbstractAdapter h() {
        return new UserAdapter(getContext());
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public void l(int i2) {
        if (TextUtils.isEmpty(this.f570i)) {
            this.refreshLayout.k();
            this.refreshLayout.j(true);
            return;
        }
        f.e.a.j.h.c.a a2 = b.a();
        HashMap hashMap = new HashMap();
        hashMap.put(f.b.a.a.a.G(i2, hashMap, f.b.a.a.a.i("GlM=", hashMap, f.b.a.a.a.i("TQpOBwU=", hashMap, f.b.a.a.a.i("fw0OAUUAXFIBBVw=", hashMap, e.a("RAcREgIQXA=="), "WwMNAx4SXlY="), "QgsH"), "Rw=="), "XAca"), this.f570i);
        g(a2.b(hashMap), new a());
    }
}
