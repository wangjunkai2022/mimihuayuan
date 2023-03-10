package com.comeback.data.ui.fulao2.fragment;

import android.widget.RadioGroup;
import butterknife.BindView;
import com.comeback.data.base.BaseFragment;
import com.comeback.data.ui.fulao2.bean.VideoInfo;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.k.j;
/* loaded from: classes.dex */
public class UserFragment extends BaseFragment {

    /* renamed from: g  reason: collision with root package name */
    public String f863g;
    @BindView
    public RadioGroup radioGroup;

    /* loaded from: classes.dex */
    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int c2 = j.b().c(UserFragment.this.f863g);
            if (c2 == 3) {
                UserFragment.this.radioGroup.check(R.id.radio_3);
            } else if (c2 == 2) {
                UserFragment.this.radioGroup.check(R.id.radio_2);
            } else {
                UserFragment.this.radioGroup.check(R.id.radio_1);
            }
        }
    }

    /* loaded from: classes.dex */
    public class b implements RadioGroup.OnCheckedChangeListener {
        public b() {
        }

        @Override // android.widget.RadioGroup.OnCheckedChangeListener
        public void onCheckedChanged(RadioGroup radioGroup, int i2) {
            switch (i2) {
                case R.id.radio_1 /* 2131296671 */:
                    VideoInfo.StreamHost = e.a("XxYXFBhJFhwDEkJKDxlNGFQbAgkGXVpd");
                    j.b().g(UserFragment.this.f863g, 1);
                    return;
                case R.id.radio_2 /* 2131296672 */:
                    VideoInfo.StreamHost = e.a("XxYXFBhJFhwDEkJKGRlNAFobFgofElAdEAg=");
                    j.b().g(UserFragment.this.f863g, 2);
                    return;
                case R.id.radio_3 /* 2131296673 */:
                    VideoInfo.StreamHost = e.a("XxYXFBhJFhwDEkJKGRlNE04BVFNcXVpd");
                    j.b().g(UserFragment.this.f863g, 3);
                    return;
                default:
                    return;
            }
        }
    }

    @Override // com.comeback.data.base.BaseFragment
    public int b() {
        return R.layout.fragment_fulao2_user;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void e() {
        this.radioGroup.postDelayed(new a(), 200L);
    }

    @Override // com.comeback.data.base.BaseFragment
    public void f() {
        this.f863g = UserFragment.class.getName();
        int c2 = j.b().c(this.f863g);
        if (c2 == -1) {
            c2 = 1;
        }
        if (c2 == 1) {
            VideoInfo.StreamHost = e.a("XxYXFBhJFhwDEkJKDxlNGFQbAgkGXVpd");
        } else if (c2 == 2) {
            VideoInfo.StreamHost = e.a("XxYXFBhJFhwDEkJKGRlNAFobFgofElAdEAg=");
        } else {
            VideoInfo.StreamHost = e.a("XxYXFBhJFhwDEkJKGRlNE04BVFNcXVpd");
        }
        this.radioGroup.setOnCheckedChangeListener(new b());
    }
}
