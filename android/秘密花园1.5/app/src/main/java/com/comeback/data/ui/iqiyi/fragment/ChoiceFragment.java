package com.comeback.data.ui.iqiyi.fragment;

import androidx.fragment.app.FragmentManager;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.comeback.data.base.BaseFragment;
import com.comeback.data.base.BaseViewPagerAdapter;
import com.comeback.data.ui.iqiyi.adapter.CategoryAdapter;
import com.comeback.data.ui.iqiyi.bean.Category;
import com.comeback.data.ui.iqiyi.bean.Special;
import com.comeback.data.widget.CustomViewPager;
import com.comeback.secret.garden.R;
import com.google.android.material.tabs.TabLayout;
import f.e.a.j.t.e.d;
import f.i.b.r;
import java.util.ArrayList;
import java.util.Iterator;
import m.j;

/* loaded from: classes.dex */
public class ChoiceFragment extends BaseFragment {
    @BindView
    public RecyclerView rvList;
    @BindView
    public TabLayout tabLayout;
    @BindView
    public CustomViewPager viewPager;

    /* loaded from: classes.dex */
    public class a extends j<ArrayList<Category>> {
        public a() {
        }

        @Override // m.j
        public void d() {
        }

        @Override // m.j
        public void e(Throwable th) {
        }

        @Override // m.j
        public void f(ArrayList<Category> arrayList) {
            ChoiceFragment choiceFragment = ChoiceFragment.this;
            choiceFragment.rvList.setLayoutManager(new GridLayoutManager(choiceFragment.getContext(), 3));
            CategoryAdapter categoryAdapter = new CategoryAdapter(ChoiceFragment.this.getContext());
            ChoiceFragment.this.rvList.setAdapter(categoryAdapter);
            categoryAdapter.b(arrayList, categoryAdapter.b.size());
        }
    }

    /* loaded from: classes.dex */
    public class b extends j<ArrayList<Special>> {
        public b() {
        }

        @Override // m.j
        public void d() {
        }

        @Override // m.j
        public void e(Throwable th) {
        }

        @Override // m.j
        public void f(ArrayList<Special> arrayList) {
            ArrayList<Special> arrayList2 = arrayList;
            ChoiceFragment choiceFragment = ChoiceFragment.this;
            choiceFragment.viewPager.setScrollable(true);
            ArrayList arrayList3 = new ArrayList();
            Iterator<Special> it = arrayList2.iterator();
            while (it.hasNext()) {
                arrayList3.add(SpecialFragment.o(it.next().getId()));
            }
            f.b.a.a.a.E(arrayList3, 1, choiceFragment.viewPager);
            CustomViewPager customViewPager = choiceFragment.viewPager;
            FragmentManager childFragmentManager = choiceFragment.getChildFragmentManager();
            String[] strArr = new String[arrayList2.size()];
            for (int i2 = 0; i2 < arrayList2.size(); i2++) {
                strArr[i2] = arrayList2.get(i2).getName();
            }
            customViewPager.setAdapter(new BaseViewPagerAdapter(childFragmentManager, strArr, arrayList3));
            choiceFragment.tabLayout.setupWithViewPager(choiceFragment.viewPager);
        }
    }

    @Override // com.comeback.data.base.BaseFragment
    public int b() {
        return R.layout.fragment_iqiyi_choice;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void e() {
        g(d.a().e(f.e.a.j.t.e.b.b()), new a());
        g(d.a().d(f.e.a.j.t.e.b.i(new r().toString())), new b());
    }

    @Override // com.comeback.data.base.BaseFragment
    public void f() {
    }
}
