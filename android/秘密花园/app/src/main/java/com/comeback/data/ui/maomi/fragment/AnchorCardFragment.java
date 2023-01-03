package com.comeback.data.ui.maomi.fragment;

import android.os.Bundle;
import android.widget.TextView;
import butterknife.BindView;
import c.a.a.b.g.h;
import com.comeback.data.base.BaseFragment;
import com.comeback.data.ui.maomi.bean.AnchorList;
import com.comeback.data.widget.RatioImageView;
import com.comeback.secret.garden.R;
import f.e.a.e;

/* loaded from: classes.dex */
public class AnchorCardFragment extends BaseFragment {

    /* renamed from: g  reason: collision with root package name */
    public AnchorList.DataBean f1608g;
    @BindView
    public RatioImageView mIvImg;
    @BindView
    public TextView mTvTitle;

    public static AnchorCardFragment h(AnchorList.DataBean dataBean) {
        Bundle bundle = new Bundle();
        bundle.putParcelable(e.a("UwMXBQ=="), dataBean);
        AnchorCardFragment anchorCardFragment = new AnchorCardFragment();
        anchorCardFragment.setArguments(bundle);
        return anchorCardFragment;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void a() {
        if (getArguments() != null) {
            this.f1608g = (AnchorList.DataBean) getArguments().getParcelable(e.a("UwMXBQ=="));
        }
    }

    @Override // com.comeback.data.base.BaseFragment
    public int b() {
        return R.layout.fragment_mm_anchor_card;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void e() {
    }

    @Override // com.comeback.data.base.BaseFragment
    public void f() {
        this.mTvTitle.setText(this.f1608g.getName());
        h.L0(this.f1608g.getAvatar(), this.mIvImg, 6);
    }
}
