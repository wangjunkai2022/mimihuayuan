package com.comeback.data.ui.fruitPie;

import android.content.Context;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.widget.EditText;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import butterknife.BindView;
import c.a.a.b.g.h;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshActivity;
import com.comeback.data.ui.fruitPie.SearchActivity;
import com.comeback.data.ui.fruitPie.adapter.TagAdapter;
import com.comeback.data.ui.fruitPie.bean.DiscoverBean;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.k.b.b;
import java.util.HashMap;
/* loaded from: classes.dex */
public class SearchActivity extends BaseRefreshActivity {
    @BindView
    public EditText etSearch;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshActivity.a<DiscoverBean> {
        public a() {
            super();
        }

        @Override // m.j
        public void f(Object obj) {
            SearchActivity.this.refreshLayout.A = false;
            SearchActivity.this.refreshLayout.t(false);
            SearchActivity.this.f114c.a(((DiscoverBean) obj).getData().getTagString());
        }
    }

    public static void t(Context context) {
        f.b.a.a.a.u(context, SearchActivity.class);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_pie_search;
    }

    @Override // com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public void e() {
        j(-1);
        super.e();
        this.etSearch.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: f.e.a.j.k.a
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i2, KeyEvent keyEvent) {
                return SearchActivity.this.s(textView, i2, keyEvent);
            }
        });
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public BaseAbstractAdapter l() {
        return new TagAdapter(this);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public RecyclerView.LayoutManager m() {
        return new StaggeredGridLayoutManager(6, 1);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public void p(int i2) {
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put(e.a("QhEGFj8cUlYd"), "");
        hashMap.put(e.a("Xw8="), e.a("B1JbSQoDUA=="));
        hashMap.put(e.a("UwcVDQgWZloX"), "");
        k(b.a().g(hashMap), new a());
    }

    public /* synthetic */ boolean s(TextView textView, int i2, KeyEvent keyEvent) {
        if (i2 == 3) {
            String obj = this.etSearch.getText().toString();
            if (TextUtils.isEmpty(obj)) {
                return false;
            }
            SearchResultActivity.n(this, obj);
            h.p1(obj);
            return true;
        }
        return false;
    }
}
