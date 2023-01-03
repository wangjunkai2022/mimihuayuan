package com.comeback.data.ui.tv91;

import android.content.Context;
import android.graphics.Color;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.widget.EditText;
import android.widget.TextView;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import c.a.a.b.g.h;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshActivity;
import com.comeback.data.ui.tv91.SearchActivity;
import com.comeback.data.ui.tv91.adapter.VideoList2Adapter;
import com.comeback.data.ui.tv91.bean.TiktopParam;
import com.comeback.data.ui.tv91.bean.VideoList;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.j.a.a.f.i;
import f.j.a.a.l.b;
import f.j.a.a.l.d;

/* loaded from: classes.dex */
public class SearchActivity extends BaseRefreshActivity {

    /* renamed from: d  reason: collision with root package name */
    public String f2096d;
    @BindView
    public EditText etSearch;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshActivity.a<VideoList> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f2097f;

        /* JADX INFO: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i2) {
            super();
            this.f2097f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            VideoList videoList = (VideoList) obj;
            if (this.f2097f == 1) {
                SearchActivity.this.f114c.c();
            }
            SearchActivity.this.f114c.a(videoList.getMessage().getMovies());
        }
    }

    public static void w(Context context) {
        f.b.a.a.a.u(context, SearchActivity.class);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_tv91_search;
    }

    @Override // com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public void e() {
        j(Color.parseColor(e.a("FFMmVS5CfA==")));
        this.refreshLayout.a0 = new d() { // from class: f.e.a.j.n0.d
            @Override // f.j.a.a.l.d
            public final void b(i iVar) {
                SearchActivity.this.t(iVar);
            }
        };
        this.refreshLayout.v(new b() { // from class: f.e.a.j.n0.c
            @Override // f.j.a.a.l.b
            public final void d(i iVar) {
                SearchActivity.this.u(iVar);
            }
        });
        this.mRvList.setLayoutManager(m());
        VideoList2Adapter videoList2Adapter = new VideoList2Adapter(this);
        this.f114c = videoList2Adapter;
        this.mRvList.setAdapter(videoList2Adapter);
        this.etSearch.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: f.e.a.j.n0.b
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i2, KeyEvent keyEvent) {
                return SearchActivity.this.v(textView, i2, keyEvent);
            }
        });
        this.refreshLayout.w(R.color.bg_transparent100, R.color.basic_third_text);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public BaseAbstractAdapter l() {
        return new VideoList2Adapter(this);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public RecyclerView.LayoutManager m() {
        return new GridLayoutManager(this, 2);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public void p(int i2) {
        if (TextUtils.isEmpty(this.f2096d)) {
            this.refreshLayout.j(true);
            this.refreshLayout.k();
            return;
        }
        h.c0(this);
        k(f.e.a.j.n0.i.b.a().b(TiktopParam.buildSearchParams(i2, this.f2096d)), new a(i2));
    }

    public /* synthetic */ void t(i iVar) {
        this.b = 0;
        int i2 = 0 + 1;
        this.b = i2;
        p(i2);
    }

    public /* synthetic */ void u(i iVar) {
        int i2 = this.b + 1;
        this.b = i2;
        p(i2);
    }

    public /* synthetic */ boolean v(TextView textView, int i2, KeyEvent keyEvent) {
        if (i2 != 3) {
            return false;
        }
        String obj = this.etSearch.getText().toString();
        this.f2096d = obj;
        if (TextUtils.isEmpty(obj)) {
            return true;
        }
        this.refreshLayout.h();
        return true;
    }
}
