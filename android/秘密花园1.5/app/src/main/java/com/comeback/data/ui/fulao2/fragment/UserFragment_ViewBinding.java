package com.comeback.data.ui.fulao2.fragment;

import android.view.View;
import android.widget.RadioGroup;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.comeback.secret.garden.R;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class UserFragment_ViewBinding implements Unbinder {
    public UserFragment b;

    @UiThread
    public UserFragment_ViewBinding(UserFragment userFragment, View view) {
        this.b = userFragment;
        userFragment.radioGroup = (RadioGroup) c.c(view, R.id.radio_group, e.a("UQsGCA9THkESAl0IPxgMHkdF"), RadioGroup.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        UserFragment userFragment = this.b;
        if (userFragment != null) {
            this.b = null;
            userFragment.radioGroup = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
