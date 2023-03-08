package com.comeback.data.ui.isiyu;

import android.content.Context;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import butterknife.BindView;
import c.a.a.b.g.h;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshActivity;
import com.comeback.data.ui.isiyu.SearchActivity;
import com.comeback.data.ui.isiyu.adapter.TagAdapter;
import com.comeback.data.ui.isiyu.adapter.VideoAdapter;
import com.comeback.data.ui.isiyu.bean.SearchTag;
import com.comeback.data.ui.isiyu.bean.SpecialDetail;
import com.comeback.secret.garden.R;
import f.e.a.j.u.d;
import f.e.a.j.u.e.e;
import f.j.a.a.f.i;
import java.util.ArrayList;
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
    public class b extends j<ArrayList<SearchTag>> {
        public b() {
        }

        @Override // m.j
        public void d() {
        }

        @Override // m.j
        public void e(Throwable th) {
        }

        @Override // m.j
        public void f(ArrayList<SearchTag> arrayList) {
            TagAdapter tagAdapter = new TagAdapter(SearchActivity.this, new d(this));
            SearchActivity.this.rvRecommend.setLayoutManager(new StaggeredGridLayoutManager(3, 0));
            SearchActivity.this.rvRecommend.setAdapter(tagAdapter);
            tagAdapter.b(arrayList, tagAdapter.b.size());
        }
    }

    /* loaded from: classes.dex */
    public class c extends BaseRefreshActivity.a<SpecialDetail> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f1246f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(int i2) {
            super();
            this.f1246f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            SpecialDetail specialDetail = (SpecialDetail) obj;
            if (this.f1246f == 1) {
                SearchActivity.this.f114c.c();
            }
            SearchActivity.this.f114c.a(specialDetail.getData());
        }
    }

    public static void w(Context context) {
        f.b.a.a.a.u(context, SearchActivity.class);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_isiyu_search;
    }

    @Override // com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public void e() {
        this.refreshLayout.a0 = new f.j.a.a.l.d() { // from class: f.e.a.j.u.b
            @Override // f.j.a.a.l.d
            public final void b(i iVar) {
                SearchActivity.this.t(iVar);
            }
        };
        this.refreshLayout.v(new f.j.a.a.l.b() { // from class: f.e.a.j.u.c
            @Override // f.j.a.a.l.b
            public final void d(i iVar) {
                SearchActivity.this.u(iVar);
            }
        });
        this.mRvList.setLayoutManager(m());
        VideoAdapter videoAdapter = new VideoAdapter(this);
        this.f114c = videoAdapter;
        this.mRvList.setAdapter(videoAdapter);
        this.etSearch.addTextChangedListener(new a());
        this.etSearch.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: f.e.a.j.u.a
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i2, KeyEvent keyEvent) {
                return SearchActivity.this.v(textView, i2, keyEvent);
            }
        });
        k(e.a().g(), new b());
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public BaseAbstractAdapter l() {
        return new VideoAdapter(this);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public RecyclerView.LayoutManager m() {
        return new GridLayoutManager(this, 2);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public void p(int i2) {
        h.c0(this);
        String trim = this.etSearch.getText().toString().trim();
        if (TextUtils.isEmpty(trim)) {
            return;
        }
        f.e.a.j.u.e.b a2 = e.a();
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put(f.b.a.a.a.G(this.b, hashMap, f.e.a.e.a("RwMEAQ=="), "WwsODR8="), f.e.a.e.a("BlQ="));
        hashMap.put(f.e.a.e.a("QwsXCA4="), trim);
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
