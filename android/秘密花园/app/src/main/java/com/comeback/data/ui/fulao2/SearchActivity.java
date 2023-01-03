package com.comeback.data.ui.fulao2;

import android.content.Context;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.widget.EditText;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.comeback.data.base.BaseActivity;
import com.comeback.data.ui.fulao2.SearchActivity;
import com.comeback.data.ui.fulao2.adapter.SearchHintAdapter;
import com.comeback.data.ui.fulao2.bean.VideoList;
import com.comeback.secret.garden.R;
import f.e.a.j.k.h.f;
import m.e;
import m.j;

/* loaded from: classes.dex */
public class SearchActivity extends BaseActivity {
    @BindView
    public EditText etSearch;
    @BindView
    public RecyclerView rvList;
    @BindView
    public RecyclerView rvList2;

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

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
        @Override // m.j
        public void f(VideoList videoList) {
            SearchActivity searchActivity = SearchActivity.this;
            SearchActivity.l(searchActivity, searchActivity.rvList, videoList);
        }
    }

    /* loaded from: classes.dex */
    public class b extends j<VideoList> {
        public b() {
        }

        @Override // m.j
        public void d() {
        }

        @Override // m.j
        public void e(Throwable th) {
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
        @Override // m.j
        public void f(VideoList videoList) {
            SearchActivity searchActivity = SearchActivity.this;
            SearchActivity.l(searchActivity, searchActivity.rvList2, videoList);
        }
    }

    public static void l(SearchActivity searchActivity, RecyclerView recyclerView, VideoList videoList) {
        if (searchActivity != null) {
            recyclerView.setLayoutManager(new LinearLayoutManager(searchActivity));
            SearchHintAdapter searchHintAdapter = new SearchHintAdapter(searchActivity);
            recyclerView.setAdapter(searchHintAdapter);
            searchHintAdapter.a(videoList.getResponse().getVideos());
            recyclerView.setNestedScrollingEnabled(false);
            return;
        }
        throw null;
    }

    public static void n(Context context) {
        f.b.a.a.a.u(context, SearchActivity.class);
    }

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_fulao2_search;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        j(-1);
        this.etSearch.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: f.e.a.j.k.b
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i2, KeyEvent keyEvent) {
                return SearchActivity.this.m(textView, i2, keyEvent);
            }
        });
        e<VideoList> a2 = f.b().a(f.e.a.e.a("QgwACx0WSw=="), String.valueOf(System.currentTimeMillis() / 1000));
        e<VideoList> a3 = f.b().a(f.e.a.e.a("VA0VARk="), String.valueOf(System.currentTimeMillis() / 1000));
        a aVar = new a();
        b bVar = new b();
        k(a2, aVar);
        k(a3, bVar);
    }

    public /* synthetic */ boolean m(TextView textView, int i2, KeyEvent keyEvent) {
        if (i2 != 3) {
            return false;
        }
        String obj = this.etSearch.getText().toString();
        if (TextUtils.isEmpty(obj)) {
            return false;
        }
        SearchResultActivity.n(this, obj);
        return true;
    }
}
