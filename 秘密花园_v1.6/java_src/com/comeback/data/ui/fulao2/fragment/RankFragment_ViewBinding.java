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
    public View f846c;

    /* renamed from: d  reason: collision with root package name */
    public View f847d;

    /* renamed from: e  reason: collision with root package name */
    public View f848e;

    /* renamed from: f  reason: collision with root package name */
    public View f849f;

    /* loaded from: classes.dex */
    public class a extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ RankFragment f850c;

        public a(RankFragment_ViewBinding rankFragment_ViewBinding, RankFragment rankFragment) {
            this.f850c = rankFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f850c.onViewClicked(view);
        }
    }

    /* loaded from: classes.dex */
    public class b extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ RankFragment f851c;

        public b(RankFragment_ViewBinding rankFragment_ViewBinding, RankFragment rankFragment) {
            this.f851c = rankFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f851c.onViewClicked(view);
        }
    }

    /* loaded from: classes.dex */
    public class c extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ RankFragment f852c;

        public c(RankFragment_ViewBinding rankFragment_ViewBinding, RankFragment rankFragment) {
            this.f852c = rankFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f852c.onViewClicked(view);
        }
    }

    /* loaded from: classes.dex */
    public class d extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ RankFragment f853c;

        public d(RankFragment_ViewBinding rankFragment_ViewBinding, RankFragment rankFragment) {
            this.f853c = rankFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f853c.onViewClicked(view);
        }
    }

    @UiThread
    public RankFragment_ViewBinding(RankFragment rankFragment, View view) {
        this.b = rankFragment;
        View b2 = d.c.c.b(view, R.id.card_view1, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
        this.f846c = b2;
        b2.setOnClickListener(new a(this, rankFragment));
        View b3 = d.c.c.b(view, R.id.card_view2, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
        this.f847d = b3;
        b3.setOnClickListener(new b(this, rankFragment));
        View b4 = d.c.c.b(view, R.id.card_view3, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
        this.f848e = b4;
        b4.setOnClickListener(new c(this, rankFragment));
        View b5 = d.c.c.b(view, R.id.card_view4, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
        this.f849f = b5;
        b5.setOnClickListener(new d(this, rankFragment));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        if (this.b != null) {
            this.b = null;
            this.f846c.setOnClickListener(null);
            this.f846c = null;
            this.f847d.setOnClickListener(null);
            this.f847d = null;
            this.f848e.setOnClickListener(null);
            this.f848e = null;
            this.f849f.setOnClickListener(null);
            this.f849f = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
