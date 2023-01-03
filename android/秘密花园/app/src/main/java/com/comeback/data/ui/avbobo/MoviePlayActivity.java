package com.comeback.data.ui.avbobo;

import android.content.Context;
import android.content.Intent;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import c.a.a.b.g.h;
import chuangyuan.ycj.videolibrary.widget.VideoPlayerView;
import com.comeback.data.base.BasePlayByIdActivity;
import com.comeback.data.ui.avbobo.MoviePlayActivity;
import com.comeback.data.ui.avbobo.bean.MovieDetail;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.b.g.b;
import f.e.a.j.b.g.d;
import f.e.a.k.f;
import java.io.PrintStream;
import java.util.HashMap;
import m.j;

/* loaded from: classes.dex */
public class MoviePlayActivity extends BasePlayByIdActivity {

    /* renamed from: d  reason: collision with root package name */
    public MovieDetail f155d;

    /* renamed from: e  reason: collision with root package name */
    public String f156e;

    /* renamed from: g  reason: collision with root package name */
    public int f158g;
    @BindView
    public LinearLayout llLine;
    @BindView
    public RadioGroup radioGroupLine;
    @BindView
    public RadioGroup radioGroupType;
    @BindView
    public RadioButton radioType1;
    @BindView
    public RadioButton radioType2;
    @BindView
    public RadioButton radioType3;
    @BindView
    public RadioButton radioType4;
    @BindView
    public RecyclerView rvList;
    @BindView
    public TextView tvDetail;
    @BindView
    public TextView tvTitle;

    /* renamed from: f  reason: collision with root package name */
    public String f157f = e.a("BlM=");

    /* renamed from: h  reason: collision with root package name */
    public RadioGroup.OnCheckedChangeListener f159h = new RadioGroup.OnCheckedChangeListener() { // from class: f.e.a.j.b.b
        @Override // android.widget.RadioGroup.OnCheckedChangeListener
        public final void onCheckedChanged(RadioGroup radioGroup, int i2) {
            MoviePlayActivity.this.p(radioGroup, i2);
        }
    };

    /* loaded from: classes.dex */
    public class a extends j<HashMap<String, String>> {

        /* renamed from: e  reason: collision with root package name */
        public final /* synthetic */ String f160e;

        public a(String str) {
            this.f160e = str;
        }

        @Override // m.j
        public void d() {
        }

        @Override // m.j
        public void e(Throwable th) {
            e.a("aD08Ow==");
            th.getMessage();
            f.b();
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
        @Override // m.j
        public void f(HashMap<String, String> hashMap) {
            HashMap<String, String> hashMap2 = hashMap;
            MoviePlayActivity moviePlayActivity = MoviePlayActivity.this;
            StringBuilder sb = new StringBuilder();
            f.b.a.a.a.B(sb, b.c().b, "GAUUSxkWSh4RCVYIVwgMREFQTAwHABY=");
            sb.append(MoviePlayActivity.this.f155d.getLine_version());
            sb.append(e.a("GA=="));
            sb.append(MoviePlayActivity.this.f155d.getId());
            sb.append(e.a("GA=="));
            f.b.a.a.a.B(sb, this.f160e, "GA==");
            sb.append(MoviePlayActivity.this.f157f);
            sb.append(e.a("GQ9QEVNM"));
            StringBuilder sb2 = new StringBuilder();
            for (String str : hashMap2.keySet()) {
                sb2.append(str);
                sb2.append(e.a("Cg=="));
                f.b.a.a.a.B(sb2, hashMap2.get(str), "EQ==");
            }
            sb.append(sb2.substring(0, sb2.length() + -1 > 0 ? sb2.length() - 1 : 0));
            String sb3 = sb.toString();
            if (moviePlayActivity != null) {
                PrintStream printStream = System.out;
                e.a("CVxdWlU=");
                if (moviePlayActivity.f113c == null) {
                    moviePlayActivity.f113c = h.h(moviePlayActivity, (VideoPlayerView) moviePlayActivity.findViewById(R.id.video_view));
                }
                if (moviePlayActivity.f155d != null) {
                    moviePlayActivity.f113c.getVideoPlayerView().setTitle(moviePlayActivity.f155d.getTitle());
                    moviePlayActivity.f113c.setShowVideoSwitch(true);
                    moviePlayActivity.f113c.setPlayUri(sb3);
                    moviePlayActivity.f113c.startPlayer();
                    h.h1(moviePlayActivity.f113c.getVideoPlayerView(), sb3);
                    return;
                }
                return;
            }
            throw null;
        }
    }

    public static void q(Context context, MovieDetail movieDetail) {
        Intent intent = new Intent(context, MoviePlayActivity.class);
        intent.putExtra(e.a("UwMXBQ=="), movieDetail);
        context.startActivity(intent);
    }

    @Override // com.comeback.data.base.BasePlayByIdActivity, com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        this.f155d = (MovieDetail) intent.getParcelableExtra(e.a("UwMXBQ=="));
        this.f156e = intent.getStringExtra(e.a("XgY="));
    }

    @Override // com.comeback.data.base.BasePlayByIdActivity, com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_avbobo_detail;
    }

    @Override // com.comeback.data.base.BasePlayByIdActivity, com.comeback.data.base.BaseActivity
    public void e() {
        super.e();
        j(-16777216);
        String str = this.f156e;
        MovieDetail movieDetail = this.f155d;
        if (movieDetail != null) {
            str = movieDetail.getId();
        }
        k(d.a().b(str), new f.e.a.j.b.e(this));
        if (this.f155d == null) {
            k(d.a().d(this.f156e), new f.e.a.j.b.d(this));
        } else {
            o();
        }
    }

    @Override // com.comeback.data.base.BasePlayByIdActivity
    public void l(String str) {
    }

    public final void n() {
        if (this.f158g < 0) {
            h.n1(e.a("0fjhgvzT36HegKDZntDz"));
            return;
        }
        String str = this.f155d.getTypes().get(this.f158g);
        k(d.a().e(this.f155d.getLine_version(), this.f155d.getId(), str, this.f157f), new a(str));
    }

    public final void o() {
        if (this.f155d.getTypes().size() > 0) {
            this.radioType1.setText(this.f155d.getTypes().get(0));
            this.radioType1.setChecked(true);
        } else {
            this.radioType1.setVisibility(8);
        }
        if (this.f155d.getTypes().size() > 1) {
            this.radioType2.setText(this.f155d.getTypes().get(1));
            this.radioType2.setChecked(true);
        } else {
            this.radioType2.setVisibility(8);
        }
        if (this.f155d.getTypes().size() > 2) {
            this.radioType3.setText(this.f155d.getTypes().get(2));
            this.radioType3.setChecked(true);
        } else {
            this.radioType3.setVisibility(8);
        }
        if (this.f155d.getTypes().size() > 3) {
            this.radioType4.setText(this.f155d.getTypes().get(3));
            this.radioType4.setChecked(true);
        } else {
            this.radioType4.setVisibility(8);
        }
        this.radioGroupLine.setOnCheckedChangeListener(this.f159h);
        this.radioGroupType.setOnCheckedChangeListener(this.f159h);
        this.tvTitle.setText(this.f155d.getTitle());
        TextView textView = this.tvDetail;
        textView.setText(e.a("0fXVjf7M1o/p") + h.f1(this.f155d.getDuration()) + e.a("F0KF9saVrY2a4buIxPA=") + this.f155d.getPlayCount());
        int size = this.f155d.getTypes().size() - 1;
        this.f158g = size;
        if (size == -1) {
            this.f158g = 0;
        }
        n();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        this.f155d = (MovieDetail) intent.getParcelableExtra(e.a("UwMXBQ=="));
        e();
    }

    public /* synthetic */ void p(RadioGroup radioGroup, int i2) {
        switch (i2) {
            case R.id.radio_line1 /* 2131296690 */:
                this.f157f = e.a("Bg==");
                break;
            case R.id.radio_line2 /* 2131296691 */:
                this.f157f = e.a("BlM=");
                break;
            default:
                switch (i2) {
                    case R.id.radio_type1 /* 2131296702 */:
                        this.f158g = 0;
                        break;
                    case R.id.radio_type2 /* 2131296703 */:
                        this.f158g = 1;
                        break;
                    case R.id.radio_type3 /* 2131296704 */:
                        this.f158g = 2;
                        break;
                    case R.id.radio_type4 /* 2131296705 */:
                        this.f158g = 3;
                        break;
                }
        }
        n();
    }
}
