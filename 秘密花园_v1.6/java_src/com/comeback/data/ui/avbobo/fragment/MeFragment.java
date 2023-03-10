package com.comeback.data.ui.avbobo.fragment;

import android.widget.RadioGroup;
import butterknife.BindView;
import c.a.a.b.g.h;
import com.comeback.data.base.BaseFragment;
import com.comeback.data.ui.avbobo.fragment.MeFragment;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.b.f.c;
import f.e.a.k.j;
/* loaded from: classes.dex */
public class MeFragment extends BaseFragment {

    /* renamed from: i  reason: collision with root package name */
    public static final String f203i = e.a("VhQBCwkcZlscFUA=");

    /* renamed from: g  reason: collision with root package name */
    public int f204g;

    /* renamed from: h  reason: collision with root package name */
    public RadioGroup.OnCheckedChangeListener f205h = c.a;
    @BindView
    public RadioGroup radioGroupHost;

    public static /* synthetic */ void h(RadioGroup radioGroup, int i2) {
        switch (i2) {
            case R.id.radio_host1 /* 2131296684 */:
                j.b().g(f203i, 0);
                h.p1(e.a("0urkgubR37vjg774l9bvgrDvhfLbm4aoluORBggaQ4yj/YXx4w=="));
                return;
            case R.id.radio_host2 /* 2131296685 */:
                j.b().g(f203i, 1);
                h.p1(e.a("0urkgubR37vjg774l9bvgrDvhfLbm4aoluORBggaQ4yj/YXx4w=="));
                return;
            case R.id.radio_host3 /* 2131296686 */:
                j.b().g(f203i, 2);
                h.p1(e.a("0urkgubR37vjg774l9bvgrDvhfLbm4aoluORBggaQ4yj/YXx4w=="));
                return;
            default:
                return;
        }
    }

    @Override // com.comeback.data.base.BaseFragment
    public int b() {
        return R.layout.fragment_avbobo_me;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void e() {
        this.radioGroupHost.postDelayed(new Runnable() { // from class: f.e.a.j.b.f.b
            @Override // java.lang.Runnable
            public final void run() {
                MeFragment.this.i();
            }
        }, 200L);
    }

    @Override // com.comeback.data.base.BaseFragment
    public void f() {
        int c2 = j.b().c(f203i);
        this.f204g = c2;
        if (c2 == -1) {
            this.f204g = 0;
        }
    }

    public /* synthetic */ void i() {
        RadioGroup radioGroup = this.radioGroupHost;
        int i2 = this.f204g;
        radioGroup.check(i2 == 0 ? R.id.radio_host1 : i2 == 1 ? R.id.radio_host2 : R.id.radio_host3);
        this.radioGroupHost.setOnCheckedChangeListener(this.f205h);
    }
}
