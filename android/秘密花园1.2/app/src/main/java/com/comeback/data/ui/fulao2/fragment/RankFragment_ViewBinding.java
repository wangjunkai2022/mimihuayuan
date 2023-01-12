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
    public View f842c;

    /* renamed from: d  reason: collision with root package name */
    public View f843d;

    /* renamed from: e  reason: collision with root package name */
    public View f844e;

    /* renamed from: f  reason: collision with root package name */
    public View f845f;

    /* loaded from: classes.dex */
    public class a extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ RankFragment f846c;

        public a(RankFragment_ViewBinding rankFragment_ViewBinding, RankFragment rankFragment) {
            this.f846c = rankFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f846c.onViewClicked(view);
        }
    }

    /* loaded from: classes.dex */
    public class b extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ RankFragment f847c;

        public b(RankFragment_ViewBinding rankFragment_ViewBinding, RankFragment rankFragment) {
            this.f847c = rankFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f847c.onViewClicked(view);
        }
    }

    /* loaded from: classes.dex */
    public class c extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ RankFragment f848c;

        public c(RankFragment_ViewBinding rankFragment_ViewBinding, RankFragment rankFragment) {
            this.f848c = rankFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f848c.onViewClicked(view);
        }
    }

    /* loaded from: classes.dex */
    public class d extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ RankFragment f849c;

        public d(RankFragment_ViewBinding rankFragment_ViewBinding, RankFragment rankFragment) {
            this.f849c = rankFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f849c.onViewClicked(view);
        }
    }

    @UiThread
    public RankFragment_ViewBinding(RankFragment rankFragment, View view) {
        this.b = rankFragment;
        View b2 = d.c.c.b(view, R.id.card_view1, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
        this.f842c = b2;
        b2.setOnClickListener(new a(this, rankFragment));
        View b3 = d.c.c.b(view, R.id.card_view2, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
        this.f843d = b3;
        b3.setOnClickListener(new b(this, rankFragment));
        View b4 = d.c.c.b(view, R.id.card_view3, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
        this.f844e = b4;
        b4.setOnClickListener(new c(this, rankFragment));
        View b5 = d.c.c.b(view, R.id.card_view4, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
        this.f845f = b5;
        b5.setOnClickListener(new d(this, rankFragment));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        if (this.b != null) {
            this.b = null;
            this.f842c.setOnClickListener(null);
            this.f842c = null;
            this.f843d.setOnClickListener(null);
            this.f843d = null;
            this.f844e.setOnClickListener(null);
            this.f844e = null;
            this.f845f.setOnClickListener(null);
            this.f845f = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
