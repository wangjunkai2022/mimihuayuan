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
    public VideoFragment f2143c;

    /* renamed from: d  reason: collision with root package name */
    public View f2144d;

    /* renamed from: e  reason: collision with root package name */
    public View f2145e;

    /* renamed from: f  reason: collision with root package name */
    public View f2146f;

    /* renamed from: g  reason: collision with root package name */
    public View f2147g;

    /* loaded from: classes.dex */
    public class a extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ VideoFragment f2148c;

        public a(VideoFragment_ViewBinding videoFragment_ViewBinding, VideoFragment videoFragment) {
            this.f2148c = videoFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f2148c.onViewClicked(view);
        }
    }

    /* loaded from: classes.dex */
    public class b extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ VideoFragment f2149c;

        public b(VideoFragment_ViewBinding videoFragment_ViewBinding, VideoFragment videoFragment) {
            this.f2149c = videoFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f2149c.onViewClicked(view);
        }
    }

    /* loaded from: classes.dex */
    public class c extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ VideoFragment f2150c;

        public c(VideoFragment_ViewBinding videoFragment_ViewBinding, VideoFragment videoFragment) {
            this.f2150c = videoFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f2150c.onViewClicked(view);
        }
    }

    /* loaded from: classes.dex */
    public class d extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ VideoFragment f2151c;

        public d(VideoFragment_ViewBinding videoFragment_ViewBinding, VideoFragment videoFragment) {
            this.f2151c = videoFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f2151c.onViewClicked(view);
        }
    }

    @UiThread
    public VideoFragment_ViewBinding(VideoFragment videoFragment, View view) {
        super(videoFragment, view);
        this.f2143c = videoFragment;
        videoFragment.rvCategories = (RecyclerView) d.c.c.c(view, R.id.rv_categories, e.a("UQsGCA9THkEFJVUTHQ0MGV4HEEM="), RecyclerView.class);
        View b2 = d.c.c.b(view, R.id.tv_search, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
        this.f2144d = b2;
        b2.setOnClickListener(new a(this, videoFragment));
        View b3 = d.c.c.b(view, R.id.iv_history, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
        this.f2145e = b3;
        b3.setOnClickListener(new b(this, videoFragment));
        View b4 = d.c.c.b(view, R.id.iv_collect, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
        this.f2146f = b4;
        b4.setOnClickListener(new c(this, videoFragment));
        View b5 = d.c.c.b(view, R.id.iv_screen, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
        this.f2147g = b5;
        b5.setOnClickListener(new d(this, videoFragment));
    }

    @Override // com.comeback.data.base.BaseRefreshFragment_ViewBinding, butterknife.Unbinder
    public void a() {
        VideoFragment videoFragment = this.f2143c;
        if (videoFragment != null) {
            this.f2143c = null;
            videoFragment.rvCategories = null;
            this.f2144d.setOnClickListener(null);
            this.f2144d = null;
            this.f2145e.setOnClickListener(null);
            this.f2145e = null;
            this.f2146f.setOnClickListener(null);
            this.f2146f = null;
            this.f2147g.setOnClickListener(null);
            this.f2147g = null;
            super.a();
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
