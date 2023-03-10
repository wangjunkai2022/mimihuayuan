package com.comeback.data.ui.dn;

import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.comeback.data.widget.CustomViewPager;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;
/* loaded from: classes.dex */
public class SearchActivity_ViewBinding implements Unbinder {
    public SearchActivity b;

    /* renamed from: c  reason: collision with root package name */
    public View f545c;

    /* loaded from: classes.dex */
    public class a extends b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ SearchActivity f546c;

        public a(SearchActivity_ViewBinding searchActivity_ViewBinding, SearchActivity searchActivity) {
            this.f546c = searchActivity;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f546c.mEtSearch.setText("");
        }
    }

    @UiThread
    public SearchActivity_ViewBinding(SearchActivity searchActivity, View view) {
        this.b = searchActivity;
        searchActivity.mEtSearch = (EditText) c.c(view, R.id.et_search, e.a("UQsGCA9THl42EmcCGRgAAxA="), EditText.class);
        View b = c.b(view, R.id.iv_cancel, e.a("UQsGCA9THl46EHcGFgkGBxBCAgoPU1RWBw5bA1hNAAdSAxFD"));
        searchActivity.mIvCancel = (ImageView) c.a(b, R.id.iv_cancel, e.a("UQsGCA9THl46EHcGFgkGBxA="), ImageView.class);
        this.f545c = b;
        b.setOnClickListener(new a(this, searchActivity));
        searchActivity.mViewPager = (CustomViewPager) c.c(view, R.id.viewpager, e.a("UQsGCA9THl4lD1EQKAsEDkVF"), CustomViewPager.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        SearchActivity searchActivity = this.b;
        if (searchActivity != null) {
            this.b = null;
            searchActivity.mEtSearch = null;
            searchActivity.mIvCancel = null;
            searchActivity.mViewPager = null;
            this.f545c.setOnClickListener(null);
            this.f545c = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
