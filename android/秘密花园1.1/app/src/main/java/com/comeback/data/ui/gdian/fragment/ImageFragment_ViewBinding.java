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
public class ImageFragment_ViewBinding extends BaseViewPagerFragment_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    public ImageFragment f822c;

    /* renamed from: d  reason: collision with root package name */
    public View f823d;

    /* loaded from: classes.dex */
    public class a extends b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ ImageFragment f824c;

        public a(ImageFragment_ViewBinding imageFragment_ViewBinding, ImageFragment imageFragment) {
            this.f824c = imageFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            SearchActivity.m(this.f824c.getContext());
        }
    }

    @UiThread
    public ImageFragment_ViewBinding(ImageFragment imageFragment, View view) {
        super(imageFragment, view);
        this.f822c = imageFragment;
        View b = c.b(view, R.id.iv_search, e.a("WgcXDAQXGRQcCHcLEQkITA=="));
        this.f823d = b;
        b.setOnClickListener(new a(this, imageFragment));
    }

    @Override // com.comeback.data.base.BaseViewPagerFragment_ViewBinding, butterknife.Unbinder
    public void a() {
        if (this.f822c != null) {
            this.f822c = null;
            this.f823d.setOnClickListener(null);
            this.f823d = null;
            super.a();
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
