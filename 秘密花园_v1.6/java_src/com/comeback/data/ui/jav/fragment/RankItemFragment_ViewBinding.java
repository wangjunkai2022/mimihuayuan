package com.comeback.data.ui.jav.fragment;

import android.view.View;
import android.widget.RadioGroup;
import androidx.annotation.UiThread;
import com.comeback.data.base.BaseRefreshFragment_ViewBinding;
import com.comeback.secret.garden.R;
import d.c.c;
import f.e.a.e;
/* loaded from: classes.dex */
public class RankItemFragment_ViewBinding extends BaseRefreshFragment_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    public RankItemFragment f1311c;

    @UiThread
    public RankItemFragment_ViewBinding(RankItemFragment rankItemFragment, View view) {
        super(rankItemFragment, view);
        this.f1311c = rankItemFragment;
        rankItemFragment.radioGroup = (RadioGroup) c.c(view, R.id.radio_group, e.a("UQsGCA9THkESAl0IPxgMHkdF"), RadioGroup.class);
    }

    @Override // com.comeback.data.base.BaseRefreshFragment_ViewBinding, butterknife.Unbinder
    public void a() {
        RankItemFragment rankItemFragment = this.f1311c;
        if (rankItemFragment != null) {
            this.f1311c = null;
            rankItemFragment.radioGroup = null;
            super.a();
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
