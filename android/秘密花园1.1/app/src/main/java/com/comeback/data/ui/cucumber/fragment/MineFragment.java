package com.comeback.data.ui.cucumber.fragment;

import android.widget.RadioGroup;
import butterknife.BindView;
import c.a.a.b.g.h;
import com.comeback.data.base.BaseFragment;
import com.comeback.data.ui.cucumber.fragment.MineFragment;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.k.j;
import java.io.PrintStream;

/* loaded from: classes.dex */
public class MineFragment extends BaseFragment {

    /* renamed from: g  reason: collision with root package name */
    public String f505g;

    /* renamed from: h  reason: collision with root package name */
    public int f506h = 0;

    /* renamed from: i  reason: collision with root package name */
    public int f507i = 0;

    /* renamed from: j  reason: collision with root package name */
    public int f508j = 0;

    /* renamed from: k  reason: collision with root package name */
    public int f509k = 0;

    /* renamed from: l  reason: collision with root package name */
    public RadioGroup.OnCheckedChangeListener f510l = new RadioGroup.OnCheckedChangeListener() { // from class: f.e.a.j.g.g.d
        @Override // android.widget.RadioGroup.OnCheckedChangeListener
        public final void onCheckedChanged(RadioGroup radioGroup, int i2) {
            MineFragment.this.h(radioGroup, i2);
        }
    };
    @BindView
    public RadioGroup radioGroupHead;
    @BindView
    public RadioGroup radioGroupHost;
    @BindView
    public RadioGroup radioGroupImage;
    @BindView
    public RadioGroup radioGroupPlay;

    @Override // com.comeback.data.base.BaseFragment
    public int b() {
        return R.layout.fragment_cucumber_mine;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void e() {
        this.radioGroupHost.postDelayed(new Runnable() { // from class: f.e.a.j.g.g.c
            @Override // java.lang.Runnable
            public final void run() {
                MineFragment.this.i();
            }
        }, 200L);
    }

    @Override // com.comeback.data.base.BaseFragment
    public void f() {
        this.f505g = MineFragment.class.getName();
        int c2 = j.b().c(this.f505g);
        if (c2 == -1) {
            c2 = 0;
        }
        this.f506h = c2 % 10;
        this.f507i = (c2 / 10) % 10;
        this.f508j = (c2 / 100) % 10;
        this.f509k = (c2 / 1000) % 10;
    }

    public /* synthetic */ void h(RadioGroup radioGroup, int i2) {
        if (i2 != R.id.radio_image1) {
            switch (i2) {
                case R.id.radio_head1 /* 2131296678 */:
                    this.f509k = 0;
                    break;
                case R.id.radio_head2 /* 2131296679 */:
                    this.f509k = 1;
                    break;
                case R.id.radio_host1 /* 2131296680 */:
                    this.f506h = 0;
                    break;
                case R.id.radio_host2 /* 2131296681 */:
                    this.f506h = 1;
                    break;
                case R.id.radio_host3 /* 2131296682 */:
                    this.f506h = 2;
                    this.f507i = 0;
                    break;
                default:
                    switch (i2) {
                        case R.id.radio_play1 /* 2131296694 */:
                            this.f507i = 0;
                            break;
                        case R.id.radio_play2 /* 2131296695 */:
                            this.f507i = 1;
                            break;
                        case R.id.radio_play3 /* 2131296696 */:
                            this.f507i = 2;
                            break;
                    }
            }
        } else {
            this.f508j = 0;
        }
        j();
    }

    public /* synthetic */ void i() {
        int i2 = this.f506h;
        if (i2 == 0) {
            this.radioGroupHost.check(R.id.radio_host1);
        } else if (i2 == 1) {
            this.radioGroupHost.check(R.id.radio_host2);
        } else if (i2 == 2) {
            this.radioGroupHost.check(R.id.radio_host3);
        }
        int i3 = this.f507i;
        if (i3 == 0) {
            this.radioGroupPlay.check(R.id.radio_play1);
        } else if (i3 == 1) {
            this.radioGroupPlay.check(R.id.radio_play2);
        } else if (i3 == 2) {
            this.radioGroupPlay.check(R.id.radio_play3);
        }
        if (this.f508j == 0) {
            this.radioGroupImage.check(R.id.radio_image1);
        }
        int i4 = this.f509k;
        if (i4 == 0) {
            this.radioGroupHead.check(R.id.radio_head1);
        } else if (i4 == 1) {
            this.radioGroupHead.check(R.id.radio_head2);
        }
        this.radioGroupHost.setOnCheckedChangeListener(this.f510l);
        this.radioGroupPlay.setOnCheckedChangeListener(this.f510l);
        this.radioGroupImage.setOnCheckedChangeListener(this.f510l);
        this.radioGroupHead.setOnCheckedChangeListener(this.f510l);
    }

    public final void j() {
        j.b().g(this.f505g, (this.f509k * 1000) + (this.f508j * 100) + (this.f507i * 10) + this.f506h);
        PrintStream printStream = System.out;
        e.a("CVxd");
        h.n1(e.a("0urkgubR37vjg774l9bvgrDvhfLbm4aoluORBggaQ4yj/YXx4w=="));
    }
}
