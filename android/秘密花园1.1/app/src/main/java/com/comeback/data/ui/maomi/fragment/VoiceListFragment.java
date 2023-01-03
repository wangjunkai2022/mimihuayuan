package com.comeback.data.ui.maomi.fragment;

import android.os.Bundle;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.ui.maomi.adapter.VoiceListAdapter;
import com.comeback.data.ui.maomi.bean.VoiceList;
import f.e.a.e;
import f.e.a.j.c0.m.b;
import f.e.a.j.c0.m.d;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class VoiceListFragment extends BaseRefreshFragment {

    /* renamed from: i  reason: collision with root package name */
    public String f1631i;

    /* renamed from: j  reason: collision with root package name */
    public boolean f1632j;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshFragment.a<VoiceList> {
        public a() {
            super();
        }

        @Override // m.j
        public void f(Object obj) {
            VoiceList voiceList = (VoiceList) obj;
            if (VoiceListFragment.this.f116g == 1) {
                VoiceListFragment.this.f117h.c();
            }
            VoiceListFragment.this.f117h.a(voiceList.getData().getData());
        }
    }

    public static VoiceListFragment n(String str) {
        Bundle bundle = new Bundle();
        bundle.putString(e.a("XAca"), str);
        VoiceListFragment voiceListFragment = new VoiceListFragment();
        voiceListFragment.setArguments(bundle);
        return voiceListFragment;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void a() {
        this.f1631i = getArguments().getString(e.a("XAca"));
        this.f1632j = getArguments().getBoolean(e.a("XhEvCwUU"), false);
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public BaseAbstractAdapter h() {
        return new VoiceListAdapter(getContext(), this.f1632j);
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public RecyclerView.LayoutManager i() {
        return new GridLayoutManager(getContext(), 3);
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public void l(int i2) {
        JSONObject jSONObject = new JSONObject();
        try {
            if (this.f1632j) {
                jSONObject.put(e.a("QxsTAQ=="), e.a("BQ=="));
            } else {
                jSONObject.put(e.a("QxsTAQ=="), e.a("Bg=="));
            }
            jSONObject.put(e.a("RwMEAQ=="), this.f116g);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        g(d.a().e(this.f1631i, b.a(jSONObject.toString())), new a());
    }
}
