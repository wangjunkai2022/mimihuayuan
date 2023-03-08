package com.comeback.data.ui.maomi;

import android.content.Context;
import android.content.Intent;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.comeback.data.base.BaseActivity;
import com.comeback.data.ui.maomi.adapter.CartoonWatchAdapter;
import com.comeback.secret.garden.R;
import f.b.a.a.a;
import f.e.a.e;
import f.e.a.j.d0.f;
import f.e.a.j.d0.m.b;
import f.e.a.j.d0.m.d;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class CartoonWatchActivity extends BaseActivity {
    public String b;

    /* renamed from: c  reason: collision with root package name */
    public CartoonWatchAdapter f1605c;
    @BindView
    public RecyclerView mRecyclerView;

    public static void l(@NonNull Context context, String str) {
        Intent intent = new Intent(context, CartoonWatchActivity.class);
        a.v("XgY=", intent, str, context, intent);
    }

    @Override // com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        this.b = intent.getStringExtra(e.a("XgY="));
    }

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.include_only_recycleview;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        g();
        this.mRecyclerView.setLayoutManager(new LinearLayoutManager(this));
        CartoonWatchAdapter cartoonWatchAdapter = new CartoonWatchAdapter(this);
        this.f1605c = cartoonWatchAdapter;
        this.mRecyclerView.setAdapter(cartoonWatchAdapter);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(e.a("WwsQEDQaXQ=="), this.b);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        k(d.a().r(b.a(jSONObject.toString())), new f(this));
    }
}
