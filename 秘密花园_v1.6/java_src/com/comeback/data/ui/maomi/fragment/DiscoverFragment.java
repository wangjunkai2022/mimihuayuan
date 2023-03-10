package com.comeback.data.ui.maomi.fragment;

import android.view.View;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.OnClick;
import com.comeback.data.base.BaseFragment;
import com.comeback.data.ui.maomi.CartoonActivity;
import com.comeback.data.ui.maomi.NovelActivity;
import com.comeback.data.ui.maomi.VoiceActivity;
import com.comeback.data.ui.maomi.adapter.DiscoverAdapter;
import com.comeback.data.ui.maomi.bean.Cartoon;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.d0.m.b;
import f.e.a.j.d0.m.d;
import m.j;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class DiscoverFragment extends BaseFragment {

    /* renamed from: g  reason: collision with root package name */
    public DiscoverAdapter f1693g;
    @BindView
    public RecyclerView rvList;

    /* loaded from: classes.dex */
    public class a extends j<Cartoon> {
        public a() {
        }

        @Override // m.j
        public void d() {
        }

        @Override // m.j
        public void e(Throwable th) {
        }

        @Override // m.j
        public void f(Cartoon cartoon) {
            DiscoverFragment.this.f1693g.a(cartoon.getData().getData());
        }
    }

    @Override // com.comeback.data.base.BaseFragment
    public int b() {
        return R.layout.fragment_mm_discover;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void e() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(e.a("RwMEAQ=="), e.a("Bg=="));
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        g(d.a().h(b.a(jSONObject.toString())), new a());
    }

    @Override // com.comeback.data.base.BaseFragment
    public void f() {
        this.rvList.setLayoutManager(new GridLayoutManager(getContext(), 2));
        DiscoverAdapter discoverAdapter = new DiscoverAdapter(getContext());
        this.f1693g = discoverAdapter;
        this.rvList.setAdapter(discoverAdapter);
    }

    @OnClick
    public void onViewClicked(View view) {
        int id = view.getId();
        if (id == R.id.ll_listener) {
            VoiceActivity.n(getContext());
        } else if (id == R.id.ll_more) {
            CartoonActivity.l(getContext());
        } else if (id != R.id.ll_read) {
        } else {
            NovelActivity.n(getContext());
        }
    }
}
