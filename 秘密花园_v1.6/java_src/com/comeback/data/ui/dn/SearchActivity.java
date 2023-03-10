package com.comeback.data.ui.dn;

import android.content.Context;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import butterknife.BindView;
import c.a.a.b.g.h;
import com.comeback.data.base.BaseActivity;
import com.comeback.data.base.BaseFragment;
import com.comeback.data.base.BaseViewPagerAdapter;
import com.comeback.data.ui.dn.SearchActivity;
import com.comeback.data.ui.dn.fragment.SearchUserFragment;
import com.comeback.data.ui.dn.fragment.SearchVideoFragment;
import com.comeback.data.widget.CustomViewPager;
import com.comeback.secret.garden.R;
import f.e.a.e;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class SearchActivity extends BaseActivity {
    public ArrayList<BaseFragment> b;
    @BindView
    public EditText mEtSearch;
    @BindView
    public ImageView mIvCancel;
    @BindView
    public CustomViewPager mViewPager;

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
            SearchActivity.this.mIvCancel.setVisibility(charSequence.toString().length() > 0 ? 0 : 8);
        }
    }

    public static void n(Context context) {
        f.b.a.a.a.u(context, SearchActivity.class);
    }

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_dn_search;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        i();
        this.mEtSearch.addTextChangedListener(new a());
        this.mEtSearch.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: f.e.a.j.h.a
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i2, KeyEvent keyEvent) {
                return SearchActivity.this.l(textView, i2, keyEvent);
            }
        });
        ArrayList<BaseFragment> arrayList = new ArrayList<>();
        this.b = arrayList;
        arrayList.add(new SearchVideoFragment());
        this.b.add(new SearchUserFragment());
        ArrayList<BaseFragment> arrayList2 = this.b;
        this.mViewPager.setOffscreenPageLimit(arrayList2.size() - 1 <= 8 ? arrayList2.size() - 1 : 8);
        this.mViewPager.setAdapter(new BaseViewPagerAdapter(getSupportFragmentManager(), new String[]{e.a("38Xljcni"), e.a("0PbLguPE")}, arrayList2));
    }

    public /* synthetic */ boolean l(TextView textView, int i2, KeyEvent keyEvent) {
        if (i2 == 3) {
            m();
            return true;
        }
        return true;
    }

    public void m() {
        h.c0(this);
        String trim = this.mEtSearch.getText().toString().trim();
        if (TextUtils.isEmpty(trim)) {
            h.p1(e.a("0fL/g9/R3LbAj6DJkMXuj4/vi+fWl4GJlM+O"));
            return;
        }
        SearchVideoFragment searchVideoFragment = (SearchVideoFragment) this.b.get(0);
        searchVideoFragment.f572i = trim;
        searchVideoFragment.refreshLayout.h();
        SearchUserFragment searchUserFragment = (SearchUserFragment) this.b.get(1);
        searchUserFragment.f570i = trim;
        searchUserFragment.refreshLayout.h();
    }
}
