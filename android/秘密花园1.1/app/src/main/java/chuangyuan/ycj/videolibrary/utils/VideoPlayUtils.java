package chuangyuan.ycj.videolibrary.utils;

import android.app.Activity;
import android.app.UiModeManager;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Resources;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.TrafficStats;
import android.net.Uri;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.ViewGroup;
import android.view.WindowManager;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.view.ContextThemeWrapper;
import c.a.a.b.g.h;
import chuangyuan.ycj.videolibrary.listener.DataSourceListener;
import chuangyuan.ycj.videolibrary.video.MediaSourceBuilder;
import f.i.a.a.h1.p;
import f.i.a.a.m1.h0;
import f.i.a.a.w;
import java.io.IOException;

/* loaded from: classes.dex */
public class VideoPlayUtils {
    public static final /* synthetic */ boolean $assertionsDisabled = false;

    @NonNull
    public static MediaSourceBuilder buildMediaSourceBuilder(@NonNull Context context, @Nullable DataSourceListener dataSourceListener) {
        try {
            return (MediaSourceBuilder) Class.forName("chuangyuan.ycj.videolibrary.whole.WholeMediaSource").getConstructor(Context.class, DataSourceListener.class).newInstance(context, dataSourceListener);
        } catch (Exception unused) {
            return new MediaSourceBuilder(context, dataSourceListener);
        }
    }

    public static int dip2px(@NonNull Context context, float f2) {
        return (int) ((f2 * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public static int getActionBarHeight(Activity activity) {
        TypedValue typedValue = new TypedValue();
        if (activity.getTheme().resolveAttribute(16843499, typedValue, true)) {
            return TypedValue.complexToDimensionPixelSize(typedValue.data, activity.getResources().getDisplayMetrics());
        }
        return 0;
    }

    @Nullable
    public static AppCompatActivity getAppCompActivity(@NonNull Context context) {
        if (context instanceof AppCompatActivity) {
            return (AppCompatActivity) context;
        }
        if (context instanceof ContextThemeWrapper) {
            return getAppCompActivity(((ContextThemeWrapper) context).getBaseContext());
        }
        return null;
    }

    public static double getM(long j2) {
        return j2 / 1024.0d;
    }

    public static int getScreenHeight(Context context) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics.heightPixels;
    }

    public static int getScreenWidth(Context context) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics.widthPixels;
    }

    public static int getStatusBarHeight(Context context) {
        int identifier = context.getResources().getIdentifier("status_bar_height", "dimen", "android");
        if (identifier > 0) {
            return context.getResources().getDimensionPixelSize(identifier);
        }
        return 0;
    }

    public static long getTotalRxBytes(@NonNull Context context) {
        if (TrafficStats.getUidRxBytes(context.getApplicationInfo().uid) == -1) {
            return 0L;
        }
        return TrafficStats.getTotalRxBytes() / 1024;
    }

    public static int getUiMode(@NonNull Context context) {
        UiModeManager uiModeManager = (UiModeManager) context.getSystemService("uimode");
        uiModeManager.getCurrentModeType();
        return uiModeManager.getCurrentModeType();
    }

    @Nullable
    public static ViewGroup getViewGroup(@NonNull Context context) {
        return (ViewGroup) scanForActivity(context).findViewById(16908290);
    }

    public static void hideActionBar(@NonNull Context context) {
        ActionBar supportActionBar;
        AppCompatActivity appCompActivity = getAppCompActivity(context);
        if (appCompActivity != null && (supportActionBar = appCompActivity.getSupportActionBar()) != null) {
            supportActionBar.hide();
        }
        scanForActivity(context).getWindow().setFlags(1024, 1024);
    }

    public static int inferContentType(Uri uri) {
        String path = uri.getPath();
        if (path == null) {
            return 3;
        }
        return inferContentType(path);
    }

    public static boolean isBehindLiveWindow(@NonNull w wVar) {
        int i2 = wVar.a;
        if (i2 != 0) {
            return false;
        }
        h.v(i2 == 0);
        Throwable th = wVar.b;
        h.t(th);
        for (Throwable th2 = (IOException) th; th2 != null; th2 = th2.getCause()) {
            if (th2 instanceof p) {
                return true;
            }
        }
        return false;
    }

    public static boolean isLand(@NonNull Context context) {
        Resources resources = context.getResources();
        h.v(resources.getConfiguration() != null);
        return resources.getConfiguration().orientation == 2;
    }

    public static boolean isNetworkAvailable(@NonNull Context context) {
        NetworkInfo[] allNetworkInfo;
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getApplicationContext().getSystemService("connectivity");
        if (connectivityManager != null && (allNetworkInfo = connectivityManager.getAllNetworkInfo()) != null && allNetworkInfo.length > 0) {
            for (NetworkInfo networkInfo : allNetworkInfo) {
                if (networkInfo.getState() == NetworkInfo.State.CONNECTED) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean isTv(@NonNull Context context) {
        return getUiMode(context) == 4;
    }

    public static boolean isWifi(@NonNull Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.getType() == 1;
    }

    public static Activity scanForActivity(@NonNull Context context) {
        if (context instanceof Activity) {
            return (Activity) context;
        }
        if (context instanceof ContextWrapper) {
            return scanForActivity(((ContextWrapper) context).getBaseContext());
        }
        return null;
    }

    public static void showActionBar(@NonNull Context context) {
        ActionBar supportActionBar;
        AppCompatActivity appCompActivity = getAppCompActivity(context);
        if (appCompActivity != null && (supportActionBar = appCompActivity.getSupportActionBar()) != null) {
            supportActionBar.show();
        }
        scanForActivity(context).getWindow().clearFlags(1024);
    }

    public static int inferContentType(String str) {
        String p0 = h0.p0(str);
        if (p0.matches(".*m3u8.*")) {
            return 2;
        }
        if (p0.matches(".*mpd.*")) {
            return 0;
        }
        return p0.matches(".*\\.ism(l)?(/manifest(\\(.+\\))?)?") ? 1 : 3;
    }
}
