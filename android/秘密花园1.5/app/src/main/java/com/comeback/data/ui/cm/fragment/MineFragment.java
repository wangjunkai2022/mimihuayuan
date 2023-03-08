package com.comeback.data.ui.cm.fragment;

import android.widget.RadioGroup;
import butterknife.BindView;
import c.a.a.b.g.h;
import com.comeback.data.base.BaseFragment;
import com.comeback.data.ui.cm.fragment.MineFragment;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.k.j;
import java.io.PrintStream;

/* loaded from: classes.dex */
public class MineFragment extends BaseFragment {

    /* renamed from: g  reason: collision with root package name */
    public String f382g;

    /* renamed from: h  reason: collision with root package name */
    public int f383h = 0;

    /* renamed from: i  reason: collision with root package name */
    public RadioGroup.OnCheckedChangeListener f384i = new RadioGroup.OnCheckedChangeListener() { // from class: f.e.a.j.e.e.a
        @Override // android.widget.RadioGroup.OnCheckedChangeListener
        public final void onCheckedChanged(RadioGroup radioGroup, int i2) {
            MineFragment.this.h(radioGroup, i2);
        }
    };
    @BindView
    public RadioGroup radioGroupHost;

    @Override // com.comeback.data.base.BaseFragment
    public int b() {
        return R.layout.fragment_cm_mine;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void e() {
        this.radioGroupHost.postDelayed(new Runnable() { // from class: f.e.a.j.e.e.b
            @Override // java.lang.Runnable
            public final void run() {
                MineFragment.this.i();
            }
        }, 200L);
    }

    @Override // com.comeback.data.base.BaseFragment
    public void f() {
        this.f382g = MineFragment.class.getName();
        int c2 = j.b().c(this.f382g);
        if (c2 == -1) {
            c2 = 0;
        }
        this.f383h = c2 % 10;
    }

    public /* synthetic */ void h(RadioGroup radioGroup, int i2) {
        switch (i2) {
            case R.id.radio_host1 /* 2131296684 */:
                this.f383h = 0;
                break;
            case R.id.radio_host2 /* 2131296685 */:
                this.f383h = 1;
                break;
            case R.id.radio_host3 /* 2131296686 */:
                this.f383h = 2;
                break;
            case R.id.radio_host4 /* 2131296687 */:
                this.f383h = 3;
                break;
        }
        j();
    }

    public /* synthetic */ void i() {
        int i2 = this.f383h;
        if (i2 == 0) {
            this.radioGroupHost.check(R.id.radio_host1);
        } else if (i2 == 1) {
            this.radioGroupHost.check(R.id.radio_host2);
        } else if (i2 == 2) {
            this.radioGroupHost.check(R.id.radio_host3);
        } else if (i2 == 3) {
            this.radioGroupHost.check(R.id.radio_host4);
        }
        this.radioGroupHost.setOnCheckedChangeListener(this.f384i);
    }

    public final void j() {
        j.b().g(this.f382g, this.f383h);
        PrintStream printStream = System.out;
        e.a("CVxd");
        h.n1(e.a("0urkgubR37vjg774l9bvgrDvhfLbm4aoluORBggaQ4yj/YXx4w=="));
    }
}
