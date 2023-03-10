package com.comeback.data.ui.avbobo.fragment;

import android.view.View;
import android.widget.RadioGroup;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.comeback.secret.garden.R;
import d.c.c;
import f.e.a.e;
/* loaded from: classes.dex */
public class MeFragment_ViewBinding implements Unbinder {
    public MeFragment b;

    @UiThread
    public MeFragment_ViewBinding(MeFragment meFragment, View view) {
        this.b = meFragment;
        meFragment.radioGroupHost = (RadioGroup) c.c(view, R.id.radio_group_host, e.a("UQsGCA9THkESAl0IPxgMHkcqDBcfVA=="), RadioGroup.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        MeFragment meFragment = this.b;
        if (meFragment != null) {
            this.b = null;
            meFragment.radioGroupHost = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
