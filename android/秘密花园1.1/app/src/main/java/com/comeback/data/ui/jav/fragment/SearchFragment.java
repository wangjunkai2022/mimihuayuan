package com.comeback.data.ui.jav.fragment;

import android.text.TextUtils;
import android.view.KeyEvent;
import android.widget.EditText;
import android.widget.TextView;
import butterknife.BindView;
import c.a.a.b.g.h;
import com.comeback.data.base.BaseFragment;
import com.comeback.data.ui.jav.SearchResultActivity;
import com.comeback.data.ui.jav.fragment.SearchFragment;
import com.comeback.secret.garden.R;
import f.e.a.e;

/* loaded from: classes.dex */
public class SearchFragment extends BaseFragment {
    @BindView
    public EditText etSearch;

    @Override // com.comeback.data.base.BaseFragment
    public int b() {
        return R.layout.fragment_jav_search;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void e() {
    }

    @Override // com.comeback.data.base.BaseFragment
    public void f() {
        this.etSearch.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: f.e.a.j.u.d.a
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i2, KeyEvent keyEvent) {
                return SearchFragment.this.h(textView, i2, keyEvent);
            }
        });
    }

    public /* synthetic */ boolean h(TextView textView, int i2, KeyEvent keyEvent) {
        if (i2 == 3) {
            String obj = this.etSearch.getText().toString();
            if (TextUtils.isEmpty(obj)) {
                h.n1(e.a("3vX/jebG3J7kgozqkOnej4/YhM3R"));
                return false;
            } else if (obj.length() < 2) {
                h.n1(e.a("3vX/jebG3J7kgLPukO3QjofzUYHr+Nye5IGYwQ=="));
                return false;
            } else {
                SearchResultActivity.n(getContext(), obj);
                return true;
            }
        }
        return false;
    }
}
