package com.comeback.data.ui.maomi;

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
import com.comeback.data.ui.maomi.VoicePlayActivity;
import com.comeback.data.ui.maomi.bean.VoiceDetail;
import com.comeback.data.ui.maomi.bean.VoiceList;
import com.comeback.data.widget.RatioImageView;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.c0.j;
import f.e.a.j.c0.m.d;
import f.i.a.a.w;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class VoicePlayActivity extends BaseActivity {

    /* renamed from: c  reason: collision with root package name */
    public ExoUserPlayer f1571c;

    /* renamed from: d  reason: collision with root package name */
    public ObjectAnimator f1572d;

    /* renamed from: f  reason: collision with root package name */
    public List<VoiceDetail.DataBeanX.DataBean> f1574f;

    /* renamed from: g  reason: collision with root package name */
    public VoiceList.DataBeanX.DataBean f1575g;

    /* renamed from: h  reason: collision with root package name */
    public boolean f1576h;
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
    public Runnable b = new Runnable() { // from class: f.e.a.j.c0.e
        @Override // java.lang.Runnable
        public final void run() {
            VoicePlayActivity.this.l();
        }
    };

    /* renamed from: e  reason: collision with root package name */
    public int f1573e = 0;

    /* loaded from: classes.dex */
    public class a implements VideoInfoListener {
        public a() {
        }

        @Override // chuangyuan.ycj.videolibrary.listener.VideoInfoListener
        public void isPlaying(boolean z) {
            if (z) {
                VoicePlayActivity.this.f1572d.resume();
            } else {
                VoicePlayActivity.this.f1572d.pause();
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
            VoicePlayActivity voicePlayActivity = VoicePlayActivity.this;
            voicePlayActivity.mSeekBar.postDelayed(voicePlayActivity.b, 500L);
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
            VoicePlayActivity.this.f1576h = true;
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStopTrackingTouch(SeekBar seekBar) {
            VoicePlayActivity voicePlayActivity = VoicePlayActivity.this;
            voicePlayActivity.f1576h = false;
            voicePlayActivity.f1571c.seekTo(voicePlayActivity.mSeekBar.getProgress());
        }
    }

    public static void n(Context context, VoiceList.DataBeanX.DataBean dataBean) {
        Intent intent = new Intent(context, VoicePlayActivity.class);
        intent.putExtra(e.a("UwMXBQ=="), dataBean);
        context.startActivity(intent);
    }

    @Override // com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        this.f1575g = (VoiceList.DataBeanX.DataBean) intent.getParcelableExtra(e.a("UwMXBQ=="));
    }

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_mm_voice_detail;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        j(-1);
        this.mTvTitle.setText(this.f1575g.getName());
        h.z0(this.f1575g.getThumb(), this.mIvImg);
        this.f1571c = h.h(this, (VideoPlayerView) findViewById(R.id.vp_video));
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(e.a("XgY="), this.f1575g.getId());
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        k(d.a().d(f.e.a.j.c0.m.b.a(jSONObject.toString())), new j(this));
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.mIvImg, e.a("RQ0XBR8aVl0="), 1.0f, 357.0f);
        this.f1572d = ofFloat;
        ofFloat.setRepeatCount(100000);
        this.f1572d.setDuration(60000L);
        this.f1572d.setInterpolator(new LinearInterpolator());
        this.f1572d.start();
        this.f1571c.addVideoInfoListener(new a());
        this.mSeekBar.setOnSeekBarChangeListener(new b());
    }

    public /* synthetic */ void l() {
        ExoUserPlayer exoUserPlayer = this.f1571c;
        if (exoUserPlayer == null || this.mSeekBar == null || !exoUserPlayer.isPlaying()) {
            return;
        }
        long currentPosition = this.f1571c.getCurrentPosition();
        long duration = this.f1571c.getDuration();
        if (!this.f1576h) {
            this.mSeekBar.setMax((int) duration);
            this.mSeekBar.setProgress((int) currentPosition);
        }
        this.mTvCurrent.setText(m(currentPosition));
        this.mTvAll.setText(m(duration));
        if (this.f1571c.isPlaying()) {
            this.mSeekBar.postDelayed(this.b, 500L);
        }
    }

    public String m(long j2) {
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
            this.f1572d.cancel();
            this.f1571c.onDestroy();
        } catch (Exception unused) {
        }
    }

    @OnClick
    public void onViewClicked(View view) {
        List<VoiceDetail.DataBeanX.DataBean> list;
        switch (view.getId()) {
            case R.id.iv_close /* 2131296497 */:
                finish();
                return;
            case R.id.iv_down /* 2131296505 */:
                h.n1(e.a("0fjhgNP+36fcgLjmnNLog4rf"));
                return;
            case R.id.iv_next /* 2131296521 */:
                if (this.f1574f == null || this.f1573e == list.size() - 1) {
                    return;
                }
                ExoUserPlayer exoUserPlayer = this.f1571c;
                List<VoiceDetail.DataBeanX.DataBean> list2 = this.f1574f;
                int i2 = this.f1573e + 1;
                this.f1573e = i2;
                exoUserPlayer.setPlayUri(list2.get(i2).getContent());
                this.f1571c.startPlayer();
                this.f1571c.seekTo(0L);
                this.mIvPlay.setImageResource(R.drawable.maomi_pause);
                return;
            case R.id.iv_play /* 2131296524 */:
                List<VoiceDetail.DataBeanX.DataBean> list3 = this.f1574f;
                if (list3 == null && list3.size() == 0) {
                    return;
                }
                if (this.f1571c.isPlaying()) {
                    this.mIvPlay.setImageResource(R.drawable.maomi_start);
                    this.f1571c.onPause();
                    return;
                }
                this.f1571c.onResume();
                this.mIvPlay.setImageResource(R.drawable.maomi_pause);
                return;
            case R.id.iv_pre /* 2131296525 */:
                int i3 = this.f1573e;
                if (i3 != 0) {
                    ExoUserPlayer exoUserPlayer2 = this.f1571c;
                    List<VoiceDetail.DataBeanX.DataBean> list4 = this.f1574f;
                    int i4 = i3 - 1;
                    this.f1573e = i4;
                    exoUserPlayer2.setPlayUri(list4.get(i4).getContent());
                    this.f1571c.startPlayer();
                    this.f1571c.seekTo(0L);
                    this.mIvPlay.setImageResource(R.drawable.maomi_pause);
                    return;
                }
                return;
            default:
                return;
        }
    }
}
