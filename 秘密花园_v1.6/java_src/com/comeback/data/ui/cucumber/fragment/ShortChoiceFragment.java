package com.comeback.data.ui.cucumber.fragment;

import android.view.View;
import android.widget.TextView;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindColor;
import butterknife.BindView;
import butterknife.OnClick;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.ui.cucumber.adapter.ShortGirdAdapter;
import com.comeback.data.ui.cucumber.bean.VideoList;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.g.h.c;
/* loaded from: classes.dex */
public class ShortChoiceFragment extends BaseRefreshFragment {
    @BindColor
    public int colorThird;
    @BindColor
    public int colorWhite;

    /* renamed from: i  reason: collision with root package name */
    public String f517i = e.a("YwsOAQ==");
    @BindView
    public TextView tvNew;
    @BindView
    public TextView tvPlay;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshFragment.a<VideoList> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f518f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i2) {
            super();
            this.f518f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            VideoList videoList = (VideoList) obj;
            if (this.f518f == 1) {
                ShortChoiceFragment.this.f117h.c();
            }
            ShortChoiceFragment.this.f117h.a(videoList.getData());
        }
    }

    @Override // com.comeback.data.base.BaseRefreshFragment, com.comeback.data.base.BaseFragment
    public int b() {
        return R.layout.fragment_cucumber_short_choice;
    }

    @Override // com.comeback.data.base.BaseRefreshFragment, com.comeback.data.base.BaseFragment
    public void f() {
        super.f();
        this.refreshLayout.w(R.color.bg_transparent100, R.color.basic_third_text);
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public BaseAbstractAdapter h() {
        return new ShortGirdAdapter(getContext());
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public RecyclerView.LayoutManager i() {
        return new GridLayoutManager(getContext(), 2);
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public void l(int i2) {
        g(c.a().d(this.f517i, i2), new a(i2));
    }

    @OnClick
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.tv_new) {
            this.tvNew.setTextColor(this.colorWhite);
            this.tvPlay.setTextColor(this.colorThird);
            this.f517i = e.a("YwsOAQ==");
        } else if (id == R.id.tv_play) {
            this.tvNew.setTextColor(this.colorThird);
            this.tvPlay.setTextColor(this.colorWhite);
            this.f517i = e.a("Zw4CHQ==");
        }
        this.refreshLayout.h();
    }
}
