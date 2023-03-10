package com.comeback.data.ui.hg;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import c.a.a.b.g.h;
import chuangyuan.ycj.videolibrary.video.ExoUserPlayer;
import chuangyuan.ycj.videolibrary.widget.VideoPlayerView;
import com.comeback.data.base.BasePlayByIdActivity;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.o.d.b;
import i.b0;
import i.d0;
import i.e0;
import java.util.Map;
/* loaded from: classes.dex */
public class HGMovieDetailActivity extends BasePlayByIdActivity {

    /* renamed from: d  reason: collision with root package name */
    public f.e.a.j.o.c.a f1085d;

    /* renamed from: e  reason: collision with root package name */
    public b0 f1086e;
    @BindView
    public RecyclerView rvList;
    @BindView
    public TextView tvDetail;
    @BindView
    public TextView tvIntro;
    @BindView
    public TextView tvTitle;

    /* loaded from: classes.dex */
    public class a implements b {
        public a() {
        }
    }

    public static void n(Context context, f.e.a.j.o.c.a aVar) {
        Intent intent = new Intent(context, HGMovieDetailActivity.class);
        intent.putExtra(e.a("RwMRBQY="), aVar);
        context.startActivity(intent);
    }

    @Override // com.comeback.data.base.BasePlayByIdActivity, com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        this.f1085d = (f.e.a.j.o.c.a) intent.getSerializableExtra(e.a("RwMRBQY="));
    }

    @Override // com.comeback.data.base.BasePlayByIdActivity, com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_hg_movie_detail;
    }

    @Override // com.comeback.data.base.BasePlayByIdActivity, com.comeback.data.base.BaseActivity
    public void e() {
        g();
        h(-16777216);
        ExoUserPlayer h2 = h.h(this, (VideoPlayerView) findViewById(R.id.video_view));
        this.f113c = h2;
        h2.setPlayUri(e.a("XxYXFBhJFhwEEUNJHwUMDFsHTQcEHg=="));
        this.f1086e = new b0();
        e0.a aVar = new e0.a();
        aVar.i(this.f1085d.a);
        Map<String, String> map = this.f1085d.b;
        for (String str : map.keySet()) {
            aVar.c(str, map.get(str));
        }
        ((d0) this.f1086e.a(aVar.b())).W(new f.e.a.j.o.b(this));
        if (TextUtils.isEmpty(this.f1085d.f4011c)) {
            return;
        }
        f.e.a.j.o.d.a.b = new a();
    }

    @Override // com.comeback.data.base.BasePlayByIdActivity
    public void l(String str) {
    }

    @Override // com.comeback.data.base.BasePlayByIdActivity, com.comeback.data.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        f.e.a.j.o.d.a.b = null;
    }
}
