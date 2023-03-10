package com.comeback.data.ui.cucumber;

import android.view.View;
import android.widget.EditText;
import androidx.annotation.UiThread;
import com.comeback.data.base.BaseViewPagerActivity_ViewBinding;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;
/* loaded from: classes.dex */
public class SearchResultActivity_ViewBinding extends BaseViewPagerActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    public SearchResultActivity f433c;

    /* renamed from: d  reason: collision with root package name */
    public View f434d;

    /* loaded from: classes.dex */
    public class a extends b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ SearchResultActivity f435c;

        public a(SearchResultActivity_ViewBinding searchResultActivity_ViewBinding, SearchResultActivity searchResultActivity) {
            this.f435c = searchResultActivity;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f435c.finish();
        }
    }

    @UiThread
    public SearchResultActivity_ViewBinding(SearchResultActivity searchResultActivity, View view) {
        super(searchResultActivity, view);
        this.f433c = searchResultActivity;
        searchResultActivity.etSearch = (EditText) c.c(view, R.id.et_search, e.a("UQsGCA9THlYHNVEGCgkLTA=="), EditText.class);
        View b = c.b(view, R.id.iv_cancel, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
        this.f434d = b;
        b.setOnClickListener(new a(this, searchResultActivity));
    }

    @Override // com.comeback.data.base.BaseViewPagerActivity_ViewBinding, butterknife.Unbinder
    public void a() {
        SearchResultActivity searchResultActivity = this.f433c;
        if (searchResultActivity != null) {
            this.f433c = null;
            searchResultActivity.etSearch = null;
            this.f434d.setOnClickListener(null);
            this.f434d = null;
            super.a();
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
