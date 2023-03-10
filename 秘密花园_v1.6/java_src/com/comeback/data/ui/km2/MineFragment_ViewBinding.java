package com.comeback.data.ui.km2;

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

    /* renamed from: c  reason: collision with root package name */
    public View f1421c;

    /* renamed from: d  reason: collision with root package name */
    public View f1422d;

    /* loaded from: classes.dex */
    public class a extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ MineFragment f1423c;

        public a(MineFragment_ViewBinding mineFragment_ViewBinding, MineFragment mineFragment) {
            this.f1423c = mineFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f1423c.onViewClicked(view);
        }
    }

    /* loaded from: classes.dex */
    public class b extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ MineFragment f1424c;

        public b(MineFragment_ViewBinding mineFragment_ViewBinding, MineFragment mineFragment) {
            this.f1424c = mineFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f1424c.onViewClicked(view);
        }
    }

    @UiThread
    public MineFragment_ViewBinding(MineFragment mineFragment, View view) {
        this.b = mineFragment;
        mineFragment.radioGroupHost = (RadioGroup) c.c(view, R.id.radio_group_host, e.a("UQsGCA9THkESAl0IPxgMHkcqDBcfVA=="), RadioGroup.class);
        mineFragment.radioGroupPlay = (RadioGroup) c.c(view, R.id.radio_group_play, e.a("UQsGCA9THkESAl0IPxgMHkcyDwUSVA=="), RadioGroup.class);
        View b2 = c.b(view, R.id.ll_collect, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
        this.f1421c = b2;
        b2.setOnClickListener(new a(this, mineFragment));
        View b3 = c.b(view, R.id.ll_star, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
        this.f1422d = b3;
        b3.setOnClickListener(new b(this, mineFragment));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        MineFragment mineFragment = this.b;
        if (mineFragment != null) {
            this.b = null;
            mineFragment.radioGroupHost = null;
            mineFragment.radioGroupPlay = null;
            this.f1421c.setOnClickListener(null);
            this.f1421c = null;
            this.f1422d.setOnClickListener(null);
            this.f1422d = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
