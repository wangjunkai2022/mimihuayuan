package com.comeback.data.ui.fulao2.fragment;

import android.view.View;
import androidx.annotation.UiThread;
import com.comeback.data.base.BaseRefreshFragment_ViewBinding;
import com.comeback.secret.garden.R;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class VideoListFragment_ViewBinding extends BaseRefreshFragment_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    public VideoListFragment f794c;

    /* renamed from: d  reason: collision with root package name */
    public View f795d;

    /* renamed from: e  reason: collision with root package name */
    public View f796e;

    /* loaded from: classes.dex */
    public class a extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ VideoListFragment f797c;

        public a(VideoListFragment_ViewBinding videoListFragment_ViewBinding, VideoListFragment videoListFragment) {
            this.f797c = videoListFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f797c.onViewClicked(view);
        }
    }

    /* loaded from: classes.dex */
    public class b extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ VideoListFragment f798c;

        public b(VideoListFragment_ViewBinding videoListFragment_ViewBinding, VideoListFragment videoListFragment) {
            this.f798c = videoListFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f798c.onViewClicked(view);
        }
    }

    @UiThread
    public VideoListFragment_ViewBinding(VideoListFragment videoListFragment, View view) {
        super(videoListFragment, view);
        this.f794c = videoListFragment;
        View b2 = c.b(view, R.id.tv_search, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
        this.f795d = b2;
        b2.setOnClickListener(new a(this, videoListFragment));
        View b3 = c.b(view, R.id.tv_screen, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
        this.f796e = b3;
        b3.setOnClickListener(new b(this, videoListFragment));
    }

    @Override // com.comeback.data.base.BaseRefreshFragment_ViewBinding, butterknife.Unbinder
    public void a() {
        if (this.f794c != null) {
            this.f794c = null;
            this.f795d.setOnClickListener(null);
            this.f795d = null;
            this.f796e.setOnClickListener(null);
            this.f796e = null;
            super.a();
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
