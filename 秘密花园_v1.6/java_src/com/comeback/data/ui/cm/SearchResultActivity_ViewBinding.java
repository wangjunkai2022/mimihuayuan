package com.comeback.data.ui.cm;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.UiThread;
import com.comeback.data.base.BaseRefreshActivity_ViewBinding;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;
/* loaded from: classes.dex */
public class SearchResultActivity_ViewBinding extends BaseRefreshActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    public SearchResultActivity f340c;

    /* renamed from: d  reason: collision with root package name */
    public View f341d;

    /* loaded from: classes.dex */
    public class a extends b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ SearchResultActivity f342c;

        public a(SearchResultActivity_ViewBinding searchResultActivity_ViewBinding, SearchResultActivity searchResultActivity) {
            this.f342c = searchResultActivity;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f342c.finish();
        }
    }

    @UiThread
    public SearchResultActivity_ViewBinding(SearchResultActivity searchResultActivity, View view) {
        super(searchResultActivity, view);
        this.f340c = searchResultActivity;
        searchResultActivity.tvTitle = (TextView) c.c(view, R.id.tv_title, e.a("UQsGCA9THkcFMl0TFA9E"), TextView.class);
        View b = c.b(view, R.id.iv_back, e.a("WgcXDAQXGRQcCHcLEQkITA=="));
        this.f341d = b;
        b.setOnClickListener(new a(this, searchResultActivity));
    }

    @Override // com.comeback.data.base.BaseRefreshActivity_ViewBinding, butterknife.Unbinder
    public void a() {
        SearchResultActivity searchResultActivity = this.f340c;
        if (searchResultActivity != null) {
            this.f340c = null;
            searchResultActivity.tvTitle = null;
            this.f341d.setOnClickListener(null);
            this.f341d = null;
            super.a();
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
