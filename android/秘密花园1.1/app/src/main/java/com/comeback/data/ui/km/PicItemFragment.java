package com.comeback.data.ui.km;

import android.os.Bundle;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.ui.km.bean.PicList;
import f.e.a.e;
import f.e.a.j.w.g.b;
import f.e.a.j.w.g.d;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Map;
import java.util.TreeMap;

/* loaded from: classes.dex */
public class PicItemFragment extends BaseRefreshFragment {

    /* renamed from: i  reason: collision with root package name */
    public String f1294i;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshFragment.a<PicList> {
        public a() {
            super();
        }

        @Override // m.j
        public void f(Object obj) {
            PicItemFragment.this.f117h.a(((PicList) obj).getData().getList());
        }
    }

    public static PicItemFragment n(String str) {
        Bundle bundle = new Bundle();
        bundle.putString(e.a("XgY="), str);
        PicItemFragment picItemFragment = new PicItemFragment();
        picItemFragment.setArguments(bundle);
        return picItemFragment;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void a() {
        this.f1294i = getArguments().getString(e.a("XgY="));
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public BaseAbstractAdapter h() {
        return new PicListAdapter(getContext());
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public void l(int i2) {
        f.e.a.j.w.g.a a2 = d.a();
        String c2 = b.c(e.a("TEAOBzQaXRFJRA==") + this.f1294i + e.a("FU5BFAoUXBFJ") + i2 + e.a("G0ATARkjWFQWRA5VSBc="), b.f3962c, b.a);
        TreeMap treeMap = new TreeMap();
        treeMap.put(e.a("UwMXBQ=="), c2);
        treeMap.put(e.a("aAYGEgIQXGwaAg=="), e.a("D1RbVV5BCQBLVgVSTFxU"));
        treeMap.put(e.a("aAMTFDQFXEEAD1sJ"), e.a("BkxSSlk="));
        treeMap.put(e.a("aAYGEgIQXGwHH0QC"), e.a("ehcuEQ=="));
        treeMap.put(e.a("aBEHDzQFXEEAD1sJ"), e.a("BVE="));
        treeMap.put(e.a("aAYGEgIQXGwFA0YUEQUN"), e.a("AUxTSlo="));
        StringBuilder sb = new StringBuilder();
        for (Map.Entry entry : treeMap.entrySet()) {
            sb.append(e.a("EQ=="));
            sb.append((String) entry.getKey());
            sb.append(e.a("Cg=="));
            String str = (String) entry.getValue();
            try {
                str = URLEncoder.encode(str, e.a("YjYlSVM="));
            } catch (UnsupportedEncodingException unused) {
            }
            sb.append(str);
        }
        String a3 = e.a("RAsE");
        treeMap.put(a3, b.b(sb.toString().substring(1) + e.a("WgMMCQIsSVIAFWsfARA=")));
        sb.delete(0, sb.length());
        for (Map.Entry entry2 : treeMap.entrySet()) {
            sb.append(e.a("EQ=="));
            sb.append((String) entry2.getKey());
            sb.append(e.a("Cg=="));
            sb.append((String) entry2.getValue());
        }
        g(a2.c(treeMap), new a());
    }
}
