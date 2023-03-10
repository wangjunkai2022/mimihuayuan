package com.comeback.data.ui.nana;

import android.content.Context;
import android.graphics.Color;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.widget.EditText;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.comeback.data.base.BaseActivity;
import com.comeback.data.ui.nana.SearchActivity;
import com.comeback.data.ui.nana.adapter.SearchHintAdapter;
import com.comeback.data.ui.nana.bean.VideoListBean;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.h0.m.d;
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
    public class a extends j<VideoListBean> {
        public a() {
        }

        @Override // m.j
        public void d() {
        }

        @Override // m.j
        public void e(Throwable th) {
        }

        @Override // m.j
        public void f(VideoListBean videoListBean) {
            SearchActivity searchActivity = SearchActivity.this;
            SearchActivity.l(searchActivity, searchActivity.rvList, videoListBean);
        }
    }

    /* loaded from: classes.dex */
    public class b extends j<VideoListBean> {
        public b() {
        }

        @Override // m.j
        public void d() {
        }

        @Override // m.j
        public void e(Throwable th) {
        }

        @Override // m.j
        public void f(VideoListBean videoListBean) {
            SearchActivity searchActivity = SearchActivity.this;
            SearchActivity.l(searchActivity, searchActivity.rvList2, videoListBean);
        }
    }

    public static void l(SearchActivity searchActivity, RecyclerView recyclerView, VideoListBean videoListBean) {
        if (searchActivity != null) {
            recyclerView.setLayoutManager(new LinearLayoutManager(searchActivity));
            SearchHintAdapter searchHintAdapter = new SearchHintAdapter(searchActivity);
            recyclerView.setAdapter(searchHintAdapter);
            searchHintAdapter.a(videoListBean.getResponse().getVideos());
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
        return R.layout.activity_nana_search;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        j(Color.parseColor(e.a("FFJTVFtDCQ==")));
        this.etSearch.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: f.e.a.j.h0.b
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i2, KeyEvent keyEvent) {
                return SearchActivity.this.m(textView, i2, keyEvent);
            }
        });
        m.e<VideoListBean> a2 = f.e.a.j.h0.m.e.a().a(e.a("Ww0NAw=="), d.a);
        m.e<VideoListBean> a3 = f.e.a.j.h0.m.e.a().a(e.a("RAoMFh8="), d.a);
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
