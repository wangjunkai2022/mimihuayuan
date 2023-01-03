package com.comeback.data.ui.slf.fragment;

import android.view.View;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import com.comeback.data.base.BaseRefreshFragment_ViewBinding;
import com.comeback.secret.garden.R;
import f.e.a.e;

/* loaded from: classes.dex */
public class VideoFragment_ViewBinding extends BaseRefreshFragment_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    public VideoFragment f2068c;

    /* renamed from: d  reason: collision with root package name */
    public View f2069d;

    /* renamed from: e  reason: collision with root package name */
    public View f2070e;

    /* renamed from: f  reason: collision with root package name */
    public View f2071f;

    /* renamed from: g  reason: collision with root package name */
    public View f2072g;

    /* loaded from: classes.dex */
    public class a extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ VideoFragment f2073c;

        public a(VideoFragment_ViewBinding videoFragment_ViewBinding, VideoFragment videoFragment) {
            this.f2073c = videoFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f2073c.onViewClicked(view);
        }
    }

    /* loaded from: classes.dex */
    public class b extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ VideoFragment f2074c;

        public b(VideoFragment_ViewBinding videoFragment_ViewBinding, VideoFragment videoFragment) {
            this.f2074c = videoFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f2074c.onViewClicked(view);
        }
    }

    /* loaded from: classes.dex */
    public class c extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ VideoFragment f2075c;

        public c(VideoFragment_ViewBinding videoFragment_ViewBinding, VideoFragment videoFragment) {
            this.f2075c = videoFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f2075c.onViewClicked(view);
        }
    }

    /* loaded from: classes.dex */
    public class d extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ VideoFragment f2076c;

        public d(VideoFragment_ViewBinding videoFragment_ViewBinding, VideoFragment videoFragment) {
            this.f2076c = videoFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f2076c.onViewClicked(view);
        }
    }

    @UiThread
    public VideoFragment_ViewBinding(VideoFragment videoFragment, View view) {
        super(videoFragment, view);
        this.f2068c = videoFragment;
        videoFragment.rvCategories = (RecyclerView) d.c.c.c(view, R.id.rv_categories, e.a("UQsGCA9THkEFJVUTHQ0MGV4HEEM="), RecyclerView.class);
        View b2 = d.c.c.b(view, R.id.tv_search, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
        this.f2069d = b2;
        b2.setOnClickListener(new a(this, videoFragment));
        View b3 = d.c.c.b(view, R.id.iv_history, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
        this.f2070e = b3;
        b3.setOnClickListener(new b(this, videoFragment));
        View b4 = d.c.c.b(view, R.id.iv_collect, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
        this.f2071f = b4;
        b4.setOnClickListener(new c(this, videoFragment));
        View b5 = d.c.c.b(view, R.id.iv_screen, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
        this.f2072g = b5;
        b5.setOnClickListener(new d(this, videoFragment));
    }

    @Override // com.comeback.data.base.BaseRefreshFragment_ViewBinding, butterknife.Unbinder
    public void a() {
        VideoFragment videoFragment = this.f2068c;
        if (videoFragment != null) {
            this.f2068c = null;
            videoFragment.rvCategories = null;
            this.f2069d.setOnClickListener(null);
            this.f2069d = null;
            this.f2070e.setOnClickListener(null);
            this.f2070e = null;
            this.f2071f.setOnClickListener(null);
            this.f2071f = null;
            this.f2072g.setOnClickListener(null);
            this.f2072g = null;
            super.a();
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
