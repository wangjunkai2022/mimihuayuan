package com.comeback.data.ui.slf;

import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.text.TextUtils;
import android.widget.TextView;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshActivity;
import com.comeback.data.ui.slf.adapter.CartoonAdapter;
import com.comeback.data.ui.slf.adapter.ImageAdapter;
import com.comeback.data.ui.slf.adapter.Novel2Adapter;
import com.comeback.data.ui.slf.adapter.VideoAdapter;
import com.comeback.data.ui.slf.bean.GuessLike;
import com.comeback.data.ui.slf.bean.SLFItemBean;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.l0.h.d;
import f.i.b.r;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class CatIdActivity extends BaseRefreshActivity {

    /* renamed from: d  reason: collision with root package name */
    public String f1987d;

    /* renamed from: e  reason: collision with root package name */
    public String f1988e;

    /* renamed from: f  reason: collision with root package name */
    public String f1989f;

    /* renamed from: g  reason: collision with root package name */
    public String f1990g;
    @BindView
    public TextView tvTitle;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshActivity.a<ArrayList<SLFItemBean>> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f1991f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i2) {
            super();
            this.f1991f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            ArrayList arrayList = (ArrayList) obj;
            if (this.f1991f == 1) {
                CatIdActivity.this.f114c.c();
            }
            CatIdActivity.this.f114c.a(arrayList);
        }
    }

    /* loaded from: classes.dex */
    public class b extends BaseRefreshActivity.a<GuessLike> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f1993f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(int i2) {
            super();
            this.f1993f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            GuessLike guessLike = (GuessLike) obj;
            if (this.f1993f == 1) {
                CatIdActivity.this.f114c.c();
            }
            CatIdActivity.this.f114c.a(guessLike.getItems());
        }
    }

    public static void v(Context context, String str, String str2, String str3) {
        Intent intent = new Intent(context, CatIdActivity.class);
        intent.putExtra(e.a("VAMXLQ8="), str);
        intent.putExtra(e.a("WQMOAQ=="), str2);
        intent.putExtra(e.a("QxsTAQ=="), str3);
        context.startActivity(intent);
    }

    public static void w(Context context, String str, String str2, String str3) {
        Intent intent = new Intent(context, CatIdActivity.class);
        intent.putExtra(e.a("XgY="), str);
        intent.putExtra(e.a("WQMOAQ=="), str2);
        intent.putExtra(e.a("QxsTAQ=="), str3);
        context.startActivity(intent);
    }

    @Override // com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        this.f1987d = intent.getStringExtra(e.a("XgY="));
        this.f1988e = intent.getStringExtra(e.a("VAMXLQ8="));
        this.f1989f = intent.getStringExtra(e.a("WQMOAQ=="));
        this.f1990g = intent.getStringExtra(e.a("QxsTAQ=="));
    }

    @Override // com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_slf_cat_id;
    }

    @Override // com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public void e() {
        j(Color.parseColor(e.a("FCQnUV5FDg==")));
        super.e();
        this.tvTitle.setText(this.f1989f);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public BaseAbstractAdapter l() {
        if (this.f1990g.equals(e.a("Xg8CAw4="))) {
            return new ImageAdapter(this, 0);
        }
        if (this.f1990g.equals(e.a("VAMREAQcVw=="))) {
            return new CartoonAdapter(this);
        }
        if (this.f1990g.equals(e.a("QQsHAQQ="))) {
            return new VideoAdapter(this);
        }
        return new Novel2Adapter(this);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public RecyclerView.LayoutManager m() {
        if (this.f1990g.equals(e.a("VAMREAQcVw=="))) {
            return new GridLayoutManager(this, 3);
        }
        if (this.f1990g.equals(e.a("QQsHAQQ="))) {
            return new GridLayoutManager(this, 2);
        }
        if (this.f1990g.equals(e.a("Xg8CAw4="))) {
            return new GridLayoutManager(this, 2);
        }
        return new LinearLayoutManager(this);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public void p(int i2) {
        r rVar = new r();
        rVar.d(e.a("RwMEAQ=="), Integer.valueOf(i2));
        if (!TextUtils.isEmpty(this.f1988e)) {
            rVar.e(e.a("VAMXLQ8="), this.f1988e);
            k(f.e.a.j.l0.h.b.a().d(this.f1990g, d.a(rVar.toString())), new a(i2));
        }
        if (TextUtils.isEmpty(this.f1987d)) {
            return;
        }
        rVar.e(e.a("XgY="), this.f1987d);
        k(f.e.a.j.l0.h.b.a().n(this.f1990g, d.a(rVar.toString())), new b(i2));
    }
}
