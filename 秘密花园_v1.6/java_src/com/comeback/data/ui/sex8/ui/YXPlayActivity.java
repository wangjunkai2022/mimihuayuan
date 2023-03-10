package com.comeback.data.ui.sex8.ui;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.animation.LinearInterpolator;
import android.widget.ImageView;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.annotation.Nullable;
import butterknife.BindView;
import butterknife.OnClick;
import c.a.a.b.g.h;
import chuangyuan.ycj.videolibrary.listener.VideoInfoListener;
import chuangyuan.ycj.videolibrary.video.ExoUserPlayer;
import chuangyuan.ycj.videolibrary.widget.VideoPlayerView;
import com.comeback.data.base.BaseActivity;
import com.comeback.data.ui.sex8.bean.YXNovelDetail;
import com.comeback.data.ui.sex8.bean.YXParams;
import com.comeback.data.ui.sex8.ui.YXPlayActivity;
import com.comeback.data.widget.RatioImageView;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.i.a.a.w;
import java.util.List;
import m.j;
/* loaded from: classes.dex */
public class YXPlayActivity extends BaseActivity {
    public Runnable b = new Runnable() { // from class: f.e.a.j.k0.b.a
        @Override // java.lang.Runnable
        public final void run() {
            YXPlayActivity.this.m();
        }
    };

    /* renamed from: c  reason: collision with root package name */
    public ExoUserPlayer f1969c;

    /* renamed from: d  reason: collision with root package name */
    public ObjectAnimator f1970d;

    /* renamed from: e  reason: collision with root package name */
    public List<YXNovelDetail.DataBean.RadioListBean> f1971e;

    /* renamed from: f  reason: collision with root package name */
    public YXNovelDetail f1972f;

    /* renamed from: g  reason: collision with root package name */
    public String f1973g;

    /* renamed from: h  reason: collision with root package name */
    public boolean f1974h;

    /* renamed from: i  reason: collision with root package name */
    public int f1975i;
    @BindView
    public RatioImageView mIvImg;
    @BindView
    public ImageView mIvPlay;
    @BindView
    public SeekBar mSeekBar;
    @BindView
    public TextView mTvAll;
    @BindView
    public TextView mTvCurrent;
    @BindView
    public TextView mTvTitle;

    /* loaded from: classes.dex */
    public class a implements VideoInfoListener {
        public a() {
        }

        @Override // chuangyuan.ycj.videolibrary.listener.VideoInfoListener
        public void isPlaying(boolean z) {
            if (z) {
                YXPlayActivity.this.f1970d.resume();
            } else {
                YXPlayActivity.this.f1970d.pause();
            }
        }

        @Override // chuangyuan.ycj.videolibrary.listener.VideoInfoListener
        public void onLoadingChanged() {
        }

        @Override // chuangyuan.ycj.videolibrary.listener.VideoInfoListener
        public void onPlayEnd() {
        }

        @Override // chuangyuan.ycj.videolibrary.listener.VideoInfoListener
        public void onPlayStart(long j2) {
            YXPlayActivity yXPlayActivity = YXPlayActivity.this;
            yXPlayActivity.mSeekBar.postDelayed(yXPlayActivity.b, 500L);
        }

        @Override // chuangyuan.ycj.videolibrary.listener.VideoInfoListener
        public void onPlayerError(@Nullable w wVar) {
        }
    }

    /* loaded from: classes.dex */
    public class b implements SeekBar.OnSeekBarChangeListener {
        public b() {
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onProgressChanged(SeekBar seekBar, int i2, boolean z) {
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStartTrackingTouch(SeekBar seekBar) {
            YXPlayActivity.this.f1974h = true;
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStopTrackingTouch(SeekBar seekBar) {
            YXPlayActivity yXPlayActivity = YXPlayActivity.this;
            yXPlayActivity.f1974h = false;
            yXPlayActivity.f1969c.seekTo(yXPlayActivity.mSeekBar.getProgress());
        }
    }

    /* loaded from: classes.dex */
    public class c extends j<YXNovelDetail> {
        public c() {
        }

        @Override // m.j
        public void d() {
        }

        @Override // m.j
        public void e(Throwable th) {
            h.p1(e.a("3+zUgeTl36HegKDZnfbTjqrihsDam42W"));
        }

        @Override // m.j
        public void f(YXNovelDetail yXNovelDetail) {
            YXNovelDetail yXNovelDetail2 = yXNovelDetail;
            YXPlayActivity yXPlayActivity = YXPlayActivity.this;
            yXPlayActivity.f1972f = yXNovelDetail2;
            List<YXNovelDetail.DataBean.RadioListBean> radio_list = yXNovelDetail2.getData().getRadio_list();
            yXPlayActivity.f1971e = radio_list;
            if (yXPlayActivity.f1975i >= radio_list.size()) {
                yXPlayActivity.f1975i = 0;
            }
            int i2 = yXPlayActivity.f1975i;
            if (i2 >= 0 && i2 < yXPlayActivity.f1971e.size()) {
                yXPlayActivity.mTvTitle.setText(yXPlayActivity.f1971e.get(yXPlayActivity.f1975i).getName());
                yXPlayActivity.f1969c.setPlayUri(yXPlayActivity.f1972f.getData().getUrl());
                yXPlayActivity.f1969c.startPlayer();
                yXPlayActivity.f1969c.seekTo(0L);
                yXPlayActivity.mIvPlay.setImageResource(R.drawable.maomi_pause);
                return;
            }
            h.p1(e.a("0fDOgv/N367Sga/Jkf76g5jN"));
        }
    }

    public static void o(Context context, String str, int i2) {
        Intent intent = new Intent(context, YXPlayActivity.class);
        intent.putExtra(e.a("UwMXBQ=="), str);
        intent.putExtra(e.a("XgwHARM="), i2);
        context.startActivity(intent);
    }

    @Override // com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        this.f1973g = intent.getStringExtra(e.a("UwMXBQ=="));
        this.f1975i = intent.getIntExtra(e.a("XgwHARM="), 0);
    }

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_sex8_fm_play;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        j(-1);
        this.f1969c = h.h(this, (VideoPlayerView) findViewById(R.id.vp_video));
        l();
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.mIvImg, e.a("RQ0XBR8aVl0="), 1.0f, 357.0f);
        this.f1970d = ofFloat;
        ofFloat.setRepeatCount(100000);
        this.f1970d.setDuration(60000L);
        this.f1970d.setInterpolator(new LinearInterpolator());
        this.f1970d.start();
        this.f1969c.addVideoInfoListener(new a());
        this.mSeekBar.setOnSeekBarChangeListener(new b());
    }

    public final void l() {
        f.e.a.j.k0.a.a a2 = f.e.a.j.k0.a.b.a();
        YXParams yXParams = new YXParams();
        yXParams.setV(e.a("Vg4BEQYsS1IXD1s="));
        List<YXNovelDetail.DataBean.RadioListBean> list = this.f1971e;
        if (list != null) {
            yXParams.setRadio_id(list.get(this.f1975i).getRadio_id());
        } else {
            yXParams.setRadio_id(this.f1973g);
        }
        yXParams.setOp(0);
        yXParams.setDevice_type(e.a("Bg=="));
        yXParams.setAlbum_id(YXDetailActivity.f1963e);
        k(a2.c(yXParams.toJson(), System.currentTimeMillis()), new c());
    }

    public /* synthetic */ void m() {
        ExoUserPlayer exoUserPlayer = this.f1969c;
        if (exoUserPlayer == null || this.mSeekBar == null || !exoUserPlayer.isPlaying()) {
            return;
        }
        long currentPosition = this.f1969c.getCurrentPosition();
        long duration = this.f1969c.getDuration();
        if (!this.f1974h) {
            this.mSeekBar.setMax((int) duration);
            this.mSeekBar.setProgress((int) currentPosition);
        }
        this.mTvCurrent.setText(n(currentPosition));
        this.mTvAll.setText(n(duration));
        if (this.f1969c.isPlaying()) {
            this.mSeekBar.postDelayed(this.b, 500L);
        }
    }

    public String n(long j2) {
        String valueOf;
        String valueOf2;
        long j3 = j2 / 1000;
        long j4 = j3 % 60;
        long j5 = j3 / 60;
        StringBuilder sb = new StringBuilder();
        if (j5 < 10) {
            valueOf = e.a("Bw==") + j5;
        } else {
            valueOf = String.valueOf(j5);
        }
        f.b.a.a.a.B(sb, valueOf, "DQ==");
        if (j4 < 10) {
            valueOf2 = e.a("Bw==") + j4;
        } else {
            valueOf2 = String.valueOf(j4);
        }
        sb.append(valueOf2);
        return sb.toString();
    }

    @Override // com.comeback.data.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        try {
            this.f1970d.cancel();
            this.f1969c.onDestroy();
        } catch (Exception unused) {
        }
    }

    @OnClick
    public void onViewClicked(View view) {
        List<YXNovelDetail.DataBean.RadioListBean> list;
        int i2;
        switch (view.getId()) {
            case R.id.iv_close /* 2131296499 */:
                finish();
                return;
            case R.id.iv_down /* 2131296507 */:
                h.p1(e.a("0fjhgNP+36fcgLjmnNLog4rf"));
                return;
            case R.id.iv_next /* 2131296523 */:
                if (this.f1971e != null && this.f1975i < list.size() - 1) {
                    this.f1975i++;
                    l();
                    return;
                }
                h.p1(e.a("0dDCgvf636jHg5D9"));
                return;
            case R.id.iv_play /* 2131296526 */:
                List<YXNovelDetail.DataBean.RadioListBean> list2 = this.f1971e;
                if (list2 == null && list2.size() == 0) {
                    return;
                }
                if (this.f1969c.isPlaying()) {
                    this.mIvPlay.setImageResource(R.drawable.maomi_start);
                    this.f1969c.onPause();
                    return;
                }
                this.f1969c.onResume();
                this.mIvPlay.setImageResource(R.drawable.maomi_pause);
                return;
            case R.id.iv_pre /* 2131296527 */:
                if (this.f1971e != null && (i2 = this.f1975i) != 0) {
                    this.f1975i = i2 - 1;
                    l();
                    return;
                }
                h.p1(e.a("0dDCgvf636jHg5D9"));
                return;
            default:
                return;
        }
    }
}
