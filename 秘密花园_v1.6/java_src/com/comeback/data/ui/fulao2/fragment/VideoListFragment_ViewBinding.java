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
    public VideoListFragment f871c;

    /* renamed from: d  reason: collision with root package name */
    public View f872d;

    /* renamed from: e  reason: collision with root package name */
    public View f873e;

    /* loaded from: classes.dex */
    public class a extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ VideoListFragment f874c;

        public a(VideoListFragment_ViewBinding videoListFragment_ViewBinding, VideoListFragment videoListFragment) {
            this.f874c = videoListFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f874c.onViewClicked(view);
        }
    }

    /* loaded from: classes.dex */
    public class b extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ VideoListFragment f875c;

        public b(VideoListFragment_ViewBinding videoListFragment_ViewBinding, VideoListFragment videoListFragment) {
            this.f875c = videoListFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f875c.onViewClicked(view);
        }
    }

    @UiThread
    public VideoListFragment_ViewBinding(VideoListFragment videoListFragment, View view) {
        super(videoListFragment, view);
        this.f871c = videoListFragment;
        View b2 = c.b(view, R.id.tv_search, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
        this.f872d = b2;
        b2.setOnClickListener(new a(this, videoListFragment));
        View b3 = c.b(view, R.id.tv_screen, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
        this.f873e = b3;
        b3.setOnClickListener(new b(this, videoListFragment));
    }

    @Override // com.comeback.data.base.BaseRefreshFragment_ViewBinding, butterknife.Unbinder
    public void a() {
        if (this.f871c != null) {
            this.f871c = null;
            this.f872d.setOnClickListener(null);
            this.f872d = null;
            this.f873e.setOnClickListener(null);
            this.f873e = null;
            super.a();
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
