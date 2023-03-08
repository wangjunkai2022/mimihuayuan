package com.comeback.data.ui.iqiyi;

import android.content.Context;
import android.graphics.Color;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import c.a.a.b.g.h;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshActivity;
import com.comeback.data.ui.iqiyi.SearchActivity;
import com.comeback.data.ui.iqiyi.adapter.VideoAdapter;
import com.comeback.data.ui.iqiyi.bean.VideoInfo;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.t.e.d;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class SearchActivity extends BaseRefreshActivity {
    @BindView
    public EditText etSearch;
    @BindView
    public ImageView ivCancel;

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
            SearchActivity.this.ivCancel.setVisibility(TextUtils.isEmpty(charSequence.toString().trim()) ? 8 : 0);
        }
    }

    /* loaded from: classes.dex */
    public class b extends BaseRefreshActivity.a<ArrayList<VideoInfo>> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f1206f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(int i2) {
            super();
            this.f1206f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            ArrayList arrayList = (ArrayList) obj;
            if (this.f1206f == 1) {
                SearchActivity.this.f114c.c();
            }
            SearchActivity.this.f114c.a(arrayList);
        }
    }

    public static void u(Context context) {
        f.b.a.a.a.u(context, SearchActivity.class);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_iqiyi_search;
    }

    @Override // com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public void e() {
        j(Color.parseColor(e.a("FFIFVVlBDQ==")));
        h(Color.parseColor(e.a("FFIFVVlBDQ==")));
        super.e();
        this.etSearch.addTextChangedListener(new a());
        this.etSearch.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: f.e.a.j.t.b
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i2, KeyEvent keyEvent) {
                return SearchActivity.this.t(textView, i2, keyEvent);
            }
        });
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
        k(d.a().c(f.e.a.j.t.e.b.f(i2, this.etSearch.getText().toString().trim())), new b(i2));
    }

    public /* synthetic */ boolean t(TextView textView, int i2, KeyEvent keyEvent) {
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
