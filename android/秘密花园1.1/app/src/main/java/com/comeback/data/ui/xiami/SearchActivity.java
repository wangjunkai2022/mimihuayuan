package com.comeback.data.ui.xiami;

import android.content.Context;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import c.a.a.b.g.h;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshActivity;
import com.comeback.data.ui.xiami.SearchActivity;
import com.comeback.data.ui.xiami.adapter.HotWordAdapter;
import com.comeback.data.ui.xiami.adapter.VideoAdapter;
import com.comeback.data.ui.xiami.bean.VideoList;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.j.a.a.f.i;
import f.j.a.a.l.d;
import java.util.HashMap;
import m.j;

/* loaded from: classes.dex */
public class SearchActivity extends BaseRefreshActivity {
    @BindView
    public EditText etSearch;
    @BindView
    public ImageView ivCancel;
    @BindView
    public RecyclerView rvRecommend;

    /* loaded from: classes.dex */
    public class a implements TextWatcher {
        public a() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
            boolean isEmpty = TextUtils.isEmpty(charSequence.toString().trim());
            SearchActivity.this.ivCancel.setVisibility(isEmpty ? 8 : 0);
            SearchActivity.this.rvRecommend.setVisibility(isEmpty ? 0 : 8);
            SearchActivity.this.refreshLayout.setVisibility(isEmpty ? 8 : 0);
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
            HotWordAdapter hotWordAdapter = new HotWordAdapter(SearchActivity.this);
            SearchActivity searchActivity = SearchActivity.this;
            searchActivity.rvRecommend.setLayoutManager(new LinearLayoutManager(searchActivity));
            SearchActivity.this.rvRecommend.setAdapter(hotWordAdapter);
            hotWordAdapter.a(videoList.getData());
        }
    }

    /* loaded from: classes.dex */
    public class c extends BaseRefreshActivity.a<VideoList> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f2140f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(int i2) {
            super();
            this.f2140f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            VideoList videoList = (VideoList) obj;
            if (this.f2140f == 1) {
                SearchActivity.this.f114c.c();
            }
            SearchActivity.this.f114c.a(videoList.getData());
        }
    }

    public static void w(Context context) {
        f.b.a.a.a.u(context, SearchActivity.class);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_xm_search;
    }

    @Override // com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public void e() {
        j(-1);
        this.refreshLayout.a0 = new d() { // from class: f.e.a.j.p0.b
            @Override // f.j.a.a.l.d
            public final void b(i iVar) {
                SearchActivity.this.t(iVar);
            }
        };
        this.refreshLayout.v(new f.j.a.a.l.b() { // from class: f.e.a.j.p0.d
            @Override // f.j.a.a.l.b
            public final void d(i iVar) {
                SearchActivity.this.u(iVar);
            }
        });
        this.mRvList.setLayoutManager(new LinearLayoutManager(this));
        VideoAdapter videoAdapter = new VideoAdapter(this);
        this.f114c = videoAdapter;
        this.mRvList.setAdapter(videoAdapter);
        this.etSearch.addTextChangedListener(new a());
        this.etSearch.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: f.e.a.j.p0.c
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i2, KeyEvent keyEvent) {
                return SearchActivity.this.v(textView, i2, keyEvent);
            }
        });
        k(f.e.a.j.p0.f.d.a().c(), new b());
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public BaseAbstractAdapter l() {
        return new VideoAdapter(this);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public RecyclerView.LayoutManager m() {
        return new LinearLayoutManager(this);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public void p(int i2) {
        h.c0(this);
        String trim = this.etSearch.getText().toString().trim();
        if (TextUtils.isEmpty(trim)) {
            return;
        }
        f.e.a.j.p0.f.b a2 = f.e.a.j.p0.f.d.a();
        HashMap hashMap = new HashMap();
        hashMap.put(f.b.a.a.a.G(this.b, hashMap, e.a("RwMEASUc"), "VAoCCgUWVQ=="), e.a("QAcBOwQVX1oQD1UL"));
        hashMap.put(e.a("XAcaMwQBXQ=="), trim);
        k(a2.a(hashMap), new c(i2));
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
        if (i2 == 3) {
            if (TextUtils.isEmpty(this.etSearch.getText().toString())) {
                return true;
            }
            this.refreshLayout.h();
            return true;
        }
        return false;
    }
}
