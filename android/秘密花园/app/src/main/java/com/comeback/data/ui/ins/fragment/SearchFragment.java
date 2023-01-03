package com.comeback.data.ui.ins.fragment;

import android.text.TextUtils;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import butterknife.BindColor;
import butterknife.BindView;
import butterknife.OnClick;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.ui.ins.adapter.ImageAdapter;
import com.comeback.data.ui.ins.adapter.VideoAdapter;
import com.comeback.data.ui.ins.bean.ImageList;
import com.comeback.data.ui.ins.bean.VideoList;
import com.comeback.data.ui.ins.fragment.SearchFragment;
import com.comeback.secret.garden.R;
import f.j.a.a.f.i;
import f.j.a.a.l.d;
import java.util.HashMap;
import m.e;

/* loaded from: classes.dex */
public class SearchFragment extends BaseRefreshFragment {

    /* renamed from: i  reason: collision with root package name */
    public String f1108i;

    /* renamed from: j  reason: collision with root package name */
    public boolean f1109j = true;
    @BindColor
    public int kmColorAccent;
    @BindView
    public EditText searchInput;
    @BindColor
    public int thirdText;
    @BindView
    public TextView tvImage;
    @BindView
    public TextView tvVideo;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshFragment.a<ImageList> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f1110f;

        /* JADX INFO: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i2) {
            super();
            this.f1110f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            ImageList imageList = (ImageList) obj;
            if (this.f1110f == 1) {
                SearchFragment searchFragment = SearchFragment.this;
                searchFragment.f117h = searchFragment.h();
                SearchFragment searchFragment2 = SearchFragment.this;
                searchFragment2.mRvList.setAdapter(searchFragment2.f117h);
                SearchFragment searchFragment3 = SearchFragment.this;
                searchFragment3.mRvList.setLayoutManager(searchFragment3.i());
            }
            SearchFragment.this.f117h.a(imageList.getData().getResultList());
        }
    }

    /* loaded from: classes.dex */
    public class b extends BaseRefreshFragment.a<VideoList> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f1112f;

        /* JADX INFO: 'super' call moved to the top of the method (can break code semantics) */
        public b(int i2) {
            super();
            this.f1112f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            VideoList videoList = (VideoList) obj;
            if (this.f1112f == 1) {
                SearchFragment searchFragment = SearchFragment.this;
                searchFragment.f117h = searchFragment.h();
                SearchFragment searchFragment2 = SearchFragment.this;
                searchFragment2.mRvList.setAdapter(searchFragment2.f117h);
                SearchFragment searchFragment3 = SearchFragment.this;
                searchFragment3.mRvList.setLayoutManager(searchFragment3.i());
            }
            SearchFragment.this.f117h.a(videoList.getData().getResultList());
        }
    }

    @Override // com.comeback.data.base.BaseRefreshFragment, com.comeback.data.base.BaseFragment
    public int b() {
        return R.layout.fragment_ins_search;
    }

    @Override // com.comeback.data.base.BaseRefreshFragment, com.comeback.data.base.BaseFragment
    public void e() {
    }

    @Override // com.comeback.data.base.BaseRefreshFragment, com.comeback.data.base.BaseFragment
    public void f() {
        this.refreshLayout.a0 = new d() { // from class: f.e.a.j.r.d.a
            @Override // f.j.a.a.l.d
            public final void b(i iVar) {
                SearchFragment.this.p(iVar);
            }
        };
        this.refreshLayout.v(new f.j.a.a.l.b() { // from class: f.e.a.j.r.d.b
            @Override // f.j.a.a.l.b
            public final void d(i iVar) {
                SearchFragment.this.q(iVar);
            }
        });
        this.mRvList.setLayoutManager(i());
        BaseAbstractAdapter h2 = h();
        this.f117h = h2;
        this.mRvList.setAdapter(h2);
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public BaseAbstractAdapter h() {
        if (this.f1109j) {
            return new ImageAdapter(getContext());
        }
        return new VideoAdapter(getContext());
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public RecyclerView.LayoutManager i() {
        return new StaggeredGridLayoutManager(2, 1);
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public void l(int i2) {
        if (TextUtils.isEmpty(this.f1108i)) {
            this.refreshLayout.k();
        } else if (this.f1109j) {
            e<ImageList> a2 = f.e.a.j.r.e.b.a().a(o(i2), f.e.a.k.b.u0);
            a aVar = new a(i2);
            a2.d(m.r.a.a()).b(m.l.b.a.a()).c(aVar);
            this.a.b(aVar);
        } else {
            e<VideoList> h2 = f.e.a.j.r.e.b.a().h(o(i2), f.e.a.k.b.u0);
            b bVar = new b(i2);
            h2.d(m.r.a.a()).b(m.l.b.a.a()).c(bVar);
            this.a.b(bVar);
        }
    }

    public final HashMap<String, String> o(int i2) {
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put(f.b.a.a.a.G(!this.f1109j ? 1 : 0, hashMap, f.b.a.a.a.i("VhEA", hashMap, f.b.a.a.a.G(20, hashMap, f.b.a.a.a.G(i2, hashMap, f.e.a.e.a("RwMEAQ=="), "RAsZAQ=="), "RA0REA=="), "QxsTAQ=="), "VA0NEA4dTQ=="), this.f1108i);
        return hashMap;
    }

    @OnClick
    public void onClick(View view) {
        int id = view.getId();
        if (id != R.id.tv_image) {
            if (id == R.id.tv_video && this.f1109j) {
                this.f1109j = false;
                this.tvImage.setTextColor(this.thirdText);
                this.tvVideo.setTextColor(this.kmColorAccent);
                if (!TextUtils.isEmpty(this.f1108i)) {
                    this.refreshLayout.h();
                }
            }
        } else if (!this.f1109j) {
            this.f1109j = true;
            this.tvImage.setTextColor(this.kmColorAccent);
            this.tvVideo.setTextColor(this.thirdText);
            if (!TextUtils.isEmpty(this.f1108i)) {
                this.refreshLayout.h();
            }
        }
    }

    public /* synthetic */ void p(i iVar) {
        this.f116g = 0;
        int i2 = 0 + 1;
        this.f116g = i2;
        l(i2);
    }

    public /* synthetic */ void q(i iVar) {
        int i2 = this.f116g + 1;
        this.f116g = i2;
        l(i2);
    }
}
