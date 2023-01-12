package com.comeback.data.ui.mimei;

import android.content.Context;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.widget.EditText;
import android.widget.TextView;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.comeback.data.base.BaseActivity;
import com.comeback.data.ui.mimei.SearchActivity;
import com.comeback.data.ui.mimei.adapter.TagAdapter;
import com.comeback.data.ui.mimei.bean.HotSearch;
import com.comeback.secret.garden.R;
import f.e.a.j.f0.j.f;
import m.j;

/* loaded from: classes.dex */
public class SearchActivity extends BaseActivity {
    @BindView
    public EditText etSearch;
    @BindView
    public RecyclerView rvTags;

    /* loaded from: classes.dex */
    public class a extends j<HotSearch> {
        public a() {
        }

        @Override // m.j
        public void d() {
        }

        @Override // m.j
        public void e(Throwable th) {
        }

        @Override // m.j
        public void f(HotSearch hotSearch) {
            SearchActivity searchActivity = SearchActivity.this;
            searchActivity.rvTags.setLayoutManager(new GridLayoutManager(searchActivity, 4));
            TagAdapter tagAdapter = new TagAdapter(SearchActivity.this, new TagAdapter.a() { // from class: f.e.a.j.f0.b
                @Override // com.comeback.data.ui.mimei.adapter.TagAdapter.a
                public final void a(String str) {
                    SearchActivity.a.this.j(str);
                }
            });
            SearchActivity.this.rvTags.setAdapter(tagAdapter);
            tagAdapter.a(hotSearch.getSuccess().getHot());
        }

        public /* synthetic */ void j(String str) {
            SearchResultActivity.n(SearchActivity.this, str);
        }
    }

    public static void m(Context context) {
        f.b.a.a.a.u(context, SearchActivity.class);
    }

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_mimei_search;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        j(-1);
        this.etSearch.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: f.e.a.j.f0.c
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i2, KeyEvent keyEvent) {
                return SearchActivity.this.l(textView, i2, keyEvent);
            }
        });
        k(f.a().c(), new a());
    }

    public /* synthetic */ boolean l(TextView textView, int i2, KeyEvent keyEvent) {
        if (i2 == 3) {
            String obj = this.etSearch.getText().toString();
            if (TextUtils.isEmpty(obj)) {
                return false;
            }
            SearchResultActivity.n(this, obj);
            return true;
        }
        return false;
    }
}
