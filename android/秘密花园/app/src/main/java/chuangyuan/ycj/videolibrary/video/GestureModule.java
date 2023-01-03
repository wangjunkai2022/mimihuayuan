package chuangyuan.ycj.videolibrary.video;

import android.app.Activity;
import android.media.AudioManager;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.WindowManager;
import androidx.annotation.NonNull;
import androidx.core.content.ContextCompat;
import chuangyuan.ycj.videolibrary.R;
import chuangyuan.ycj.videolibrary.listener.BasePlayerListener;
import chuangyuan.ycj.videolibrary.listener.ExoPlayerViewListener;
import chuangyuan.ycj.videolibrary.listener.OnEndGestureListener;
import chuangyuan.ycj.videolibrary.listener.OnGestureBrightnessListener;
import chuangyuan.ycj.videolibrary.listener.OnGestureProgressListener;
import chuangyuan.ycj.videolibrary.listener.OnGestureVolumeListener;
import chuangyuan.ycj.videolibrary.utils.VideoPlayUtils;
import f.b.a.a.a;
import f.i.a.a.m1.h0;
import f.i.a.a.t0;
import java.lang.ref.WeakReference;
import java.util.Formatter;
import java.util.Iterator;
import java.util.Locale;

/* loaded from: classes.dex */
public class GestureModule implements BasePlayerListener, OnEndGestureListener {
    public static final /* synthetic */ boolean $assertionsDisabled = false;
    public static final String TAG = "chuangyuan.ycj.videolibrary.video.GestureModule";
    public final Activity activity;
    public AudioManager audioManager;
    public final ExoUserPlayer exoUserPlayer;
    public final GestureDetector gestureDetector;
    public int mMaxVolume;
    public OnGestureBrightnessListener onGestureBrightnessListener;
    public OnGestureProgressListener onGestureProgressListener;
    public OnGestureVolumeListener onGestureVolumeListener;
    public int screeHeightPixels;
    public float brightness = -1.0f;
    public int volume = -1;
    public long newPosition = -1;
    public StringBuilder formatBuilder = new StringBuilder();
    public Formatter formatter = new Formatter(this.formatBuilder, Locale.getDefault());

    /* loaded from: classes.dex */
    public class PlayerGestureListener extends GestureDetector.SimpleOnGestureListener {
        public boolean firstTouch;
        public boolean toSeek;
        public boolean volumeControl;
        public WeakReference<GestureModule> weakReference;

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public boolean onDoubleTap(MotionEvent motionEvent) {
            return true;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onDown(MotionEvent motionEvent) {
            this.firstTouch = true;
            return super.onDown(motionEvent);
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f2, float f3) {
            WeakReference<GestureModule> weakReference = this.weakReference;
            if (weakReference == null || weakReference.get() == null) {
                return false;
            }
            float x = motionEvent.getX();
            float y = motionEvent.getY() - motionEvent2.getY();
            float x2 = x - motionEvent2.getX();
            if (this.firstTouch) {
                boolean z = true;
                this.toSeek = Math.abs(f2) >= Math.abs(f3);
                if (x <= ((float) GestureModule.this.screeHeightPixels) * 0.5f) {
                    z = false;
                }
                this.volumeControl = z;
                this.firstTouch = false;
            }
            if (this.toSeek) {
                long currentPosition = GestureModule.this.exoUserPlayer.getCurrentPosition();
                long duration = GestureModule.this.exoUserPlayer.getDuration();
                long j2 = (long) ((int) ((((-x2) * ((float) duration)) / ((float) GestureModule.this.screeHeightPixels)) + ((float) currentPosition)));
                long j3 = j2 > duration ? duration : j2 <= 0 ? 0 : j2;
                GestureModule gestureModule = GestureModule.this;
                gestureModule.showProgressDialog(j3, duration, h0.L(gestureModule.formatBuilder, GestureModule.this.formatter, j3), h0.L(GestureModule.this.formatBuilder, GestureModule.this.formatter, duration));
            } else {
                float screenHeight = y / ((float) VideoPlayUtils.getScreenHeight(GestureModule.this.activity));
                if (this.volumeControl) {
                    GestureModule.this.showVolumeDialog(screenHeight);
                } else {
                    GestureModule.this.showBrightnessDialog(screenHeight);
                }
            }
            return super.onScroll(motionEvent, motionEvent2, f2, f3);
        }

        public PlayerGestureListener(GestureModule gestureModule) {
            this.weakReference = new WeakReference<>(gestureModule);
        }
    }

    public GestureModule(@NonNull Activity activity, @NonNull ExoUserPlayer exoUserPlayer) {
        this.exoUserPlayer = exoUserPlayer;
        this.activity = activity;
        AudioManager audioManager = (AudioManager) activity.getSystemService("audio");
        this.audioManager = audioManager;
        this.mMaxVolume = audioManager.getStreamMaxVolume(3);
        this.screeHeightPixels = activity.getResources().getDisplayMetrics().heightPixels;
        this.gestureDetector = new GestureDetector(activity, new PlayerGestureListener(this));
    }

    private void endGesture() {
        this.volume = -1;
        this.brightness = -1.0f;
        long j2 = this.newPosition;
        if (j2 >= 0) {
            OnGestureProgressListener onGestureProgressListener = this.onGestureProgressListener;
            if (onGestureProgressListener != null) {
                onGestureProgressListener.endGestureProgress(j2);
                this.newPosition = -1;
            } else {
                this.exoUserPlayer.seekTo(j2);
                this.newPosition = -1;
            }
        }
        Iterator<ExoPlayerViewListener> it = this.exoUserPlayer.getPlayerViewListeners().iterator();
        while (it.hasNext()) {
            it.next().showGestureView(8);
        }
    }

    /* access modifiers changed from: private */
    public synchronized void showBrightnessDialog(float f2) {
        if (this.brightness < 0.0f) {
            float f3 = this.activity.getWindow().getAttributes().screenBrightness;
            this.brightness = f3;
            if (f3 <= 0.0f) {
                this.brightness = 0.5f;
            } else if (f3 < 0.01f) {
                this.brightness = 0.01f;
            }
        }
        WindowManager.LayoutParams attributes = this.activity.getWindow().getAttributes();
        float f4 = this.brightness + f2;
        attributes.screenBrightness = f4;
        if (((double) f4) > 1.0d) {
            attributes.screenBrightness = 1.0f;
        } else if (f4 < 0.01f) {
            attributes.screenBrightness = 0.01f;
        }
        this.activity.getWindow().setAttributes(attributes);
        if (this.onGestureBrightnessListener != null) {
            this.onGestureBrightnessListener.setBrightnessPosition(100, (int) (attributes.screenBrightness * 100.0f));
        } else {
            Iterator<ExoPlayerViewListener> it = this.exoUserPlayer.getPlayerViewListeners().iterator();
            while (it.hasNext()) {
                it.next().setBrightnessPosition(100, (int) (attributes.screenBrightness * 100.0f));
            }
        }
    }

    /* access modifiers changed from: private */
    public void showProgressDialog(long j2, long j3, String str, String str2) {
        this.newPosition = j2;
        OnGestureProgressListener onGestureProgressListener = this.onGestureProgressListener;
        if (onGestureProgressListener != null) {
            onGestureProgressListener.showProgressDialog(j2, j3, str, str2);
            return;
        }
        String g2 = a.g(str, "/", str2);
        ForegroundColorSpan foregroundColorSpan = new ForegroundColorSpan(ContextCompat.getColor(this.activity, R.color.simple_exo_style_color));
        SpannableString spannableString = new SpannableString(g2);
        spannableString.setSpan(foregroundColorSpan, 0, str.length(), 33);
        Iterator<ExoPlayerViewListener> it = this.exoUserPlayer.getPlayerViewListeners().iterator();
        while (it.hasNext()) {
            it.next().setTimePosition(spannableString);
        }
    }

    /* access modifiers changed from: private */
    public void showVolumeDialog(float f2) {
        if (this.volume == -1) {
            int streamVolume = this.audioManager.getStreamVolume(3);
            this.volume = streamVolume;
            if (streamVolume < 0) {
                this.volume = 0;
            }
        }
        int i2 = this.mMaxVolume;
        int i3 = ((int) (f2 * ((float) i2))) + this.volume;
        if (i3 <= i2) {
            i2 = i3 < 0 ? 0 : i3;
        }
        this.audioManager.setStreamVolume(3, i2, 0);
        OnGestureVolumeListener onGestureVolumeListener = this.onGestureVolumeListener;
        if (onGestureVolumeListener != null) {
            onGestureVolumeListener.setVolumePosition(this.mMaxVolume, i2);
            return;
        }
        Iterator<ExoPlayerViewListener> it = this.exoUserPlayer.getPlayerViewListeners().iterator();
        while (it.hasNext()) {
            it.next().setVolumePosition(this.mMaxVolume, i2);
        }
    }

    @Override // chuangyuan.ycj.videolibrary.listener.BasePlayerListener
    public void onDestroy() {
        this.audioManager = null;
        this.formatBuilder = null;
        Formatter formatter = this.formatter;
        if (formatter != null) {
            formatter.close();
        }
        this.formatter = null;
        this.onGestureBrightnessListener = null;
        this.onGestureProgressListener = null;
        this.onGestureVolumeListener = null;
    }

    @Override // chuangyuan.ycj.videolibrary.listener.OnEndGestureListener
    public void onEndGesture() {
        endGesture();
    }

    @Override // chuangyuan.ycj.videolibrary.listener.OnEndGestureListener
    public void onTouchEvent(MotionEvent motionEvent) {
        GestureDetector gestureDetector = this.gestureDetector;
        if (gestureDetector != null) {
            gestureDetector.onTouchEvent(motionEvent);
        }
    }

    public void setOnGestureBrightnessListener(OnGestureBrightnessListener onGestureBrightnessListener) {
        this.onGestureBrightnessListener = onGestureBrightnessListener;
    }

    public void setOnGestureProgressListener(OnGestureProgressListener onGestureProgressListener) {
        this.onGestureProgressListener = onGestureProgressListener;
    }

    public void setOnGestureVolumeListener(OnGestureVolumeListener onGestureVolumeListener) {
        this.onGestureVolumeListener = onGestureVolumeListener;
    }

    @Override // chuangyuan.ycj.videolibrary.listener.BasePlayerListener
    public void setPlayer(t0 t0Var) {
    }
}
