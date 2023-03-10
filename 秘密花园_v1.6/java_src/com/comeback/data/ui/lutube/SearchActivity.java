package com.comeback.data.ui.lutube;

import android.content.Context;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.widget.EditText;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.comeback.data.base.BaseActivity;
import com.comeback.data.ui.lutube.SearchActivity;
import com.comeback.data.ui.lutube.adapter.SearchHintAdapter;
import com.comeback.data.ui.lutube.bean.VideoList;
import com.comeback.secret.garden.R;
import f.e.a.j.b0.k.d;
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
        return R.layout.activity_lutube_search;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        j(-1);
        this.etSearch.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: f.e.a.j.b0.c
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i2, KeyEvent keyEvent) {
                return SearchActivity.this.m(textView, i2, keyEvent);
            }
        });
        e<VideoList> a2 = d.a().a(f.e.a.e.a("Ww0NAw=="), f.e.a.k.b.u);
        e<VideoList> a3 = d.a().a(f.e.a.e.a("RAoMFh8="), f.e.a.k.b.u);
        a aVar = new a();
        b bVar = new b();
        k(a2, aVar);
        k(a3, bVar);
    }

    public /* synthetic */ boolean m(TextView textView, int i2, KeyEvent keyEvent) {
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
