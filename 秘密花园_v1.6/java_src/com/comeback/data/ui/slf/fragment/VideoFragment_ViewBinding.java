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
    public VideoFragment f2147c;

    /* renamed from: d  reason: collision with root package name */
    public View f2148d;

    /* renamed from: e  reason: collision with root package name */
    public View f2149e;

    /* renamed from: f  reason: collision with root package name */
    public View f2150f;

    /* renamed from: g  reason: collision with root package name */
    public View f2151g;

    /* loaded from: classes.dex */
    public class a extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ VideoFragment f2152c;

        public a(VideoFragment_ViewBinding videoFragment_ViewBinding, VideoFragment videoFragment) {
            this.f2152c = videoFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f2152c.onViewClicked(view);
        }
    }

    /* loaded from: classes.dex */
    public class b extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ VideoFragment f2153c;

        public b(VideoFragment_ViewBinding videoFragment_ViewBinding, VideoFragment videoFragment) {
            this.f2153c = videoFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f2153c.onViewClicked(view);
        }
    }

    /* loaded from: classes.dex */
    public class c extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ VideoFragment f2154c;

        public c(VideoFragment_ViewBinding videoFragment_ViewBinding, VideoFragment videoFragment) {
            this.f2154c = videoFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f2154c.onViewClicked(view);
        }
    }

    /* loaded from: classes.dex */
    public class d extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ VideoFragment f2155c;

        public d(VideoFragment_ViewBinding videoFragment_ViewBinding, VideoFragment videoFragment) {
            this.f2155c = videoFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f2155c.onViewClicked(view);
        }
    }

    @UiThread
    public VideoFragment_ViewBinding(VideoFragment videoFragment, View view) {
        super(videoFragment, view);
        this.f2147c = videoFragment;
        videoFragment.rvCategories = (RecyclerView) d.c.c.c(view, R.id.rv_categories, e.a("UQsGCA9THkEFJVUTHQ0MGV4HEEM="), RecyclerView.class);
        View b2 = d.c.c.b(view, R.id.tv_search, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
        this.f2148d = b2;
        b2.setOnClickListener(new a(this, videoFragment));
        View b3 = d.c.c.b(view, R.id.iv_history, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
        this.f2149e = b3;
        b3.setOnClickListener(new b(this, videoFragment));
        View b4 = d.c.c.b(view, R.id.iv_collect, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
        this.f2150f = b4;
        b4.setOnClickListener(new c(this, videoFragment));
        View b5 = d.c.c.b(view, R.id.iv_screen, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
        this.f2151g = b5;
        b5.setOnClickListener(new d(this, videoFragment));
    }

    @Override // com.comeback.data.base.BaseRefreshFragment_ViewBinding, butterknife.Unbinder
    public void a() {
        VideoFragment videoFragment = this.f2147c;
        if (videoFragment != null) {
            this.f2147c = null;
            videoFragment.rvCategories = null;
            this.f2148d.setOnClickListener(null);
            this.f2148d = null;
            this.f2149e.setOnClickListener(null);
            this.f2149e = null;
            this.f2150f.setOnClickListener(null);
            this.f2150f = null;
            this.f2151g.setOnClickListener(null);
            this.f2151g = null;
            super.a();
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
