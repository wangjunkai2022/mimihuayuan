package com.comeback.data.base;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import butterknife.ButterKnife;
import butterknife.Unbinder;
import m.e;
import m.j;
import m.s.a;
/* loaded from: classes.dex */
public abstract class BaseFragment extends Fragment {
    public a a = new a();
    public boolean b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f108c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f109d;

    /* renamed from: e  reason: collision with root package name */
    public View f110e;

    /* renamed from: f  reason: collision with root package name */
    public Unbinder f111f;

    public BaseFragment() {
        getClass().getSimpleName();
        this.b = false;
        this.f108c = false;
        this.f109d = false;
    }

    public void a() {
    }

    public abstract int b();

    public void c() {
    }

    public void d() {
        if (this.f108c && this.f109d && !this.b) {
            this.b = true;
            e();
        }
    }

    public abstract void e();

    public abstract void f();

    public void g(e eVar, j jVar) {
        eVar.d(m.r.a.a()).b(m.l.b.a.a()).c(jVar);
        this.a.b(jVar);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        a();
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NonNull LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        if (this.f110e == null) {
            this.f110e = layoutInflater.inflate(b(), viewGroup, false);
        }
        this.f111f = ButterKnife.b(this, this.f110e);
        return this.f110e;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        Unbinder unbinder = this.f111f;
        if (unbinder != null) {
            unbinder.a();
        }
        this.a.d();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, @Nullable Bundle bundle) {
        super.onViewCreated(view, bundle);
        f();
        this.f108c = true;
        d();
    }

    @Override // androidx.fragment.app.Fragment
    public void setUserVisibleHint(boolean z) {
        super.setUserVisibleHint(z);
        if (getUserVisibleHint()) {
            this.f109d = true;
            d();
            return;
        }
        this.f109d = false;
        c();
    }
}
