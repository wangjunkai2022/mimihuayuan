package com.comeback.data.ui.slf;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import com.comeback.secret.garden.R;
import f.e.a.e;

/* loaded from: classes.dex */
public class ComicReadActivity_ViewBinding implements Unbinder {
    public ComicReadActivity b;

    /* renamed from: c  reason: collision with root package name */
    public View f2013c;

    /* renamed from: d  reason: collision with root package name */
    public View f2014d;

    /* renamed from: e  reason: collision with root package name */
    public View f2015e;

    /* renamed from: f  reason: collision with root package name */
    public View f2016f;

    /* loaded from: classes.dex */
    public class a extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ ComicReadActivity f2017c;

        public a(ComicReadActivity_ViewBinding comicReadActivity_ViewBinding, ComicReadActivity comicReadActivity) {
            this.f2017c = comicReadActivity;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f2017c.onViewClicked(view);
        }
    }

    /* loaded from: classes.dex */
    public class b extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ ComicReadActivity f2018c;

        public b(ComicReadActivity_ViewBinding comicReadActivity_ViewBinding, ComicReadActivity comicReadActivity) {
            this.f2018c = comicReadActivity;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f2018c.onViewClicked(view);
        }
    }

    /* loaded from: classes.dex */
    public class c extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ ComicReadActivity f2019c;

        public c(ComicReadActivity_ViewBinding comicReadActivity_ViewBinding, ComicReadActivity comicReadActivity) {
            this.f2019c = comicReadActivity;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f2019c.onViewClicked(view);
        }
    }

    /* loaded from: classes.dex */
    public class d extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ ComicReadActivity f2020c;

        public d(ComicReadActivity_ViewBinding comicReadActivity_ViewBinding, ComicReadActivity comicReadActivity) {
            this.f2020c = comicReadActivity;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f2020c.onViewClicked(view);
        }
    }

    @UiThread
    public ComicReadActivity_ViewBinding(ComicReadActivity comicReadActivity, View view) {
        this.b = comicReadActivity;
        comicReadActivity.rvList = (RecyclerView) d.c.c.c(view, R.id.rv_list, e.a("UQsGCA9THkEFKl0UDE0="), RecyclerView.class);
        comicReadActivity.tvPage = (TextView) d.c.c.c(view, R.id.tv_page, e.a("UQsGCA9THkcFNlUAHU0="), TextView.class);
        comicReadActivity.tvTitle = (TextView) d.c.c.c(view, R.id.tv_title, e.a("UQsGCA9THkcFMl0TFA9E"), TextView.class);
        View b2 = d.c.c.b(view, R.id.tv_pre, e.a("UQsGCA9THkcFNkYCX0oCBVNCDgEfG1ZXU0FbCS4DBhx0DgoHABZdFA=="));
        TextView textView = (TextView) d.c.c.a(b2, R.id.tv_pre, e.a("UQsGCA9THkcFNkYCXw=="), TextView.class);
        this.f2013c = b2;
        b2.setOnClickListener(new a(this, comicReadActivity));
        View b3 = d.c.c.b(view, R.id.tv_collect, e.a("UQsGCA9THkcFJVsLFA8AHxBCAgoPU1RWBw5bA1hNDAVhCwYTKB9QUBgDUEA="));
        TextView textView2 = (TextView) d.c.c.a(b3, R.id.tv_collect, e.a("UQsGCA9THkcFJVsLFA8AHxA="), TextView.class);
        this.f2014d = b3;
        b3.setOnClickListener(new b(this, comicReadActivity));
        View b4 = d.c.c.b(view, R.id.tv_folder, e.a("UQsGCA9THkcFIFsLHA8RTBcDDQBLHlxHGwlQR18FDT1eBxQnBxpaWBYCEw=="));
        TextView textView3 = (TextView) d.c.c.a(b4, R.id.tv_folder, e.a("UQsGCA9THkcFIFsLHA8RTA=="), TextView.class);
        this.f2015e = b4;
        b4.setOnClickListener(new c(this, comicReadActivity));
        View b5 = d.c.c.b(view, R.id.tv_next, e.a("UQsGCA9THkcFKFEfDE1DClkGQwkOB1FcF0YTCBY8Cg5AIQ8NCBhcV1Q="));
        TextView textView4 = (TextView) d.c.c.a(b5, R.id.tv_next, e.a("UQsGCA9THkcFKFEfDE0="), TextView.class);
        this.f2016f = b5;
        b5.setOnClickListener(new d(this, comicReadActivity));
        comicReadActivity.llBottom = (LinearLayout) d.c.c.c(view, R.id.ll_bottom, e.a("UQsGCA9THl8fJFsTDAUOTA=="), LinearLayout.class);
        comicReadActivity.tvTitle2 = (TextView) d.c.c.c(view, R.id.tv_title2, e.a("UQsGCA9THkcFMl0TFA9RTA=="), TextView.class);
        comicReadActivity.tvState = (TextView) d.c.c.c(view, R.id.tv_state, e.a("UQsGCA9THkcFNUAGDA9E"), TextView.class);
        comicReadActivity.rvChapter = (RecyclerView) d.c.c.c(view, R.id.rv_chapter, e.a("UQsGCA9THkEFJVwGCB4GGRA="), RecyclerView.class);
        comicReadActivity.llFolder = (LinearLayout) d.c.c.c(view, R.id.ll_folder, e.a("UQsGCA9THl8fIFsLHA8RTA=="), LinearLayout.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        ComicReadActivity comicReadActivity = this.b;
        if (comicReadActivity != null) {
            this.b = null;
            comicReadActivity.rvList = null;
            comicReadActivity.tvPage = null;
            comicReadActivity.tvTitle = null;
            comicReadActivity.llBottom = null;
            comicReadActivity.tvTitle2 = null;
            comicReadActivity.tvState = null;
            comicReadActivity.rvChapter = null;
            comicReadActivity.llFolder = null;
            this.f2013c.setOnClickListener(null);
            this.f2013c = null;
            this.f2014d.setOnClickListener(null);
            this.f2014d = null;
            this.f2015e.setOnClickListener(null);
            this.f2015e = null;
            this.f2016f.setOnClickListener(null);
            this.f2016f = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
