package com.comeback.data.ui.km;

import android.view.View;
import android.widget.EditText;
import android.widget.RadioGroup;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.comeback.secret.garden.R;
import f.e.a.e;

/* loaded from: classes.dex */
public class MineFragment_ViewBinding implements Unbinder {
    public MineFragment b;

    /* renamed from: c  reason: collision with root package name */
    public View f1288c;

    /* renamed from: d  reason: collision with root package name */
    public View f1289d;

    /* renamed from: e  reason: collision with root package name */
    public View f1290e;

    /* loaded from: classes.dex */
    public class a extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ MineFragment f1291c;

        public a(MineFragment_ViewBinding mineFragment_ViewBinding, MineFragment mineFragment) {
            this.f1291c = mineFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f1291c.onViewClicked(view);
        }
    }

    /* loaded from: classes.dex */
    public class b extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ MineFragment f1292c;

        public b(MineFragment_ViewBinding mineFragment_ViewBinding, MineFragment mineFragment) {
            this.f1292c = mineFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f1292c.onViewClicked(view);
        }
    }

    /* loaded from: classes.dex */
    public class c extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ MineFragment f1293c;

        public c(MineFragment_ViewBinding mineFragment_ViewBinding, MineFragment mineFragment) {
            this.f1293c = mineFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f1293c.onViewClicked(view);
        }
    }

    @UiThread
    public MineFragment_ViewBinding(MineFragment mineFragment, View view) {
        this.b = mineFragment;
        mineFragment.radioGroupHost = (RadioGroup) d.c.c.c(view, R.id.radio_group_host, e.a("UQsGCA9THkESAl0IPxgMHkcqDBcfVA=="), RadioGroup.class);
        mineFragment.etCurrent = (EditText) d.c.c.c(view, R.id.et_current, e.a("UQsGCA9THlYHJUEVCg8NHxA="), EditText.class);
        mineFragment.tvAll = (TextView) d.c.c.c(view, R.id.tv_all, e.a("UQsGCA9THkcFJ1gLXw=="), TextView.class);
        View b2 = d.c.c.b(view, R.id.ll_collect, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
        this.f1288c = b2;
        b2.setOnClickListener(new a(this, mineFragment));
        View b3 = d.c.c.b(view, R.id.ll_star, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
        this.f1289d = b3;
        b3.setOnClickListener(new b(this, mineFragment));
        View b4 = d.c.c.b(view, R.id.tv_change, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
        this.f1290e = b4;
        b4.setOnClickListener(new c(this, mineFragment));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        MineFragment mineFragment = this.b;
        if (mineFragment != null) {
            this.b = null;
            mineFragment.radioGroupHost = null;
            mineFragment.etCurrent = null;
            mineFragment.tvAll = null;
            this.f1288c.setOnClickListener(null);
            this.f1288c = null;
            this.f1289d.setOnClickListener(null);
            this.f1289d = null;
            this.f1290e.setOnClickListener(null);
            this.f1290e = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
