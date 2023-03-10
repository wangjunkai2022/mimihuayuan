package com.comeback.data.ui.bale.fragment;

import android.widget.TextView;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import c.a.a.b.g.h;
import com.comeback.data.base.BaseFragment;
import com.comeback.data.ui.bale.adapter.TagAdapter;
import com.comeback.data.ui.bale.adapter.TagTypeAdapter;
import com.comeback.data.ui.bale.bean.Tags;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.d.d.b;
import f.e.a.j.d.d.c;
import java.util.List;
import m.j;
/* loaded from: classes.dex */
public class TagFragment extends BaseFragment {
    @BindView
    public RecyclerView rvTags;
    @BindView
    public RecyclerView rvType;
    @BindView
    public TextView tvSelectCount;

    /* loaded from: classes.dex */
    public class a extends j<Tags> {
        public a() {
        }

        @Override // m.j
        public void d() {
        }

        @Override // m.j
        public void e(Throwable th) {
            h.p1(th.getMessage());
        }

        @Override // m.j
        public void f(Tags tags) {
            TagFragment.h(TagFragment.this, tags);
        }
    }

    public static void h(TagFragment tagFragment, Tags tags) {
        if (tagFragment != null) {
            List<Tags.ResultBean.TagsBean> tags2 = tags.getResult().getTags();
            Tags.ResultBean.TagsBean tagsBean = new Tags.ResultBean.TagsBean();
            tagsBean.setName(e.a("0ufLjejb"));
            tagsBean.setList(tags.getResult().getAllTags());
            tags2.add(0, tagsBean);
            TagAdapter tagAdapter = new TagAdapter(tagFragment.getContext(), new b(tagFragment));
            tagFragment.rvTags.setAdapter(tagAdapter);
            tagFragment.rvTags.setLayoutManager(new GridLayoutManager(tagFragment.getContext(), 2));
            tagFragment.rvType.setLayoutManager(new GridLayoutManager(tagFragment.getContext(), 4));
            TagTypeAdapter tagTypeAdapter = new TagTypeAdapter(tagFragment.getContext(), new c(tagFragment, tagAdapter));
            tagFragment.rvType.setAdapter(tagTypeAdapter);
            tagTypeAdapter.b(tags2, tagTypeAdapter.b.size());
            tagAdapter.a(tags2.get(0).getList());
            return;
        }
        throw null;
    }

    @Override // com.comeback.data.base.BaseFragment
    public int b() {
        return R.layout.fragment_bale_tag;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void e() {
        g(f.e.a.j.d.e.b.a().j(), new a());
    }

    @Override // com.comeback.data.base.BaseFragment
    public void f() {
    }
}
