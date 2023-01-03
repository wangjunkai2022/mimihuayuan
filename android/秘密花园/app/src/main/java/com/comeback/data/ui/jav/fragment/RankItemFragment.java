package com.comeback.data.ui.jav.fragment;

import android.os.Bundle;
import android.widget.RadioGroup;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.ui.jav.adapter.ActorAdapter;
import com.comeback.data.ui.jav.adapter.VideoAdapter;
import com.comeback.data.ui.jav.bean.Actor;
import com.comeback.data.ui.jav.bean.VideoList;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.h0.c;
import i.i0;
import java.io.IOException;
import java.util.ArrayList;
import l.d;
import l.f;
import l.g0;

/* loaded from: classes.dex */
public class RankItemFragment extends BaseRefreshFragment {

    /* renamed from: i  reason: collision with root package name */
    public String f1227i;

    /* renamed from: j  reason: collision with root package name */
    public String f1228j = e.a("UwMKCBI=");

    /* renamed from: k  reason: collision with root package name */
    public boolean f1229k = false;

    /* renamed from: l  reason: collision with root package name */
    public boolean f1230l = true;

    /* renamed from: m  reason: collision with root package name */
    public d<i0> f1231m;
    @BindView
    public RadioGroup radioGroup;

    /* loaded from: classes.dex */
    public class a implements RadioGroup.OnCheckedChangeListener {
        public a() {
        }

        @Override // android.widget.RadioGroup.OnCheckedChangeListener
        public void onCheckedChanged(RadioGroup radioGroup, int i2) {
            switch (i2) {
                case R.id.rb_1 /* 2131296706 */:
                    RankItemFragment rankItemFragment = RankItemFragment.this;
                    rankItemFragment.f1229k = false;
                    rankItemFragment.f1228j = e.a("UwMKCBI=");
                    break;
                case R.id.rb_2 /* 2131296707 */:
                    RankItemFragment rankItemFragment2 = RankItemFragment.this;
                    rankItemFragment2.f1229k = false;
                    rankItemFragment2.f1228j = e.a("QAcGDwcK");
                    break;
                case R.id.rb_3 /* 2131296708 */:
                    RankItemFragment rankItemFragment3 = RankItemFragment.this;
                    rankItemFragment3.f1229k = false;
                    rankItemFragment3.f1228j = e.a("Wg0NEAMfQA==");
                    break;
                case R.id.rb_4 /* 2131296709 */:
                    RankItemFragment rankItemFragment4 = RankItemFragment.this;
                    rankItemFragment4.f1229k = true;
                    rankItemFragment4.f1228j = rankItemFragment4.f1227i.replace(e.a("QQsHAQQ="), e.a("VgEXCxk="));
                    if (RankItemFragment.this.f1228j.equals(e.a("VgEXCxksWlYdFVsVHQ4="))) {
                        RankItemFragment.this.f1228j = e.a("VgEXCxksVFwdElwLAQ==");
                        break;
                    }
                    break;
            }
            RankItemFragment.this.refreshLayout.h();
        }
    }

    /* loaded from: classes.dex */
    public class b implements f<i0> {
        public b() {
        }

        @Override // l.f
        public void a(d<i0> dVar, g0<i0> g0Var) {
            RankItemFragment.o(RankItemFragment.this, true);
            RankItemFragment.this.refreshLayout.m(true);
            if (g0Var.a.f6449e > 300) {
                e.a("BFJTRA4BS1wB");
                f.e.a.k.f.a();
                return;
            }
            try {
                String H = g0Var.b.H();
                if (RankItemFragment.this.f1229k) {
                    RankItemFragment.this.f1230l = true;
                    ArrayList<Actor> a = f.e.a.j.u.e.a.a(H);
                    RankItemFragment.this.f117h.c();
                    RankItemFragment.this.mRvList.setLayoutManager(RankItemFragment.this.i());
                    RankItemFragment.this.f117h = new ActorAdapter(RankItemFragment.this.getContext());
                    RankItemFragment.this.mRvList.setAdapter(RankItemFragment.this.f117h);
                    RankItemFragment.this.f117h.a(a);
                    return;
                }
                VideoList d2 = f.e.a.j.u.e.a.d(H);
                RankItemFragment.this.f1230l = d2.isVertical();
                RankItemFragment.this.f117h.c();
                RankItemFragment.this.mRvList.setLayoutManager(RankItemFragment.this.i());
                RecyclerView recyclerView = RankItemFragment.this.mRvList;
                RankItemFragment rankItemFragment = RankItemFragment.this;
                VideoAdapter videoAdapter = new VideoAdapter(rankItemFragment.getContext(), rankItemFragment.f1230l);
                rankItemFragment.f117h = videoAdapter;
                recyclerView.setAdapter(videoAdapter);
                RankItemFragment.this.f117h.a(d2.getList());
            } catch (IOException e2) {
                while (true) {
                    e2.printStackTrace();
                    return;
                }
            }
        }

        @Override // l.f
        public void b(d<i0> dVar, Throwable th) {
            e.a("aD08ARkBVkFJ");
            th.getMessage();
            f.e.a.k.f.b();
            RankItemFragment.m(RankItemFragment.this, false);
            RankItemFragment.this.refreshLayout.m(false);
        }
    }

    public static void m(RankItemFragment rankItemFragment, boolean z) {
        rankItemFragment.refreshLayout.j(z);
    }

    public static void o(RankItemFragment rankItemFragment, boolean z) {
        rankItemFragment.refreshLayout.j(z);
    }

    public static RankItemFragment p(String str) {
        Bundle bundle = new Bundle();
        bundle.putString(e.a("XgY="), str);
        RankItemFragment rankItemFragment = new RankItemFragment();
        rankItemFragment.setArguments(bundle);
        return rankItemFragment;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void a() {
        this.f1227i = getArguments().getString(e.a("XgY="));
    }

    @Override // com.comeback.data.base.BaseRefreshFragment, com.comeback.data.base.BaseFragment
    public int b() {
        return R.layout.fragment_jav_rank_item;
    }

    @Override // com.comeback.data.base.BaseRefreshFragment, com.comeback.data.base.BaseFragment
    public void f() {
        super.f();
        this.refreshLayout.t(false);
        this.radioGroup.setOnCheckedChangeListener(new a());
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public BaseAbstractAdapter h() {
        VideoAdapter videoAdapter = new VideoAdapter(getContext(), this.f1230l);
        this.f117h = videoAdapter;
        return videoAdapter;
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public RecyclerView.LayoutManager i() {
        return new GridLayoutManager(getContext(), this.f1230l ? 3 : 2);
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public void l(int i2) {
        String str;
        StringBuilder sb = new StringBuilder();
        f.b.a.a.a.B(sb, f.e.a.j.u.e.a.a, "GBACCgAaV1QASQ==");
        if (this.f1229k) {
            str = e.a("VgEXCxkA");
        } else {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(e.a("Wg0VDQ4ABkNO"));
            f.b.a.a.a.B(sb2, this.f1228j, "ERZe");
            sb2.append(this.f1227i);
            str = sb2.toString();
        }
        sb.append(str);
        String sb3 = sb.toString();
        f.e.a.k.f.a();
        d<i0> b2 = c.a().b(sb3, f.e.a.k.b.h0, f.e.a.k.b.f3970c);
        this.f1231m = b2;
        b2.X(new b());
    }

    @Override // com.comeback.data.base.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        d<i0> dVar = this.f1231m;
        if (dVar != null) {
            dVar.cancel();
        }
    }
}
