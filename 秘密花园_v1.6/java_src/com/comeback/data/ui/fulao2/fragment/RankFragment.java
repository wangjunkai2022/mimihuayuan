package com.comeback.data.ui.fulao2.fragment;

import android.view.View;
import butterknife.OnClick;
import com.comeback.data.base.BaseFragment;
import com.comeback.data.ui.fulao2.RankActivity;
import com.comeback.secret.garden.R;
/* loaded from: classes.dex */
public class RankFragment extends BaseFragment {
    @Override // com.comeback.data.base.BaseFragment
    public int b() {
        return R.layout.fragment_fulao2_rank;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void e() {
    }

    @Override // com.comeback.data.base.BaseFragment
    public void f() {
    }

    @OnClick
    public void onViewClicked(View view) {
        switch (view.getId()) {
            case R.id.card_view1 /* 2131296345 */:
                RankActivity.m(getContext(), 0);
                return;
            case R.id.card_view2 /* 2131296346 */:
                RankActivity.m(getContext(), 1);
                return;
            case R.id.card_view3 /* 2131296347 */:
                RankActivity.m(getContext(), 2);
                return;
            case R.id.card_view4 /* 2131296348 */:
                RankActivity.m(getContext(), 3);
                return;
            default:
                return;
        }
    }
}
