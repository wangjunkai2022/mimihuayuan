package com.comeback.data.ui.nana.fragment;

import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.comeback.data.base.BaseFragment;
import com.comeback.data.ui.nana.adapter.TagAdapter;
import com.comeback.data.ui.nana.adapter.TypeAdapter;
import com.comeback.data.ui.nana.bean.TagBean;
import com.comeback.data.ui.nana.bean.TypeBean;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.g0.l.c;
import f.e.a.j.g0.m.d;
import m.j;

/* loaded from: classes.dex */
public class ShortTypeFragment extends BaseFragment {
    @BindView
    public RecyclerView rvList;
    @BindView
    public RecyclerView rvTag;

    /* loaded from: classes.dex */
    public class a extends j<TypeBean> {
        public a() {
        }

        @Override // m.j
        public void d() {
        }

        @Override // m.j
        public void e(Throwable th) {
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
        @Override // m.j
        public void f(TypeBean typeBean) {
            ShortTypeFragment shortTypeFragment = ShortTypeFragment.this;
            shortTypeFragment.rvList.setLayoutManager(new GridLayoutManager(shortTypeFragment.getContext(), 3));
            TypeAdapter typeAdapter = new TypeAdapter(shortTypeFragment.getContext(), e.a("RAoMFh8="));
            shortTypeFragment.rvList.setAdapter(typeAdapter);
            typeAdapter.a(typeBean.getResponse().getCategories());
            shortTypeFragment.rvList.setNestedScrollingEnabled(false);
        }
    }

    /* loaded from: classes.dex */
    public class b extends j<TagBean> {
        public b() {
        }

        @Override // m.j
        public void d() {
        }

        @Override // m.j
        public void e(Throwable th) {
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
        @Override // m.j
        public void f(TagBean tagBean) {
            ShortTypeFragment shortTypeFragment = ShortTypeFragment.this;
            shortTypeFragment.rvTag.setLayoutManager(new GridLayoutManager(shortTypeFragment.getContext(), 4));
            TagAdapter tagAdapter = new TagAdapter(shortTypeFragment.getContext(), new c(shortTypeFragment));
            shortTypeFragment.rvTag.setAdapter(tagAdapter);
            tagAdapter.a(tagBean.getResponse().getTags());
            shortTypeFragment.rvTag.setNestedScrollingEnabled(false);
        }
    }

    @Override // com.comeback.data.base.BaseFragment
    public int b() {
        return R.layout.fragment_nana_type_short;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void e() {
        g(f.e.a.j.g0.m.e.a().j(e.a("RAoMFh8="), d.a), new a());
        g(f.e.a.j.g0.m.e.a().i(d.a), new b());
    }

    @Override // com.comeback.data.base.BaseFragment
    public void f() {
    }
}
