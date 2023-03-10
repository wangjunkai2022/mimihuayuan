package com.comeback.data.ui.cm;

import android.content.Context;
import android.graphics.Color;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.OnClick;
import com.comeback.data.base.BaseActivity;
import com.comeback.data.ui.cm.SearchActivity;
import com.comeback.data.ui.cm.adapter.TagAdapter;
import com.comeback.data.ui.cm.bean.HotSearch;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.e.f.b;
import m.j;
/* loaded from: classes.dex */
public class SearchActivity extends BaseActivity {
    public TagAdapter b;

    /* renamed from: c  reason: collision with root package name */
    public TagAdapter f331c;
    @BindView
    public EditText etSearch;
    @BindView
    public RecyclerView rvHot;
    @BindView
    public RecyclerView rvRecommend;

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
            HotSearch hotSearch2 = hotSearch;
            SearchActivity.this.b.a(hotSearch2.getRescont().get(0).getLists());
            SearchActivity.this.f331c.a(hotSearch2.getRescont().get(1).getLists());
        }
    }

    public static void m(Context context) {
        f.b.a.a.a.u(context, SearchActivity.class);
    }

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_cm_search;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        j(Color.parseColor(e.a("FFNVVVNBCg==")));
        h(Color.parseColor(e.a("FFNVVVNBCg==")));
        this.rvHot.setLayoutManager(new GridLayoutManager(this, 4));
        this.rvRecommend.setLayoutManager(new GridLayoutManager(this, 4));
        TagAdapter tagAdapter = new TagAdapter(this);
        this.b = tagAdapter;
        this.rvHot.setAdapter(tagAdapter);
        TagAdapter tagAdapter2 = new TagAdapter(this);
        this.f331c = tagAdapter2;
        this.rvRecommend.setAdapter(tagAdapter2);
        this.etSearch.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: f.e.a.j.e.b
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i2, KeyEvent keyEvent) {
                return SearchActivity.this.l(textView, i2, keyEvent);
            }
        });
        k(b.a().c(), new a());
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

    @OnClick
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.iv_back) {
            finish();
        } else if (id != R.id.tv_search) {
        } else {
            String obj = this.etSearch.getText().toString();
            if (TextUtils.isEmpty(obj)) {
                return;
            }
            SearchResultActivity.t(this, obj);
        }
    }
}
