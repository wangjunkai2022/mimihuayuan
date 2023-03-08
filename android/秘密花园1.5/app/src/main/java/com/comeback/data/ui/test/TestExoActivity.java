package com.comeback.data.ui.test;

import android.os.Bundle;
import android.os.Environment;
import android.view.View;
import android.widget.ImageView;
import android.widget.SeekBar;
import android.widget.Toast;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import c.a.a.b.g.h;
import chuangyuan.ycj.videolibrary.listener.VideoInfoListener;
import chuangyuan.ycj.videolibrary.video.ExoUserPlayer;
import chuangyuan.ycj.videolibrary.widget.VideoPlayerView;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.i.a.a.w;
import java.io.File;

/* loaded from: classes.dex */
public class TestExoActivity extends AppCompatActivity {

    /* renamed from: e  reason: collision with root package name */
    public static String[] f2152e = {e.a("VgwHFgQaXR0DA0YKERkQAlgMTTYuMn1sNj5gIiokIidoMTcrOTJ+dg=="), e.a("VgwHFgQaXR0DA0YKERkQAlgMTTM5Om12LCNsMz04LSp7PTAwJCF4dDY=")};

    /* renamed from: f  reason: collision with root package name */
    public static String f2153f = e.a("YwcQEA==");
    public ExoUserPlayer a;
    public Runnable b = new a();

    /* renamed from: c  reason: collision with root package name */
    public SeekBar f2154c;

    /* renamed from: d  reason: collision with root package name */
    public ImageView f2155d;

    /* loaded from: classes.dex */
    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            TestExoActivity testExoActivity = TestExoActivity.this;
            ExoUserPlayer exoUserPlayer = testExoActivity.a;
            if (exoUserPlayer == null || testExoActivity.f2154c == null || !exoUserPlayer.isPlaying()) {
                return;
            }
            long currentPosition = TestExoActivity.this.a.getCurrentPosition();
            TestExoActivity testExoActivity2 = TestExoActivity.this;
            testExoActivity2.f2154c.setProgress((int) ((currentPosition * 1000) / testExoActivity2.a.getDuration()));
            if (TestExoActivity.this.a.isPlaying()) {
                TestExoActivity testExoActivity3 = TestExoActivity.this;
                testExoActivity3.f2154c.postDelayed(testExoActivity3.b, 300L);
            }
        }
    }

    /* loaded from: classes.dex */
    public class b implements View.OnClickListener {
        public b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (TestExoActivity.this.a.isPlaying()) {
                TestExoActivity.this.a.onPause();
            } else {
                TestExoActivity.this.a.onResume();
            }
            if (TestExoActivity.this.a.isPlaying()) {
                TestExoActivity.this.f2155d.setImageDrawable(null);
            } else {
                TestExoActivity.this.f2155d.setImageResource(R.mipmap.player_icon_start_play);
            }
        }
    }

    /* loaded from: classes.dex */
    public class c implements SeekBar.OnSeekBarChangeListener {
        public c() {
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onProgressChanged(SeekBar seekBar, int i2, boolean z) {
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStartTrackingTouch(SeekBar seekBar) {
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStopTrackingTouch(SeekBar seekBar) {
            TestExoActivity.this.a.seekTo((TestExoActivity.this.a.getDuration() / 1000) * seekBar.getProgress());
        }
    }

    /* loaded from: classes.dex */
    public class d implements VideoInfoListener {
        public d() {
        }

        @Override // chuangyuan.ycj.videolibrary.listener.VideoInfoListener
        public void isPlaying(boolean z) {
        }

        @Override // chuangyuan.ycj.videolibrary.listener.VideoInfoListener
        public void onLoadingChanged() {
        }

        @Override // chuangyuan.ycj.videolibrary.listener.VideoInfoListener
        public void onPlayEnd() {
            TestExoActivity.this.a.startPlayer();
        }

        @Override // chuangyuan.ycj.videolibrary.listener.VideoInfoListener
        public void onPlayStart(long j2) {
            TestExoActivity testExoActivity = TestExoActivity.this;
            testExoActivity.f2154c.postDelayed(testExoActivity.b, 300L);
            TestExoActivity.this.f2155d.setClickable(true);
        }

        @Override // chuangyuan.ycj.videolibrary.listener.VideoInfoListener
        public void onPlayerError(@Nullable w wVar) {
            TestExoActivity.this.f2155d.setClickable(false);
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_text_exo);
        ExoUserPlayer h2 = h.h(this, (VideoPlayerView) findViewById(R.id.video_view));
        this.a = h2;
        h2.hideControllerView();
        try {
            if (ContextCompat.checkSelfPermission(this, e.a("VgwHFgQaXR0DA0YKERkQAlgMTTM5Om12LCNsMz04LSp7PTAwJCF4dDY=")) != 0) {
                ActivityCompat.requestPermissions(this, f2152e, 1);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        e.a("XxYXFFFcFgJCXxpfTERWWRlQUlFERQwEQFYDIkxdVFMEJ1RVUkQBBUcgAFA5XExbBFJTVFNDCwNDUwxQSSxbXAZWUyYvQn0HR1Z2XkBcUip2VyVdKV4MBEdSGVdIUydGAiYgIUZKAQA1IgMiSiglXAVMDhRfTFpQHAJRWkhfUlkRBhYWCgdQXB1bBl9KTAYTRwsRAVZCAQNDVhIXCwMHVlIAAl1SQgkHRlYAUkxZBgkFVFYHUxcOCxUABVYeWwdcERcTFzQQVVoWCEA4Fg8XAkdfBwENRABSRgUSEggZPB9EX1JRXEUIC0FSBVBeHxMYaBcQARkaXQ5VE0AOHFclOnUIJRYbJGFaSyV1A09ZCDt8USkTPAsfRRoCCT81PggReCYyVyUZbAY9ARIREw8aVnZaWgVcQ1sEQVFQA0wOAQoGW1oCXkABVRFSBFFLXlZdB0QQFFZVW1BOVBIDCg9eHgVTRRcCTg0BVQdYDicYBg9eEAYHHyxdXB4HXQlFEwgeUAFNBxtACB0cEkBJGwMBBUMUTQoOBx9SHw9rFR0OChlSARc7DgtmVQcHU1odDgANVlIAUVpCWFcXUQUBHFoFClIHWlMPR1sGR1NXV0oLU1MPVVBWD0JaAUteBV9eCw8CaBAGAAIBXFAHOVEfJx4OAlkLDQM0B0oOQlMDUUlSUV8GVEUFBxpmQRYCXRUdCRc0Uho8EAYaV1odAWsCABoKGVJfUFJbQx9SHw9rFR0OChlSARc7DgtmWxwSCVc=");
        e.a("XxYXFBhJFhweFgBJDgAQA15MAAsGXAsDQl4ZV0xHUloYVVRRW0FaVhUDAQEdXVQPUlQFUwhKXAYWBwMEHV9aWlVMDhRf");
        e.a("XxYXFBhJFhwSA0IOVgsaHFsRCwsbXVpcHklWDh4aEhlECQEFHBhNHEBXG1NMXlteDlMGVlxCDFJGUVdSGQxSXVNXWwdcRl0GQwNXOEg1Ag0CVQFVDhILUkIHAFcbXAIPDwNRAVNLCwsQAwEEQVlNBkdWTA0FF1xLXQsHEkA=");
        StringBuilder sb = new StringBuilder();
        sb.append(Environment.getExternalStorageDirectory().getPath());
        this.a.setPlayUri(f.b.a.a.a.n(sb, File.separator, "VQMNBQUSF14DUg=="));
        this.a.startPlayer();
        VideoPlayerView videoPlayerView = (VideoPlayerView) findViewById(R.id.video_view);
        this.f2154c = (SeekBar) findViewById(R.id.seek_bar);
        ((View) videoPlayerView.getPlaybackControlView().findViewById(R.id.exo_controller_top).getParent()).setVisibility(8);
        ImageView imageView = (ImageView) findViewById(R.id.iv_play);
        this.f2155d = imageView;
        imageView.setClickable(false);
        this.f2155d.setOnClickListener(new b());
        ((ImageView) videoPlayerView.findViewById(R.id.exo_controls_back)).setImageDrawable(null);
        this.f2154c.setOnSeekBarChangeListener(new c());
        this.a.addVideoInfoListener(new d());
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        this.a.onDestroy();
        super.onDestroy();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        this.a.onPause();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity, androidx.core.app.ActivityCompat.OnRequestPermissionsResultCallback
    public void onRequestPermissionsResult(int i2, String[] strArr, int[] iArr) {
        if (i2 != 1) {
            return;
        }
        if (iArr.length > 0 && iArr[0] == 0) {
            e.a("WAwxARoGXEAHNlEVFQMQGF4NDRc5FkpGHxIUAAoLDR9SBg==");
            Toast.makeText(this, e.a("0f/gjfLj3qfAjpvQnuLzjr39"), 0).show();
            return;
        }
        e.a("WAwxARoGXEAHNlEVFQMQGF4NDRc5FkpGHxIUAx0ECg5T");
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        this.a.onResume();
    }
}
