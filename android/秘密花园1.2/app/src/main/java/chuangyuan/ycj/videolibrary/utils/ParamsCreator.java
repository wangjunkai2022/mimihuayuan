package chuangyuan.ycj.videolibrary.utils;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import androidx.annotation.NonNull;

/* loaded from: classes.dex */
public class ParamsCreator {
    public int densityDpi;
    public int screenWidth;

    public ParamsCreator(@NonNull Context context) {
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        this.screenWidth = windowManager.getDefaultDisplay().getWidth();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        this.densityDpi = displayMetrics.densityDpi;
    }

    public int getDefaultCircleRadius() {
        int i2;
        int i3 = this.screenWidth;
        if (i3 >= 1400) {
            return 50;
        }
        if (i3 >= 1000) {
            int i4 = this.densityDpi;
            if (i4 < 480 && i4 < 320) {
            }
            return 48;
        } else if (i3 >= 700) {
            int i5 = this.densityDpi;
            if (i5 < 320 && i5 < 240 && i5 >= 160) {
            }
            return 34;
        } else {
            if (i3 < 500 || (i2 = this.densityDpi) >= 320 || i2 >= 240 || i2 >= 160) {
            }
            return 30;
        }
    }

    public int getDefaultCircleSpacing() {
        int i2;
        int i3 = this.screenWidth;
        if (i3 >= 1400) {
            return 12;
        }
        if (i3 >= 1000) {
            int i4 = this.densityDpi;
            if (i4 < 480 && i4 < 320) {
            }
            return 12;
        } else if (i3 >= 700) {
            int i5 = this.densityDpi;
            if (i5 < 320 && i5 < 240 && i5 >= 160) {
            }
            return 8;
        } else {
            if (i3 < 500 || (i2 = this.densityDpi) >= 320 || i2 >= 240 || i2 >= 160) {
            }
            return 5;
        }
    }
}
