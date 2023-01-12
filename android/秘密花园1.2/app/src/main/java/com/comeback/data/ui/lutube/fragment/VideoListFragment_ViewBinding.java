package com.comeback.data.ui.lutube.fragment;

import android.view.View;
import androidx.annotation.UiThread;
import c.a.a.b.g.h;
import com.comeback.data.base.BaseRefreshFragment_ViewBinding;
import com.comeback.data.ui.lutube.SearchActivity;
import com.comeback.secret.garden.R;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class VideoListFragment_ViewBinding extends BaseRefreshFragment_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    public VideoListFragment f1522c;

    /* renamed from: d  reason: collision with root package name */
    public View f1523d;

    /* renamed from: e  reason: collision with root package name */
    public View f1524e;

    /* loaded from: classes.dex */
    public class a extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ VideoListFragment f1525c;

        public a(VideoListFragment_ViewBinding videoListFragment_ViewBinding, VideoListFragment videoListFragment) {
            this.f1525c = videoListFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            SearchActivity.n(this.f1525c.getContext());
        }
    }

    /* loaded from: classes.dex */
    public class b extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ VideoListFragment f1526c;

        public b(VideoListFragment_ViewBinding videoListFragment_ViewBinding, VideoListFragment videoListFragment) {
            this.f1526c = videoListFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            if (this.f1526c != null) {
                h.n1(e.a("0M/4jev6"));
                return;
            }
            throw null;
        }
    }

    @UiThread
    public VideoListFragment_ViewBinding(VideoListFragment videoListFragment, View view) {
        super(videoListFragment, view);
        this.f1522c = videoListFragment;
        View b2 = c.b(view, R.id.tv_search, e.a("WgcXDAQXGRQAA1UVGwJE"));
        this.f1523d = b2;
        b2.setOnClickListener(new a(this, videoListFragment));
        View b3 = c.b(view, R.id.tv_screen, e.a("WgcXDAQXGRQABUYCHQRE"));
        this.f1524e = b3;
        b3.setOnClickListener(new b(this, videoListFragment));
    }

    @Override // com.comeback.data.base.BaseRefreshFragment_ViewBinding, butterknife.Unbinder
    public void a() {
        if (this.f1522c != null) {
            this.f1522c = null;
            this.f1523d.setOnClickListener(null);
            this.f1523d = null;
            this.f1524e.setOnClickListener(null);
            this.f1524e = null;
            super.a();
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
