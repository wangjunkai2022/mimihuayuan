package chuangyuan.ycj.videolibrary.listener;

import android.text.SpannableString;
import androidx.annotation.NonNull;
import chuangyuan.ycj.videolibrary.video.ExoUserPlayer;
import java.util.List;
/* loaded from: classes.dex */
public interface ExoPlayerViewListener extends BasePlayerListener {
    void exitFull();

    int getHeight();

    void onConfigurationChanged(boolean z);

    void onPrepared();

    void onResumeStart();

    void reset();

    void setBrightnessPosition(int i2, int i3);

    void setControllerHideOnTouch(boolean z);

    void setOpenSeek(boolean z);

    void setPlayerBtnOnTouch(boolean z);

    void setSeekBarOpenSeek(boolean z);

    void setShowWitch(boolean z);

    void setSwitchName(@NonNull List<String> list, int i2);

    void setTag(Integer num);

    void setTimePosition(@NonNull SpannableString spannableString);

    void setUseController(boolean z);

    void setVolumePosition(int i2, int i3);

    void showAlertDialog();

    void showErrorStateView(int i2);

    void showGestureView(int i2);

    void showLoadStateView(int i2);

    void showNetSpeed(String str);

    void showPreview(int i2, boolean z);

    void showReplayView(int i2);

    void startPlayer(ExoUserPlayer exoUserPlayer);

    void toggoleController(boolean z, boolean z2);
}
