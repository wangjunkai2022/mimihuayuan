package com.comeback.data.ui.cm.fragment;

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
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        MineFragment mineFragment = this.b;
        if (mineFragment != null) {
            this.b = null;
            mineFragment.radioGroupHost = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
