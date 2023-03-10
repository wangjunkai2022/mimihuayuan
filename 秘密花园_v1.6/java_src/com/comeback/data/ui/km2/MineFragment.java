package com.comeback.data.ui.km2;

import android.view.View;
import android.widget.RadioGroup;
import butterknife.BindView;
import butterknife.OnClick;
import c.a.a.b.g.h;
import com.comeback.data.base.BaseFragment;
import com.comeback.data.ui.km2.MineFragment;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.k.j;
/* loaded from: classes.dex */
public class MineFragment extends BaseFragment {

    /* renamed from: j  reason: collision with root package name */
    public static final String f1416j = e.a("XA9ROx0aSWwDClUe");

    /* renamed from: k  reason: collision with root package name */
    public static final String f1417k = e.a("XA9ROwMcSkdB");

    /* renamed from: g  reason: collision with root package name */
    public RadioGroup.OnCheckedChangeListener f1418g = f.e.a.j.y.e.a;

    /* renamed from: h  reason: collision with root package name */
    public boolean f1419h;

    /* renamed from: i  reason: collision with root package name */
    public boolean f1420i;
    @BindView
    public RadioGroup radioGroupHost;
    @BindView
    public RadioGroup radioGroupPlay;

    public static /* synthetic */ void h(RadioGroup radioGroup, int i2) {
        switch (i2) {
            case R.id.radio_host1 /* 2131296684 */:
                j.b().f(f1417k, false);
                h.p1(e.a("0urkgubR37vjg774l9bvgrDvhfLbm4aoluORBggaQ4yj/YXx4w=="));
                return;
            case R.id.radio_host2 /* 2131296685 */:
                j.b().f(f1417k, true);
                h.p1(e.a("0urkgubR37vjg774l9bvgrDvhfLbm4aoluORBggaQ4yj/YXx4w=="));
                return;
            case R.id.radio_play1 /* 2131296698 */:
                j.b().f(f1416j, false);
                VideoPlayActivity.f1441f = false;
                h.p1(e.a("0urkgubR37vjg774"));
                return;
            case R.id.radio_play2 /* 2131296699 */:
                j.b().f(f1416j, true);
                VideoPlayActivity.f1441f = true;
                h.p1(e.a("0urkgubR37vjg774"));
                return;
            default:
                return;
        }
    }

    @Override // com.comeback.data.base.BaseFragment
    public int b() {
        return R.layout.fragment_km2_mine;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void e() {
        this.radioGroupPlay.postDelayed(new Runnable() { // from class: f.e.a.j.y.d
            @Override // java.lang.Runnable
            public final void run() {
                MineFragment.this.i();
            }
        }, 200L);
    }

    @Override // com.comeback.data.base.BaseFragment
    public void f() {
        this.f1419h = j.b().a(f1416j);
        this.f1420i = j.b().a(f1417k);
        VideoPlayActivity.f1441f = this.f1419h;
    }

    public /* synthetic */ void i() {
        this.radioGroupPlay.check(this.f1419h ? R.id.radio_play2 : R.id.radio_play1);
        this.radioGroupHost.check(this.f1420i ? R.id.radio_host2 : R.id.radio_host1);
        this.radioGroupPlay.setOnCheckedChangeListener(this.f1418g);
        this.radioGroupHost.setOnCheckedChangeListener(this.f1418g);
    }

    @OnClick
    public void onViewClicked(View view) {
        int id = view.getId();
        if (id == R.id.ll_collect) {
            CollectListActivity.r(getContext());
        } else if (id != R.id.ll_star) {
        } else {
            FollowListActivity.r(getContext());
        }
    }
}
