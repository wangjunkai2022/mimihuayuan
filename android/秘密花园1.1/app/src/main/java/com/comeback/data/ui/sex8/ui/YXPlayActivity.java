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
    public Runnable b = new Runnable() { // from class: f.e.a.j.j0.b.a
        @Override // java.lang.Runnable
        public final void run() {
            YXPlayActivity.this.m();
        }
    };

    /* renamed from: c  reason: collision with root package name */
    public ExoUserPlayer f1890c;

    /* renamed from: d  reason: collision with root package name */
    public ObjectAnimator f1891d;

    /* renamed from: e  reason: collision with root package name */
    public List<YXNovelDetail.DataBean.RadioListBean> f1892e;

    /* renamed from: f  reason: collision with root package name */
    public YXNovelDetail f1893f;

    /* renamed from: g  reason: collision with root package name */
    public String f1894g;

    /* renamed from: h  reason: collision with root package name */
    public boolean f1895h;

    /* renamed from: i  reason: collision with root package name */
    public int f1896i;
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
                YXPlayActivity.this.f1891d.resume();
            } else {
                YXPlayActivity.this.f1891d.pause();
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
            YXPlayActivity.this.f1895h = true;
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStopTrackingTouch(SeekBar seekBar) {
            YXPlayActivity yXPlayActivity = YXPlayActivity.this;
            yXPlayActivity.f1895h = false;
            yXPlayActivity.f1890c.seekTo(yXPlayActivity.mSeekBar.getProgress());
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
            h.n1(e.a("3+zUgeTl36HegKDZnfbTjqrihsDam42W"));
        }

        @Override // m.j
        public void f(YXNovelDetail yXNovelDetail) {
            YXNovelDetail yXNovelDetail2 = yXNovelDetail;
            YXPlayActivity yXPlayActivity = YXPlayActivity.this;
            yXPlayActivity.f1893f = yXNovelDetail2;
            List<YXNovelDetail.DataBean.RadioListBean> radio_list = yXNovelDetail2.getData().getRadio_list();
            yXPlayActivity.f1892e = radio_list;
            if (yXPlayActivity.f1896i >= radio_list.size()) {
                yXPlayActivity.f1896i = 0;
            }
            int i2 = yXPlayActivity.f1896i;
            if (i2 >= 0 && i2 < yXPlayActivity.f1892e.size()) {
                yXPlayActivity.mTvTitle.setText(yXPlayActivity.f1892e.get(yXPlayActivity.f1896i).getName());
                yXPlayActivity.f1890c.setPlayUri(yXPlayActivity.f1893f.getData().getUrl());
                yXPlayActivity.f1890c.startPlayer();
                yXPlayActivity.f1890c.seekTo(0L);
                yXPlayActivity.mIvPlay.setImageResource(R.drawable.maomi_pause);
                return;
            }
            h.n1(e.a("0fDOgv/N367Sga/Jkf76g5jN"));
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
        this.f1894g = intent.getStringExtra(e.a("UwMXBQ=="));
        this.f1896i = intent.getIntExtra(e.a("XgwHARM="), 0);
    }

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_sex8_fm_play;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        j(-1);
        this.f1890c = h.h(this, (VideoPlayerView) findViewById(R.id.vp_video));
        l();
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.mIvImg, e.a("RQ0XBR8aVl0="), 1.0f, 357.0f);
        this.f1891d = ofFloat;
        ofFloat.setRepeatCount(100000);
        this.f1891d.setDuration(60000L);
        this.f1891d.setInterpolator(new LinearInterpolator());
        this.f1891d.start();
        this.f1890c.addVideoInfoListener(new a());
        this.mSeekBar.setOnSeekBarChangeListener(new b());
    }

    public final void l() {
        f.e.a.j.j0.a.a a2 = f.e.a.j.j0.a.b.a();
        YXParams yXParams = new YXParams();
        yXParams.setV(e.a("Vg4BEQYsS1IXD1s="));
        List<YXNovelDetail.DataBean.RadioListBean> list = this.f1892e;
        if (list != null) {
            yXParams.setRadio_id(list.get(this.f1896i).getRadio_id());
        } else {
            yXParams.setRadio_id(this.f1894g);
        }
        yXParams.setOp(0);
        yXParams.setDevice_type(e.a("Bg=="));
        yXParams.setAlbum_id(YXDetailActivity.f1884e);
        k(a2.c(yXParams.toJson(), System.currentTimeMillis()), new c());
    }

    public /* synthetic */ void m() {
        ExoUserPlayer exoUserPlayer = this.f1890c;
        if (exoUserPlayer == null || this.mSeekBar == null || !exoUserPlayer.isPlaying()) {
            return;
        }
        long currentPosition = this.f1890c.getCurrentPosition();
        long duration = this.f1890c.getDuration();
        if (!this.f1895h) {
            this.mSeekBar.setMax((int) duration);
            this.mSeekBar.setProgress((int) currentPosition);
        }
        this.mTvCurrent.setText(n(currentPosition));
        this.mTvAll.setText(n(duration));
        if (this.f1890c.isPlaying()) {
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
            this.f1891d.cancel();
            this.f1890c.onDestroy();
        } catch (Exception unused) {
        }
    }

    @OnClick
    public void onViewClicked(View view) {
        List<YXNovelDetail.DataBean.RadioListBean> list;
        int i2;
        switch (view.getId()) {
            case R.id.iv_close /* 2131296497 */:
                finish();
                return;
            case R.id.iv_down /* 2131296505 */:
                h.n1(e.a("0fjhgNP+36fcgLjmnNLog4rf"));
                return;
            case R.id.iv_next /* 2131296521 */:
                if (this.f1892e != null && this.f1896i < list.size() - 1) {
                    this.f1896i++;
                    l();
                    return;
                }
                h.n1(e.a("0dDCgvf636jHg5D9"));
                return;
            case R.id.iv_play /* 2131296524 */:
                List<YXNovelDetail.DataBean.RadioListBean> list2 = this.f1892e;
                if (list2 == null && list2.size() == 0) {
                    return;
                }
                if (this.f1890c.isPlaying()) {
                    this.mIvPlay.setImageResource(R.drawable.maomi_start);
                    this.f1890c.onPause();
                    return;
                }
                this.f1890c.onResume();
                this.mIvPlay.setImageResource(R.drawable.maomi_pause);
                return;
            case R.id.iv_pre /* 2131296525 */:
                if (this.f1892e != null && (i2 = this.f1896i) != 0) {
                    this.f1896i = i2 - 1;
                    l();
                    return;
                }
                h.n1(e.a("0dDCgvf636jHg5D9"));
                return;
            default:
                return;
        }
    }
}
