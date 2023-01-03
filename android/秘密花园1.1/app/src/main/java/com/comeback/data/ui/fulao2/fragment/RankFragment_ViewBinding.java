package com.comeback.data.ui.fulao2.fragment;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.comeback.secret.garden.R;
import f.e.a.e;

/* loaded from: classes.dex */
public class RankFragment_ViewBinding implements Unbinder {
    public RankFragment b;

    /* renamed from: c  reason: collision with root package name */
    public View f769c;

    /* renamed from: d  reason: collision with root package name */
    public View f770d;

    /* renamed from: e  reason: collision with root package name */
    public View f771e;

    /* renamed from: f  reason: collision with root package name */
    public View f772f;

    /* loaded from: classes.dex */
    public class a extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ RankFragment f773c;

        public a(RankFragment_ViewBinding rankFragment_ViewBinding, RankFragment rankFragment) {
            this.f773c = rankFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f773c.onViewClicked(view);
        }
    }

    /* loaded from: classes.dex */
    public class b extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ RankFragment f774c;

        public b(RankFragment_ViewBinding rankFragment_ViewBinding, RankFragment rankFragment) {
            this.f774c = rankFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f774c.onViewClicked(view);
        }
    }

    /* loaded from: classes.dex */
    public class c extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ RankFragment f775c;

        public c(RankFragment_ViewBinding rankFragment_ViewBinding, RankFragment rankFragment) {
            this.f775c = rankFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f775c.onViewClicked(view);
        }
    }

    /* loaded from: classes.dex */
    public class d extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ RankFragment f776c;

        public d(RankFragment_ViewBinding rankFragment_ViewBinding, RankFragment rankFragment) {
            this.f776c = rankFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f776c.onViewClicked(view);
        }
    }

    @UiThread
    public RankFragment_ViewBinding(RankFragment rankFragment, View view) {
        this.b = rankFragment;
        View b2 = d.c.c.b(view, R.id.card_view1, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
        this.f769c = b2;
        b2.setOnClickListener(new a(this, rankFragment));
        View b3 = d.c.c.b(view, R.id.card_view2, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
        this.f770d = b3;
        b3.setOnClickListener(new b(this, rankFragment));
        View b4 = d.c.c.b(view, R.id.card_view3, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
        this.f771e = b4;
        b4.setOnClickListener(new c(this, rankFragment));
        View b5 = d.c.c.b(view, R.id.card_view4, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
        this.f772f = b5;
        b5.setOnClickListener(new d(this, rankFragment));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        if (this.b != null) {
            this.b = null;
            this.f769c.setOnClickListener(null);
            this.f769c = null;
            this.f770d.setOnClickListener(null);
            this.f770d = null;
            this.f771e.setOnClickListener(null);
            this.f771e = null;
            this.f772f.setOnClickListener(null);
            this.f772f = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
