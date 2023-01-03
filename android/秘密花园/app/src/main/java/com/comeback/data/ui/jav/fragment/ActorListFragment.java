package com.comeback.data.ui.jav.fragment;

import android.os.Bundle;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.ui.jav.adapter.ActorAdapter;
import com.comeback.data.ui.jav.bean.Actor;
import f.e.a.e;
import f.e.a.j.h0.c;
import f.e.a.k.b;
import i.i0;
import java.io.IOException;
import java.util.ArrayList;
import l.d;
import l.f;
import l.g0;

/* loaded from: classes.dex */
public class ActorListFragment extends BaseRefreshFragment {

    /* renamed from: i  reason: collision with root package name */
    public String f1225i;

    /* renamed from: j  reason: collision with root package name */
    public d<i0> f1226j;

    /* loaded from: classes.dex */
    public class a implements f<i0> {
        public final /* synthetic */ int a;

        public a(int i2) {
            this.a = i2;
        }

        @Override // l.f
        public void a(d<i0> dVar, g0<i0> g0Var) {
            ActorListFragment.m(ActorListFragment.this, true);
            ActorListFragment.this.refreshLayout.m(true);
            if (g0Var.a.f6449e > 300) {
                e.a("BFJTRA4BS1wB");
                f.e.a.k.f.a();
                return;
            }
            try {
                ArrayList<Actor> a = f.e.a.j.u.e.a.a(g0Var.b.H());
                if (this.a == 1) {
                    ActorListFragment.this.f117h.c();
                }
                ActorListFragment.this.f117h.a(a);
            } catch (IOException e2) {
                e2.printStackTrace();
            }
        }

        @Override // l.f
        public void b(d<i0> dVar, Throwable th) {
            e.a("aD08ARkBVkFJ");
            th.getMessage();
            f.e.a.k.f.b();
            ActorListFragment.n(ActorListFragment.this, false);
            ActorListFragment.this.refreshLayout.m(false);
        }
    }

    public static void m(ActorListFragment actorListFragment, boolean z) {
        actorListFragment.refreshLayout.j(z);
    }

    public static void n(ActorListFragment actorListFragment, boolean z) {
        actorListFragment.refreshLayout.j(z);
    }

    public static ActorListFragment o(String str) {
        Bundle bundle = new Bundle();
        bundle.putString(e.a("XgY="), str);
        ActorListFragment actorListFragment = new ActorListFragment();
        actorListFragment.setArguments(bundle);
        return actorListFragment;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void a() {
        this.f1225i = getArguments().getString(e.a("XgY="));
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public BaseAbstractAdapter h() {
        return new ActorAdapter(getContext());
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public RecyclerView.LayoutManager i() {
        return new GridLayoutManager(getContext(), 3);
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public void l(int i2) {
        StringBuilder sb = new StringBuilder();
        f.b.a.a.a.B(sb, f.e.a.j.u.e.a.a, "GAMAEAQBSg==");
        sb.append(this.f1225i);
        sb.append(e.a("CBICAw5O"));
        sb.append(i2);
        d<i0> b = c.a().b(sb.toString(), b.h0, b.f3970c);
        this.f1226j = b;
        b.X(new a(i2));
    }

    @Override // com.comeback.data.base.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        d<i0> dVar = this.f1226j;
        if (dVar != null) {
            dVar.cancel();
        }
    }
}
