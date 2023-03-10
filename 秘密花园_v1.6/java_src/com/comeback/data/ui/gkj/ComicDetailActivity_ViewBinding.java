package com.comeback.data.ui.gkj;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import com.comeback.secret.garden.R;
import f.e.a.e;
/* loaded from: classes.dex */
public class ComicDetailActivity_ViewBinding implements Unbinder {
    public ComicDetailActivity b;

    /* renamed from: c  reason: collision with root package name */
    public View f930c;

    /* renamed from: d  reason: collision with root package name */
    public View f931d;

    /* renamed from: e  reason: collision with root package name */
    public View f932e;

    /* renamed from: f  reason: collision with root package name */
    public View f933f;

    /* loaded from: classes.dex */
    public class a extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ ComicDetailActivity f934c;

        public a(ComicDetailActivity_ViewBinding comicDetailActivity_ViewBinding, ComicDetailActivity comicDetailActivity) {
            this.f934c = comicDetailActivity;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f934c.onViewClicked(view);
        }
    }

    /* loaded from: classes.dex */
    public class b extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ ComicDetailActivity f935c;

        public b(ComicDetailActivity_ViewBinding comicDetailActivity_ViewBinding, ComicDetailActivity comicDetailActivity) {
            this.f935c = comicDetailActivity;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f935c.onViewClicked(view);
        }
    }

    /* loaded from: classes.dex */
    public class c extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ ComicDetailActivity f936c;

        public c(ComicDetailActivity_ViewBinding comicDetailActivity_ViewBinding, ComicDetailActivity comicDetailActivity) {
            this.f936c = comicDetailActivity;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f936c.onViewClicked(view);
        }
    }

    /* loaded from: classes.dex */
    public class d extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ ComicDetailActivity f937c;

        public d(ComicDetailActivity_ViewBinding comicDetailActivity_ViewBinding, ComicDetailActivity comicDetailActivity) {
            this.f937c = comicDetailActivity;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f937c.onViewClicked(view);
        }
    }

    @UiThread
    public ComicDetailActivity_ViewBinding(ComicDetailActivity comicDetailActivity, View view) {
        this.b = comicDetailActivity;
        comicDetailActivity.tvStar = (TextView) d.c.c.c(view, R.id.tv_star, e.a("UQsGCA9THkcFNUAGCk0="), TextView.class);
        comicDetailActivity.tvHot = (TextView) d.c.c.c(view, R.id.tv_hot, e.a("UQsGCA9THkcFLlsTXw=="), TextView.class);
        comicDetailActivity.tvTag1 = (TextView) d.c.c.c(view, R.id.tv_tag1, e.a("UQsGCA9THkcFMlUASU0="), TextView.class);
        comicDetailActivity.tvTag2 = (TextView) d.c.c.c(view, R.id.tv_tag2, e.a("UQsGCA9THkcFMlUASk0="), TextView.class);
        comicDetailActivity.tvTag3 = (TextView) d.c.c.c(view, R.id.tv_tag3, e.a("UQsGCA9THkcFMlUAS00="), TextView.class);
        comicDetailActivity.tvTag4 = (TextView) d.c.c.c(view, R.id.tv_tag4, e.a("UQsGCA9THkcFMlUATE0="), TextView.class);
        comicDetailActivity.tvIntro = (TextView) d.c.c.c(view, R.id.tv_intro, e.a("UQsGCA9THkcFL1oTCgVE"), TextView.class);
        View b2 = d.c.c.b(view, R.id.tv_order, e.a("UQsGCA9THkcFKUYDHRhES1YMB0QGFk1bHAIUQBcENQJSFSAIAhBSVhdB"));
        comicDetailActivity.tvOrder = (TextView) d.c.c.a(b2, R.id.tv_order, e.a("UQsGCA9THkcFKUYDHRhE"), TextView.class);
        this.f930c = b2;
        b2.setOnClickListener(new a(this, comicDetailActivity));
        comicDetailActivity.tvState = (TextView) d.c.c.c(view, R.id.tv_state, e.a("UQsGCA9THkcFNUAGDA9E"), TextView.class);
        comicDetailActivity.tvUpdate = (TextView) d.c.c.c(view, R.id.tv_update, e.a("UQsGCA9THkcFM0QDGR4GTA=="), TextView.class);
        View b3 = d.c.c.b(view, R.id.tv_reverse, e.a("UQsGCA9THkcFNFERHRgQDhBCAgoPU1RWBw5bA1hNDAVhCwYTKB9QUBgDUEA="));
        comicDetailActivity.tvReverse = (TextView) d.c.c.a(b3, R.id.tv_reverse, e.a("UQsGCA9THkcFNFERHRgQDhA="), TextView.class);
        this.f931d = b3;
        b3.setOnClickListener(new b(this, comicDetailActivity));
        comicDetailActivity.rvList = (RecyclerView) d.c.c.c(view, R.id.rv_list, e.a("UQsGCA9THkEFKl0UDE0="), RecyclerView.class);
        RecyclerView recyclerView = (RecyclerView) d.c.c.c(view, R.id.rv_like, e.a("UQsGCA9THkEFKl0MHU0="), RecyclerView.class);
        comicDetailActivity.ivCover = (ImageView) d.c.c.c(view, R.id.iv_cover, e.a("UQsGCA9THloFJVsRHRhE"), ImageView.class);
        comicDetailActivity.tvTitle = (TextView) d.c.c.c(view, R.id.tv_title, e.a("UQsGCA9THkcFMl0TFA9E"), TextView.class);
        comicDetailActivity.rvList2 = (RecyclerView) d.c.c.c(view, R.id.rv_list2, e.a("UQsGCA9THkEFKl0UDFhE"), RecyclerView.class);
        comicDetailActivity.llExpend = (LinearLayout) d.c.c.c(view, R.id.ll_expend, e.a("UQsGCA9THl8fI0wXHQQHTA=="), LinearLayout.class);
        View b4 = d.c.c.b(view, R.id.tv_expend, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
        this.f932e = b4;
        b4.setOnClickListener(new c(this, comicDetailActivity));
        View b5 = d.c.c.b(view, R.id.tv_expend2, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
        this.f933f = b5;
        b5.setOnClickListener(new d(this, comicDetailActivity));
        Context context = view.getContext();
        comicDetailActivity.kmColorAccent = ContextCompat.getColor(context, R.color.kmColorAccent);
        comicDetailActivity.primary_text = ContextCompat.getColor(context, R.color.basic_primary_text);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        ComicDetailActivity comicDetailActivity = this.b;
        if (comicDetailActivity != null) {
            this.b = null;
            comicDetailActivity.tvStar = null;
            comicDetailActivity.tvHot = null;
            comicDetailActivity.tvTag1 = null;
            comicDetailActivity.tvTag2 = null;
            comicDetailActivity.tvTag3 = null;
            comicDetailActivity.tvTag4 = null;
            comicDetailActivity.tvIntro = null;
            comicDetailActivity.tvOrder = null;
            comicDetailActivity.tvState = null;
            comicDetailActivity.tvUpdate = null;
            comicDetailActivity.tvReverse = null;
            comicDetailActivity.rvList = null;
            comicDetailActivity.ivCover = null;
            comicDetailActivity.tvTitle = null;
            comicDetailActivity.rvList2 = null;
            comicDetailActivity.llExpend = null;
            this.f930c.setOnClickListener(null);
            this.f930c = null;
            this.f931d.setOnClickListener(null);
            this.f931d = null;
            this.f932e.setOnClickListener(null);
            this.f932e = null;
            this.f933f.setOnClickListener(null);
            this.f933f = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
