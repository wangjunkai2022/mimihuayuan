package com.comeback.data.ui.bale;

import android.content.Context;
import android.graphics.Color;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.widget.EditText;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import butterknife.BindView;
import com.comeback.data.base.BaseActivity;
import com.comeback.data.ui.bale.SearchActivity;
import com.comeback.data.ui.bale.adapter.HotSearchAdapter;
import com.comeback.data.ui.bale.bean.HotSearch;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.d.c;
import m.j;

/* loaded from: classes.dex */
public class SearchActivity extends BaseActivity {
    @BindView
    public EditText etSearch;
    @BindView
    public RecyclerView rvHot;

    /* loaded from: classes.dex */
    public class a implements TextWatcher {
        public a(SearchActivity searchActivity) {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
        }
    }

    /* loaded from: classes.dex */
    public class b extends j<HotSearch> {
        public b() {
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
            searchActivity.rvHot.setLayoutManager(new StaggeredGridLayoutManager(9, 0));
            HotSearchAdapter hotSearchAdapter = new HotSearchAdapter(searchActivity, new c(searchActivity));
            searchActivity.rvHot.setAdapter(hotSearchAdapter);
            hotSearchAdapter.a(hotSearch.getResult().getAll());
        }
    }

    public static void m(Context context) {
        f.b.a.a.a.u(context, SearchActivity.class);
    }

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_bale_search;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        j(Color.parseColor(e.a("FFNVVVNBCg==")));
        h(Color.parseColor(e.a("FFNVVVNBCg==")));
        this.etSearch.addTextChangedListener(new a(this));
        this.etSearch.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: f.e.a.j.d.b
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i2, KeyEvent keyEvent) {
                return SearchActivity.this.l(textView, i2, keyEvent);
            }
        });
        k(f.e.a.j.d.e.b.a().c(), new b());
    }

    public /* synthetic */ boolean l(TextView textView, int i2, KeyEvent keyEvent) {
        if (i2 == 3) {
            String obj = this.etSearch.getText().toString();
            if (TextUtils.isEmpty(obj)) {
                return true;
            }
            SearchResultActivity.t(this, obj);
            return true;
        }
        return false;
    }
}
