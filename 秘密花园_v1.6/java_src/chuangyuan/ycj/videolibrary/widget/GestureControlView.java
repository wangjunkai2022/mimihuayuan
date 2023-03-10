package chuangyuan.ycj.videolibrary.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.text.SpannableString;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import chuangyuan.ycj.videolibrary.R;
/* loaded from: classes.dex */
public class GestureControlView extends FrameLayout {
    public View dialogProLayout;
    public View exoAudioLayout;
    public View exoBrightnessLayout;
    public AppCompatImageView videoAudioImg;
    public ProgressBar videoAudioPro;
    public AppCompatImageView videoBrightnessImg;
    public ProgressBar videoBrightnessPro;
    public AppCompatTextView videoDialogProText;

    public GestureControlView(@NonNull Context context) {
        this(context, null);
    }

    public View getDialogProLayout() {
        return this.dialogProLayout;
    }

    public View getExoAudioLayout() {
        return this.exoAudioLayout;
    }

    public View getExoBrightnessLayout() {
        return this.exoBrightnessLayout;
    }

    public void intiGestureView(int i2, int i3, int i4) {
        this.exoAudioLayout = FrameLayout.inflate(getContext(), i2, null);
        this.exoBrightnessLayout = FrameLayout.inflate(getContext(), i3, null);
        View inflate = FrameLayout.inflate(getContext(), i4, null);
        this.dialogProLayout = inflate;
        inflate.setVisibility(8);
        this.exoAudioLayout.setVisibility(8);
        this.exoBrightnessLayout.setVisibility(8);
        addView(this.dialogProLayout, getChildCount());
        addView(this.exoAudioLayout, getChildCount());
        addView(this.exoBrightnessLayout, getChildCount());
        if (i2 == R.layout.simple_video_audio_brightness_dialog) {
            this.videoAudioImg = (AppCompatImageView) this.exoAudioLayout.findViewById(R.id.exo_video_audio_brightness_img);
            this.videoAudioPro = (ProgressBar) this.exoAudioLayout.findViewById(R.id.exo_video_audio_brightness_pro);
        }
        if (i3 == R.layout.simple_video_audio_brightness_dialog) {
            this.videoBrightnessImg = (AppCompatImageView) this.exoBrightnessLayout.findViewById(R.id.exo_video_audio_brightness_img);
            this.videoBrightnessPro = (ProgressBar) this.exoBrightnessLayout.findViewById(R.id.exo_video_audio_brightness_pro);
        }
        if (i4 == R.layout.simple_exo_video_progress_dialog) {
            this.videoDialogProText = (AppCompatTextView) this.dialogProLayout.findViewById(R.id.exo_video_dialog_pro_text);
        }
    }

    public void setBrightnessPosition(int i2, int i3) {
        View view = this.exoBrightnessLayout;
        if (view != null) {
            if (view.getVisibility() != 0) {
                this.videoBrightnessPro.setMax(i2);
                this.videoBrightnessImg.setImageResource(R.drawable.ic_brightness_6_white_48px);
            }
            this.exoBrightnessLayout.setVisibility(0);
            this.videoBrightnessPro.setProgress(i3);
        }
    }

    public void setTimePosition(@NonNull SpannableString spannableString) {
        View view = this.dialogProLayout;
        if (view != null) {
            view.setVisibility(0);
            this.videoDialogProText.setText(spannableString);
        }
    }

    public void setVolumePosition(int i2, int i3) {
        View view = this.exoAudioLayout;
        if (view != null) {
            if (view.getVisibility() != 0) {
                this.videoAudioPro.setMax(i2);
            }
            this.exoAudioLayout.setVisibility(0);
            this.videoAudioPro.setProgress(i3);
            this.videoAudioImg.setImageResource(i3 == 0 ? R.drawable.ic_volume_off_white_48px : R.drawable.ic_volume_up_white_48px);
        }
    }

    public void showGesture(int i2) {
        View view = this.exoAudioLayout;
        if (view != null) {
            view.setVisibility(i2);
        }
        View view2 = this.exoBrightnessLayout;
        if (view2 != null) {
            view2.setVisibility(i2);
        }
        View view3 = this.dialogProLayout;
        if (view3 != null) {
            view3.setVisibility(i2);
        }
    }

    public GestureControlView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public GestureControlView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        int i3;
        setBackgroundColor(0);
        int i4 = R.layout.simple_exo_video_progress_dialog;
        int i5 = R.layout.simple_video_audio_brightness_dialog;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R.styleable.GestureControlView, 0, 0);
            try {
                int resourceId = obtainStyledAttributes.getResourceId(R.styleable.GestureControlView_player_gesture_audio_layout_id, i5);
                i4 = obtainStyledAttributes.getResourceId(R.styleable.GestureControlView_player_gesture_progress_layout_id, i4);
                int resourceId2 = obtainStyledAttributes.getResourceId(R.styleable.GestureControlView_player_gesture_bright_layout_id, i5);
                obtainStyledAttributes.recycle();
                i3 = resourceId2;
                i5 = resourceId;
            } catch (Throwable th) {
                obtainStyledAttributes.recycle();
                throw th;
            }
        } else {
            i3 = i5;
        }
        intiGestureView(i5, i3, i4);
    }
}
