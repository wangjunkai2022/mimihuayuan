package com.comeback.data.ui.gdian;

import android.content.Context;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.widget.EditText;
import android.widget.TextView;
import butterknife.BindView;
import com.comeback.data.base.BaseActivity;
import com.comeback.data.ui.gdian.SearchActivity;
import com.comeback.secret.garden.R;
import f.b.a.a.a;
/* loaded from: classes.dex */
public class SearchActivity extends BaseActivity {
    @BindView
    public EditText etSearch;

    public static void m(Context context) {
        a.u(context, SearchActivity.class);
    }

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_gdian_search;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        j(-1);
        this.etSearch.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: f.e.a.j.m.b
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i2, KeyEvent keyEvent) {
                return SearchActivity.this.l(textView, i2, keyEvent);
            }
        });
    }

    public /* synthetic */ boolean l(TextView textView, int i2, KeyEvent keyEvent) {
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
