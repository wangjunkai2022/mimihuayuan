package com.comeback.data.ui.cucumber.fragment;

import android.view.View;
import android.widget.RadioGroup;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.comeback.secret.garden.R;
import d.c.c;
import f.e.a.e;
/* loaded from: classes.dex */
public class MineFragment_ViewBinding implements Unbinder {
    public MineFragment b;

    @UiThread
    public MineFragment_ViewBinding(MineFragment mineFragment, View view) {
        this.b = mineFragment;
        mineFragment.radioGroupHost = (RadioGroup) c.c(view, R.id.radio_group_host, e.a("UQsGCA9THkESAl0IPxgMHkcqDBcfVA=="), RadioGroup.class);
        mineFragment.radioGroupPlay = (RadioGroup) c.c(view, R.id.radio_group_play, e.a("UQsGCA9THkESAl0IPxgMHkcyDwUSVA=="), RadioGroup.class);
        mineFragment.radioGroupImage = (RadioGroup) c.c(view, R.id.radio_group_image, e.a("UQsGCA9THkESAl0IPxgMHkcrDgUMFh4="), RadioGroup.class);
        mineFragment.radioGroupHead = (RadioGroup) c.c(view, R.id.radio_group_head, e.a("UQsGCA9THkESAl0IPxgMHkcqBgUPVA=="), RadioGroup.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        MineFragment mineFragment = this.b;
        if (mineFragment != null) {
            this.b = null;
            mineFragment.radioGroupHost = null;
            mineFragment.radioGroupPlay = null;
            mineFragment.radioGroupImage = null;
            mineFragment.radioGroupHead = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
