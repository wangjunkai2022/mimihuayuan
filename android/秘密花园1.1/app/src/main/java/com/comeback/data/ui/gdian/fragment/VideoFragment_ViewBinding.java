package com.comeback.data.ui.gdian.fragment;

import android.view.View;
import androidx.annotation.UiThread;
import com.comeback.data.base.BaseViewPagerFragment_ViewBinding;
import com.comeback.data.ui.gdian.SearchActivity;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class VideoFragment_ViewBinding extends BaseViewPagerFragment_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    public VideoFragment f838c;

    /* renamed from: d  reason: collision with root package name */
    public View f839d;

    /* loaded from: classes.dex */
    public class a extends b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ VideoFragment f840c;

        public a(VideoFragment_ViewBinding videoFragment_ViewBinding, VideoFragment videoFragment) {
            this.f840c = videoFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            SearchActivity.m(this.f840c.getContext());
        }
    }

    @UiThread
    public VideoFragment_ViewBinding(VideoFragment videoFragment, View view) {
        super(videoFragment, view);
        this.f838c = videoFragment;
        View b = c.b(view, R.id.iv_search, e.a("WgcXDAQXGRQcCHcLEQkITA=="));
        this.f839d = b;
        b.setOnClickListener(new a(this, videoFragment));
    }

    @Override // com.comeback.data.base.BaseViewPagerFragment_ViewBinding, butterknife.Unbinder
    public void a() {
        if (this.f838c != null) {
            this.f838c = null;
            this.f839d.setOnClickListener(null);
            this.f839d = null;
            super.a();
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
