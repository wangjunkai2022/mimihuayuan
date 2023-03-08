package com.comeback.data.ui.avbobo.fragment;

import android.text.TextUtils;
import android.view.KeyEvent;
import android.widget.EditText;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.OnClick;
import c.a.a.b.g.h;
import com.comeback.data.base.BaseFragment;
import com.comeback.data.base.BaseViewPagerAdapter;
import com.comeback.data.ui.avbobo.SearchResultActivity;
import com.comeback.data.ui.avbobo.fragment.SearchFragment;
import com.comeback.data.widget.CustomViewPager;
import com.comeback.secret.garden.R;
import com.google.android.material.tabs.TabLayout;
import f.b.a.a.a;
import f.e.a.e;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class SearchFragment extends BaseFragment {
    @BindView
    public TabLayout mTabLayout;
    @BindView
    public CustomViewPager mViewPager;
    @BindView
    public EditText searchInput;

    @Override // com.comeback.data.base.BaseFragment
    public int b() {
        return R.layout.fragment_avbobo_search;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void e() {
    }

    @Override // com.comeback.data.base.BaseFragment
    public void f() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new HotSearchFragment());
        arrayList.add(RankFragment.o(e.a("UwMa")));
        arrayList.add(RankFragment.o(e.a("QAcGDw==")));
        arrayList.add(RankFragment.o(e.a("Wg0NEAM=")));
        a.E(arrayList, 1, this.mViewPager);
        this.mViewPager.setAdapter(new BaseViewPagerAdapter(getChildFragmentManager(), new String[]{e.a("0OHOgvvv"), e.a("0fXGgs3v"), e.a("0vPLgs3v"), e.a("0f7rgs3v")}, arrayList));
        this.mTabLayout.setupWithViewPager(this.mViewPager);
        this.searchInput.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: f.e.a.j.b.f.d
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i2, KeyEvent keyEvent) {
                return SearchFragment.this.h(textView, i2, keyEvent);
            }
        });
    }

    public /* synthetic */ boolean h(TextView textView, int i2, KeyEvent keyEvent) {
        if (i2 == 3) {
            search();
            return true;
        }
        return false;
    }

    @OnClick
    public void search() {
        String obj = this.searchInput.getText().toString();
        if (TextUtils.isEmpty(obj)) {
            h.n1(e.a("0fL/g9/R3LbAj6DJkMXuj4/vi+fWl4GJlM+O"));
        } else {
            SearchResultActivity.v(getContext(), obj);
        }
    }
}
