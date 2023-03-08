package com.comeback.data.ui.slf;

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
    public View f2000c;

    /* renamed from: d  reason: collision with root package name */
    public View f2001d;

    /* renamed from: e  reason: collision with root package name */
    public View f2002e;

    /* renamed from: f  reason: collision with root package name */
    public View f2003f;

    /* loaded from: classes.dex */
    public class a extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ ComicDetailActivity f2004c;

        public a(ComicDetailActivity_ViewBinding comicDetailActivity_ViewBinding, ComicDetailActivity comicDetailActivity) {
            this.f2004c = comicDetailActivity;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f2004c.onViewClicked(view);
        }
    }

    /* loaded from: classes.dex */
    public class b extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ ComicDetailActivity f2005c;

        public b(ComicDetailActivity_ViewBinding comicDetailActivity_ViewBinding, ComicDetailActivity comicDetailActivity) {
            this.f2005c = comicDetailActivity;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f2005c.onViewClicked(view);
        }
    }

    /* loaded from: classes.dex */
    public class c extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ ComicDetailActivity f2006c;

        public c(ComicDetailActivity_ViewBinding comicDetailActivity_ViewBinding, ComicDetailActivity comicDetailActivity) {
            this.f2006c = comicDetailActivity;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f2006c.onViewClicked(view);
        }
    }

    /* loaded from: classes.dex */
    public class d extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ ComicDetailActivity f2007c;

        public d(ComicDetailActivity_ViewBinding comicDetailActivity_ViewBinding, ComicDetailActivity comicDetailActivity) {
            this.f2007c = comicDetailActivity;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f2007c.onViewClicked(view);
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
        this.f2000c = b2;
        b2.setOnClickListener(new a(this, comicDetailActivity));
        comicDetailActivity.tvState = (TextView) d.c.c.c(view, R.id.tv_state, e.a("UQsGCA9THkcFNUAGDA9E"), TextView.class);
        comicDetailActivity.tvUpdate = (TextView) d.c.c.c(view, R.id.tv_update, e.a("UQsGCA9THkcFM0QDGR4GTA=="), TextView.class);
        View b3 = d.c.c.b(view, R.id.tv_reverse, e.a("UQsGCA9THkcFNFERHRgQDhBCAgoPU1RWBw5bA1hNDAVhCwYTKB9QUBgDUEA="));
        comicDetailActivity.tvReverse = (TextView) d.c.c.a(b3, R.id.tv_reverse, e.a("UQsGCA9THkcFNFERHRgQDhA="), TextView.class);
        this.f2001d = b3;
        b3.setOnClickListener(new b(this, comicDetailActivity));
        comicDetailActivity.rvList = (RecyclerView) d.c.c.c(view, R.id.rv_list, e.a("UQsGCA9THkEFKl0UDE0="), RecyclerView.class);
        comicDetailActivity.rvLike = (RecyclerView) d.c.c.c(view, R.id.rv_like, e.a("UQsGCA9THkEFKl0MHU0="), RecyclerView.class);
        comicDetailActivity.ivCover = (ImageView) d.c.c.c(view, R.id.iv_cover, e.a("UQsGCA9THloFJVsRHRhE"), ImageView.class);
        comicDetailActivity.tvTitle = (TextView) d.c.c.c(view, R.id.tv_title, e.a("UQsGCA9THkcFMl0TFA9E"), TextView.class);
        comicDetailActivity.rvList2 = (RecyclerView) d.c.c.c(view, R.id.rv_list2, e.a("UQsGCA9THkEFKl0UDFhE"), RecyclerView.class);
        comicDetailActivity.llExpend = (LinearLayout) d.c.c.c(view, R.id.ll_expend, e.a("UQsGCA9THl8fI0wXHQQHTA=="), LinearLayout.class);
        View b4 = d.c.c.b(view, R.id.tv_expend, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
        this.f2002e = b4;
        b4.setOnClickListener(new c(this, comicDetailActivity));
        View b5 = d.c.c.b(view, R.id.tv_expend2, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
        this.f2003f = b5;
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
            comicDetailActivity.rvLike = null;
            comicDetailActivity.ivCover = null;
            comicDetailActivity.tvTitle = null;
            comicDetailActivity.rvList2 = null;
            comicDetailActivity.llExpend = null;
            this.f2000c.setOnClickListener(null);
            this.f2000c = null;
            this.f2001d.setOnClickListener(null);
            this.f2001d = null;
            this.f2002e.setOnClickListener(null);
            this.f2002e = null;
            this.f2003f.setOnClickListener(null);
            this.f2003f = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
