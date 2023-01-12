package com.comeback.data.ui.aimeiju;

import android.content.Context;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.widget.EditText;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.comeback.data.base.BaseActivity;
import com.comeback.data.ui.aimeiju.SearchActivity;
import com.comeback.data.ui.aimeiju.adapter.SearchHintAdapter;
import com.comeback.data.ui.aimeiju.bean.VideoList;
import com.comeback.secret.garden.R;
import f.e.a.j.a.f.e;
import f.e.a.j.a.f.f;
import java.util.HashMap;
import m.j;

/* loaded from: classes.dex */
public class SearchActivity extends BaseActivity {
    @BindView
    public EditText etSearch;
    @BindView
    public RecyclerView rvList;

    /* loaded from: classes.dex */
    public class a extends j<VideoList> {
        public a() {
        }

        @Override // m.j
        public void d() {
        }

        @Override // m.j
        public void e(Throwable th) {
        }

        @Override // m.j
        public void f(VideoList videoList) {
            SearchActivity searchActivity = SearchActivity.this;
            searchActivity.rvList.setLayoutManager(new LinearLayoutManager(searchActivity));
            SearchHintAdapter searchHintAdapter = new SearchHintAdapter(SearchActivity.this);
            SearchActivity.this.rvList.setAdapter(searchHintAdapter);
            searchHintAdapter.a(videoList.getData());
            SearchActivity.this.rvList.setNestedScrollingEnabled(false);
        }
    }

    public static void m(Context context) {
        f.b.a.a.a.u(context, SearchActivity.class);
    }

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_aimeiju_search;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        j(-1);
        this.etSearch.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: f.e.a.j.a.c
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i2, KeyEvent keyEvent) {
                return SearchActivity.this.l(textView, i2, keyEvent);
            }
        });
        e a2 = f.a();
        HashMap hashMap = new HashMap();
        hashMap.put(f.b.a.a.a.i("RQoKEBg=", hashMap, f.b.a.a.a.i("BlI=", hashMap, f.e.a.e.a("RAsZAQ=="), "UwcQBw=="), "VAsH"), f.e.a.e.a("Bw=="));
        k(a2.h(hashMap), new a());
    }

    public /* synthetic */ boolean l(TextView textView, int i2, KeyEvent keyEvent) {
        if (i2 == 3) {
            String obj = this.etSearch.getText().toString();
            if (TextUtils.isEmpty(obj)) {
                return false;
            }
            SearchResultActivity.t(this, obj);
            return true;
        }
        return false;
    }
}
