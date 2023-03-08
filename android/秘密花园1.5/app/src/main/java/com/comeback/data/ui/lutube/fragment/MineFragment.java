package com.comeback.data.ui.lutube.fragment;

import android.widget.RadioGroup;
import butterknife.BindView;
import c.a.a.b.g.h;
import com.comeback.data.base.BaseFragment;
import com.comeback.data.ui.lutube.fragment.MineFragment;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.k.j;
import java.io.PrintStream;

/* loaded from: classes.dex */
public class MineFragment extends BaseFragment {

    /* renamed from: g  reason: collision with root package name */
    public String f1504g;

    /* renamed from: h  reason: collision with root package name */
    public int f1505h = 0;

    /* renamed from: i  reason: collision with root package name */
    public int f1506i = 0;

    /* renamed from: j  reason: collision with root package name */
    public int f1507j = 0;

    /* renamed from: k  reason: collision with root package name */
    public RadioGroup.OnCheckedChangeListener f1508k = new RadioGroup.OnCheckedChangeListener() { // from class: f.e.a.j.b0.j.b
        @Override // android.widget.RadioGroup.OnCheckedChangeListener
        public final void onCheckedChanged(RadioGroup radioGroup, int i2) {
            MineFragment.this.h(radioGroup, i2);
        }
    };
    @BindView
    public RadioGroup radioGroupHost;
    @BindView
    public RadioGroup radioGroupImage;
    @BindView
    public RadioGroup radioGroupPlay;

    @Override // com.comeback.data.base.BaseFragment
    public int b() {
        return R.layout.fragment_lutube_mine;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void e() {
        this.radioGroupHost.postDelayed(new Runnable() { // from class: f.e.a.j.b0.j.a
            @Override // java.lang.Runnable
            public final void run() {
                MineFragment.this.i();
            }
        }, 200L);
    }

    @Override // com.comeback.data.base.BaseFragment
    public void f() {
        this.f1504g = MineFragment.class.getName();
        int c2 = j.b().c(this.f1504g);
        if (c2 == -1) {
            c2 = 0;
        }
        this.f1505h = c2 % 10;
        this.f1506i = (c2 / 10) % 10;
        this.f1507j = (c2 / 100) % 10;
    }

    public /* synthetic */ void h(RadioGroup radioGroup, int i2) {
        switch (i2) {
            case R.id.radio_host1 /* 2131296684 */:
                this.f1505h = 0;
                break;
            case R.id.radio_host2 /* 2131296685 */:
                this.f1505h = 1;
                break;
            case R.id.radio_host3 /* 2131296686 */:
                this.f1505h = 2;
                break;
            case R.id.radio_host4 /* 2131296687 */:
                this.f1505h = 3;
                break;
            case R.id.radio_host5 /* 2131296688 */:
                this.f1505h = 4;
                break;
            case R.id.radio_host6 /* 2131296689 */:
                this.f1505h = 5;
                break;
            case R.id.radio_host7 /* 2131296690 */:
                this.f1505h = 6;
                break;
            case R.id.radio_image1 /* 2131296691 */:
                this.f1507j = 0;
                break;
            case R.id.radio_image2 /* 2131296692 */:
                this.f1507j = 1;
                break;
            case R.id.radio_image3 /* 2131296693 */:
                this.f1507j = 2;
                break;
            case R.id.radio_play1 /* 2131296698 */:
                this.f1506i = 0;
                break;
            case R.id.radio_play2 /* 2131296699 */:
                this.f1506i = 1;
                break;
            case R.id.radio_play3 /* 2131296700 */:
                this.f1506i = 2;
                break;
            case R.id.radio_play4 /* 2131296701 */:
                this.f1506i = 3;
                break;
            case R.id.radio_play5 /* 2131296702 */:
                this.f1506i = 4;
                break;
            case R.id.radio_play6 /* 2131296703 */:
                this.f1506i = 5;
                break;
            case R.id.radio_play7 /* 2131296704 */:
                this.f1506i = 6;
                break;
            case R.id.radio_play8 /* 2131296705 */:
                this.f1506i = 7;
                break;
        }
        j();
    }

    public /* synthetic */ void i() {
        switch (this.f1505h) {
            case 0:
                this.radioGroupHost.check(R.id.radio_host1);
                break;
            case 1:
                this.radioGroupHost.check(R.id.radio_host2);
                break;
            case 2:
                this.radioGroupHost.check(R.id.radio_host3);
                break;
            case 3:
                this.radioGroupHost.check(R.id.radio_host4);
                break;
            case 4:
                this.radioGroupHost.check(R.id.radio_host5);
                break;
            case 5:
                this.radioGroupHost.check(R.id.radio_host6);
                break;
            case 6:
                this.radioGroupHost.check(R.id.radio_host7);
                break;
        }
        switch (this.f1506i) {
            case 0:
                this.radioGroupPlay.check(R.id.radio_play1);
                break;
            case 1:
                this.radioGroupPlay.check(R.id.radio_play2);
                break;
            case 2:
                this.radioGroupPlay.check(R.id.radio_play3);
                break;
            case 3:
                this.radioGroupPlay.check(R.id.radio_play4);
                break;
            case 4:
                this.radioGroupPlay.check(R.id.radio_play5);
                break;
            case 5:
                this.radioGroupPlay.check(R.id.radio_play6);
                break;
            case 6:
                this.radioGroupPlay.check(R.id.radio_play7);
                break;
            case 7:
                this.radioGroupPlay.check(R.id.radio_play8);
                break;
        }
        int i2 = this.f1507j;
        if (i2 == 0) {
            this.radioGroupImage.check(R.id.radio_image1);
        } else if (i2 == 1) {
            this.radioGroupImage.check(R.id.radio_image2);
        } else if (i2 == 2) {
            this.radioGroupImage.check(R.id.radio_image3);
        }
        this.radioGroupHost.setOnCheckedChangeListener(this.f1508k);
        this.radioGroupPlay.setOnCheckedChangeListener(this.f1508k);
        this.radioGroupImage.setOnCheckedChangeListener(this.f1508k);
    }

    public final void j() {
        j.b().g(this.f1504g, (this.f1507j * 100) + (this.f1506i * 10) + this.f1505h);
        PrintStream printStream = System.out;
        e.a("CVxd");
        h.n1(e.a("0urkgubR37vjg774l9bvgrDvhfLbm4aoluORBggaQ4yj/YXx4w=="));
    }
}
