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
    public VideoListFragment f1447c;

    /* renamed from: d  reason: collision with root package name */
    public View f1448d;

    /* renamed from: e  reason: collision with root package name */
    public View f1449e;

    /* loaded from: classes.dex */
    public class a extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ VideoListFragment f1450c;

        public a(VideoListFragment_ViewBinding videoListFragment_ViewBinding, VideoListFragment videoListFragment) {
            this.f1450c = videoListFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            SearchActivity.n(this.f1450c.getContext());
        }
    }

    /* loaded from: classes.dex */
    public class b extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ VideoListFragment f1451c;

        public b(VideoListFragment_ViewBinding videoListFragment_ViewBinding, VideoListFragment videoListFragment) {
            this.f1451c = videoListFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            if (this.f1451c != null) {
                h.n1(e.a("0M/4jev6"));
                return;
            }
            throw null;
        }
    }

    @UiThread
    public VideoListFragment_ViewBinding(VideoListFragment videoListFragment, View view) {
        super(videoListFragment, view);
        this.f1447c = videoListFragment;
        View b2 = c.b(view, R.id.tv_search, e.a("WgcXDAQXGRQAA1UVGwJE"));
        this.f1448d = b2;
        b2.setOnClickListener(new a(this, videoListFragment));
        View b3 = c.b(view, R.id.tv_screen, e.a("WgcXDAQXGRQABUYCHQRE"));
        this.f1449e = b3;
        b3.setOnClickListener(new b(this, videoListFragment));
    }

    @Override // com.comeback.data.base.BaseRefreshFragment_ViewBinding, butterknife.Unbinder
    public void a() {
        if (this.f1447c != null) {
            this.f1447c = null;
            this.f1448d.setOnClickListener(null);
            this.f1448d = null;
            this.f1449e.setOnClickListener(null);
            this.f1449e = null;
            super.a();
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
