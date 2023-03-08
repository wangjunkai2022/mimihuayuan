package com.comeback.data.ui.maomi.fragment;

import android.os.Bundle;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.ui.maomi.adapter.VoiceDetailListAdapter;
import com.comeback.data.ui.maomi.bean.VoiceDetailList;
import f.e.a.e;
import f.e.a.j.d0.m.b;
import f.e.a.j.d0.m.d;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class VoiceDetailListFragment extends BaseRefreshFragment {

    /* renamed from: i  reason: collision with root package name */
    public String f1702i;

    /* renamed from: j  reason: collision with root package name */
    public boolean f1703j;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshFragment.a<VoiceDetailList> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f1704f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i2) {
            super();
            this.f1704f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            VoiceDetailList voiceDetailList = (VoiceDetailList) obj;
            if (this.f1704f == 1) {
                VoiceDetailListFragment.this.f117h.c();
            }
            VoiceDetailListFragment.this.f117h.a(voiceDetailList.getData().getData());
        }
    }

    public static VoiceDetailListFragment o(String str, boolean z) {
        Bundle bundle = new Bundle();
        bundle.putString(e.a("UwMXBVo="), str);
        bundle.putBoolean(e.a("XhEvCwUU"), z);
        VoiceDetailListFragment voiceDetailListFragment = new VoiceDetailListFragment();
        voiceDetailListFragment.setArguments(bundle);
        return voiceDetailListFragment;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void a() {
        this.f1702i = getArguments().getString(e.a("UwMXBVo="));
        this.f1703j = getArguments().getBoolean(e.a("XhEvCwUU"), false);
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public BaseAbstractAdapter h() {
        return new VoiceDetailListAdapter(getContext(), this.f1703j);
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public void l(int i2) {
        m.e<VoiceDetailList> p;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(e.a("XgY="), this.f1702i);
            jSONObject.put(e.a("RA0REA=="), 1);
            jSONObject.put(e.a("RBIGBwISVWwaAg=="), "");
            jSONObject.put(e.a("RwMEAQ=="), i2);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        if (this.f1703j) {
            p = d.a().m(b.a(jSONObject.toString()));
        } else {
            p = d.a().p(b.a(jSONObject.toString()));
        }
        g(p, new a(i2));
    }
}
