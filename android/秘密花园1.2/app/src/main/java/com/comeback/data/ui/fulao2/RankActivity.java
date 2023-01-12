package com.comeback.data.ui.fulao2;

import android.content.Context;
import android.content.Intent;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.comeback.data.base.BaseActivity;
import com.comeback.data.ui.fulao2.adapter.RankStarAdapter;
import com.comeback.data.ui.fulao2.adapter.RankVideoAdapter;
import com.comeback.data.ui.fulao2.bean.StarList;
import com.comeback.data.ui.fulao2.bean.VideoList;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.l.h.f;
import java.util.HashMap;
import m.j;

/* loaded from: classes.dex */
public class RankActivity extends BaseActivity {
    public int b;

    /* renamed from: c  reason: collision with root package name */
    public String[] f780c = {e.a("0f7Pgfrb3L7yg5DAnvzTjL7l"), e.a("0f7Pgfrb3L7yg5DAnv3DjJfj"), e.a("0f7Pgfrb3L7yg5DAnvbqjJfj"), e.a("0f7Pgfrb3L7yg5DAnc/Qj4v6")};

    /* renamed from: d  reason: collision with root package name */
    public String[] f781d = {e.a("WQcU"), e.a("QgwACx0WSw=="), e.a("VA0VARk="), e.a("VgEXCxk=")};

    /* renamed from: e  reason: collision with root package name */
    public int[] f782e = {R.drawable.bg_ranking_item_three, R.drawable.bg_ranking_item_one, R.drawable.bg_ranking_item_two, R.drawable.bg_ranking_item_four};
    @BindView
    public ImageView ivCover;
    @BindView
    public RecyclerView rvList;
    @BindView
    public TextView tvTitle;

    /* loaded from: classes.dex */
    public class a extends j<VideoList> {
        public a() {
        }

        @Override // m.j
        public void d() {
        }

        @Override // m.j
        public void e(Throwable th) {
        }

        @Override // m.j
        public void f(VideoList videoList) {
            RankActivity rankActivity = RankActivity.this;
            rankActivity.rvList.setLayoutManager(new LinearLayoutManager(rankActivity));
            RankVideoAdapter rankVideoAdapter = new RankVideoAdapter(RankActivity.this);
            RankActivity.this.rvList.setAdapter(rankVideoAdapter);
            rankVideoAdapter.a(videoList.getResponse().getVideos());
        }
    }

    /* loaded from: classes.dex */
    public class b extends j<StarList> {
        public b() {
        }

        @Override // m.j
        public void d() {
        }

        @Override // m.j
        public void e(Throwable th) {
        }

        @Override // m.j
        public void f(StarList starList) {
            RankActivity rankActivity = RankActivity.this;
            rankActivity.rvList.setLayoutManager(new LinearLayoutManager(rankActivity));
            RankStarAdapter rankStarAdapter = new RankStarAdapter(RankActivity.this);
            RankActivity.this.rvList.setAdapter(rankStarAdapter);
            rankStarAdapter.a(starList.getResponse().getActors());
        }
    }

    public static void m(Context context, int i2) {
        Intent intent = new Intent(context, RankActivity.class);
        intent.putExtra(e.a("XgwHARM="), i2);
        context.startActivity(intent);
    }

    @Override // com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        this.b = intent.getIntExtra(e.a("XgwHARM="), 0);
    }

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_fulao2_rank;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        i();
        this.ivCover.setImageResource(this.f782e[this.b]);
        this.tvTitle.setText(this.f780c[this.b]);
        if (this.b != 3) {
            k(f.b().e(l()), new a());
        } else {
            k(f.b().c(l()), new b());
        }
    }

    public final HashMap<String, String> l() {
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put(e.a("QxsTAQ=="), this.f781d[this.b]);
        hashMap.put(e.a("QwsOARgHWF4D"), String.valueOf(System.currentTimeMillis()));
        return hashMap;
    }
}
