package com.comeback.data.ui.cucumber;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.widget.EditText;
import android.widget.TextView;
import butterknife.BindView;
import c.a.a.b.g.h;
import com.comeback.data.base.BaseFragment;
import com.comeback.data.base.BaseViewPagerActivity;
import com.comeback.data.ui.cucumber.SearchResultActivity;
import com.comeback.data.ui.cucumber.bean.DefaultChannel;
import com.comeback.data.ui.cucumber.fragment.SearchResultFragment;
import com.comeback.secret.garden.R;
import f.e.a.e;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class SearchResultActivity extends BaseViewPagerActivity {
    public DefaultChannel b;

    /* renamed from: c  reason: collision with root package name */
    public ArrayList<BaseFragment> f432c;
    @BindView
    public EditText etSearch;

    public static void o(Context context, DefaultChannel defaultChannel) {
        Intent intent = new Intent(context, SearchResultActivity.class);
        intent.putExtra(e.a("UwcFBR4fTXAbB1oJHQY="), defaultChannel);
        context.startActivity(intent);
    }

    @Override // com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        this.b = (DefaultChannel) intent.getParcelableExtra(e.a("UwcFBR4fTXAbB1oJHQY="));
    }

    @Override // com.comeback.data.base.BaseViewPagerActivity, com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_cucumber_search;
    }

    @Override // com.comeback.data.base.BaseViewPagerActivity, com.comeback.data.base.BaseActivity
    public void e() {
        j(-1);
        super.e();
        this.etSearch.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: f.e.a.j.g.a
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i2, KeyEvent keyEvent) {
                return SearchResultActivity.this.n(textView, i2, keyEvent);
            }
        });
    }

    @Override // com.comeback.data.base.BaseViewPagerActivity
    public ArrayList<BaseFragment> l() {
        ArrayList<BaseFragment> arrayList = new ArrayList<>();
        this.f432c = arrayList;
        arrayList.add(SearchResultFragment.o(0));
        for (int i2 = 0; i2 < this.b.getData().size(); i2++) {
            ArrayList<BaseFragment> arrayList2 = this.f432c;
            int parentModule = this.b.getData().get(i2).getParentModule();
            Bundle bundle = new Bundle();
            bundle.putInt(e.a("Wg0HEQcWcFc="), parentModule);
            SearchResultFragment searchResultFragment = new SearchResultFragment();
            searchResultFragment.setArguments(bundle);
            arrayList2.add(searchResultFragment);
        }
        return this.f432c;
    }

    @Override // com.comeback.data.base.BaseViewPagerActivity
    public String[] m() {
        int size = this.b.getData().size() + 1;
        String[] strArr = new String[size];
        int i2 = 0;
        strArr[0] = e.a("0ufLjejb");
        while (i2 < size - 1) {
            int i3 = i2 + 1;
            strArr[i3] = this.b.getData().get(i2).getName();
            i2 = i3;
        }
        return strArr;
    }

    public boolean n(TextView textView, int i2, KeyEvent keyEvent) {
        if (i2 == 3) {
            String obj = this.etSearch.getText().toString();
            if (!TextUtils.isEmpty(obj)) {
                h.c0(this);
                int currentItem = this.mViewPager.getCurrentItem();
                int i3 = 0;
                while (true) {
                    if (i3 >= this.f432c.size()) {
                        return true;
                    }
                    SearchResultFragment searchResultFragment = (SearchResultFragment) this.f432c.get(i3);
                    boolean z = i3 == currentItem;
                    searchResultFragment.f513j = obj;
                    TextView textView2 = searchResultFragment.tvHint;
                    if (textView2 != null) {
                        textView2.setText(e.a("0dDCgvf637rNg7zXnNfDjbTRi8LqlKO3lN2ngeb2HQ=="));
                        searchResultFragment.tvHint.setVisibility(8);
                        if (z) {
                            searchResultFragment.refreshLayout.h();
                        } else {
                            searchResultFragment.b = false;
                        }
                    }
                    i3++;
                }
            }
        }
        return false;
    }
}
