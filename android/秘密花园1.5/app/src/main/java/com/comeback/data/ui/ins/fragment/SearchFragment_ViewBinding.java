package com.comeback.data.ui.ins.fragment;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import androidx.annotation.UiThread;
import androidx.core.content.ContextCompat;
import c.a.a.b.g.h;
import com.comeback.data.base.BaseRefreshFragment_ViewBinding;
import com.comeback.secret.garden.R;
import f.e.a.e;

/* loaded from: classes.dex */
public class SearchFragment_ViewBinding extends BaseRefreshFragment_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    public SearchFragment f1189c;

    /* renamed from: d  reason: collision with root package name */
    public View f1190d;

    /* renamed from: e  reason: collision with root package name */
    public View f1191e;

    /* renamed from: f  reason: collision with root package name */
    public View f1192f;

    /* loaded from: classes.dex */
    public class a extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ SearchFragment f1193c;

        public a(SearchFragment_ViewBinding searchFragment_ViewBinding, SearchFragment searchFragment) {
            this.f1193c = searchFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            SearchFragment searchFragment = this.f1193c;
            String obj = searchFragment.searchInput.getText().toString();
            if (TextUtils.isEmpty(obj)) {
                h.n1(e.a("0fL/g9/R3LbAj6DJkMXuj4/vi+fWl4GJlM+O"));
                return;
            }
            searchFragment.f1183i = obj;
            searchFragment.refreshLayout.h();
        }
    }

    /* loaded from: classes.dex */
    public class b extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ SearchFragment f1194c;

        public b(SearchFragment_ViewBinding searchFragment_ViewBinding, SearchFragment searchFragment) {
            this.f1194c = searchFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f1194c.onClick(view);
        }
    }

    /* loaded from: classes.dex */
    public class c extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ SearchFragment f1195c;

        public c(SearchFragment_ViewBinding searchFragment_ViewBinding, SearchFragment searchFragment) {
            this.f1195c = searchFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f1195c.onClick(view);
        }
    }

    @UiThread
    public SearchFragment_ViewBinding(SearchFragment searchFragment, View view) {
        super(searchFragment, view);
        this.f1189c = searchFragment;
        searchFragment.searchInput = (EditText) d.c.c.c(view, R.id.search_input, e.a("UQsGCA9THkAWB0YEECMNG0IWRA=="), EditText.class);
        View b2 = d.c.c.b(view, R.id.tv_search, e.a("UQsGCA9THkcFNVEGCgkLTBcDDQBLHlxHGwlQR18ZBgpFAQtD"));
        TextView textView = (TextView) d.c.c.a(b2, R.id.tv_search, e.a("UQsGCA9THkcFNVEGCgkLTA=="), TextView.class);
        this.f1190d = b2;
        b2.setOnClickListener(new a(this, searchFragment));
        View b3 = d.c.c.b(view, R.id.tv_image, e.a("UQsGCA9THkcFL1kGHw9ES1YMB0QGFk1bHAIUQBcEIAdeAQhD"));
        searchFragment.tvImage = (TextView) d.c.c.a(b3, R.id.tv_image, e.a("UQsGCA9THkcFL1kGHw9E"), TextView.class);
        this.f1191e = b3;
        b3.setOnClickListener(new b(this, searchFragment));
        View b4 = d.c.c.b(view, R.id.tv_video, e.a("UQsGCA9THkcFMF0DHQVES1YMB0QGFk1bHAIUQBcEIAdeAQhD"));
        searchFragment.tvVideo = (TextView) d.c.c.a(b4, R.id.tv_video, e.a("UQsGCA9THkcFMF0DHQVE"), TextView.class);
        this.f1192f = b4;
        b4.setOnClickListener(new c(this, searchFragment));
        Context context = view.getContext();
        searchFragment.kmColorAccent = ContextCompat.getColor(context, R.color.kmColorAccent);
        searchFragment.thirdText = ContextCompat.getColor(context, R.color.basic_third_text);
    }

    @Override // com.comeback.data.base.BaseRefreshFragment_ViewBinding, butterknife.Unbinder
    public void a() {
        SearchFragment searchFragment = this.f1189c;
        if (searchFragment != null) {
            this.f1189c = null;
            searchFragment.searchInput = null;
            searchFragment.tvImage = null;
            searchFragment.tvVideo = null;
            this.f1190d.setOnClickListener(null);
            this.f1190d = null;
            this.f1191e.setOnClickListener(null);
            this.f1191e = null;
            this.f1192f.setOnClickListener(null);
            this.f1192f = null;
            super.a();
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
