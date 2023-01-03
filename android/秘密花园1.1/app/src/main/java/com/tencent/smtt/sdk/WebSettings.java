package com.tencent.smtt.sdk;

import android.annotation.TargetApi;
import android.content.Context;
import android.webkit.WebSettings;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.tencent.smtt.export.external.interfaces.IX5WebSettings;
import com.tencent.smtt.sdk.TbsListener;

/* loaded from: classes.dex */
public class WebSettings {
    public static final int LOAD_CACHE_ELSE_NETWORK = 1;
    public static final int LOAD_CACHE_ONLY = 3;
    public static final int LOAD_DEFAULT = -1;
    public static final int LOAD_NORMAL = 0;
    public static final int LOAD_NO_CACHE = 2;
    public IX5WebSettings a;
    public android.webkit.WebSettings b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f2499c;

    /* loaded from: classes.dex */
    public enum LayoutAlgorithm {
        NORMAL,
        SINGLE_COLUMN,
        NARROW_COLUMNS
    }

    /* loaded from: classes.dex */
    public enum PluginState {
        ON,
        ON_DEMAND,
        OFF
    }

    /* loaded from: classes.dex */
    public enum RenderPriority {
        NORMAL,
        HIGH,
        LOW
    }

    /* loaded from: classes.dex */
    public enum TextSize {
        SMALLEST(50),
        SMALLER(75),
        NORMAL(100),
        LARGER(TbsListener.ErrorCode.DOWNLOAD_THROWABLE),
        LARGEST(SwipeRefreshLayout.SCALE_DOWN_DURATION);
        
        public int value;

        TextSize(int i2) {
            this.value = i2;
        }
    }

    /* loaded from: classes.dex */
    public enum ZoomDensity {
        FAR(SwipeRefreshLayout.SCALE_DOWN_DURATION),
        MEDIUM(100),
        CLOSE(75);
        
        public int value;

        ZoomDensity(int i2) {
            this.value = i2;
        }
    }

    public WebSettings(IX5WebSettings iX5WebSettings) {
        this.a = null;
        this.b = null;
        this.f2499c = false;
        this.a = iX5WebSettings;
        this.b = null;
        this.f2499c = true;
    }

    @TargetApi(17)
    public static String getDefaultUserAgent(Context context) {
        if (t.a().b()) {
            return t.a().c().i(context);
        }
        Object a = com.tencent.smtt.utils.k.a((Class<?>) android.webkit.WebSettings.class, "getDefaultUserAgent", (Class<?>[]) new Class[]{Context.class}, context);
        if (a == null) {
            return null;
        }
        return (String) a;
    }

    @Deprecated
    public boolean enableSmoothTransition() {
        android.webkit.WebSettings webSettings;
        Object a;
        IX5WebSettings iX5WebSettings;
        if (this.f2499c && (iX5WebSettings = this.a) != null) {
            return iX5WebSettings.enableSmoothTransition();
        }
        if (this.f2499c || (webSettings = this.b) == null || (a = com.tencent.smtt.utils.k.a(webSettings, "enableSmoothTransition")) == null) {
            return false;
        }
        return ((Boolean) a).booleanValue();
    }

    @TargetApi(11)
    public boolean getAllowContentAccess() {
        android.webkit.WebSettings webSettings;
        Object a;
        IX5WebSettings iX5WebSettings;
        if (this.f2499c && (iX5WebSettings = this.a) != null) {
            return iX5WebSettings.getAllowContentAccess();
        }
        if (this.f2499c || (webSettings = this.b) == null || (a = com.tencent.smtt.utils.k.a(webSettings, "getAllowContentAccess")) == null) {
            return false;
        }
        return ((Boolean) a).booleanValue();
    }

    @TargetApi(3)
    public boolean getAllowFileAccess() {
        android.webkit.WebSettings webSettings;
        IX5WebSettings iX5WebSettings;
        if (this.f2499c && (iX5WebSettings = this.a) != null) {
            return iX5WebSettings.getAllowFileAccess();
        }
        if (this.f2499c || (webSettings = this.b) == null) {
            return false;
        }
        return webSettings.getAllowFileAccess();
    }

    public synchronized boolean getBlockNetworkImage() {
        if (this.f2499c && this.a != null) {
            return this.a.getBlockNetworkImage();
        } else if (this.f2499c || this.b == null) {
            return false;
        } else {
            return this.b.getBlockNetworkImage();
        }
    }

    @TargetApi(8)
    public synchronized boolean getBlockNetworkLoads() {
        if (this.f2499c && this.a != null) {
            return this.a.getBlockNetworkLoads();
        } else if (this.f2499c || this.b == null) {
            return false;
        } else {
            return this.b.getBlockNetworkLoads();
        }
    }

    @TargetApi(3)
    public boolean getBuiltInZoomControls() {
        android.webkit.WebSettings webSettings;
        IX5WebSettings iX5WebSettings;
        if (this.f2499c && (iX5WebSettings = this.a) != null) {
            return iX5WebSettings.getBuiltInZoomControls();
        }
        if (this.f2499c || (webSettings = this.b) == null) {
            return false;
        }
        return webSettings.getBuiltInZoomControls();
    }

    public int getCacheMode() {
        android.webkit.WebSettings webSettings;
        IX5WebSettings iX5WebSettings;
        if (this.f2499c && (iX5WebSettings = this.a) != null) {
            return iX5WebSettings.getCacheMode();
        }
        if (this.f2499c || (webSettings = this.b) == null) {
            return 0;
        }
        return webSettings.getCacheMode();
    }

    public synchronized String getCursiveFontFamily() {
        if (this.f2499c && this.a != null) {
            return this.a.getCursiveFontFamily();
        } else if (this.f2499c || this.b == null) {
            return "";
        } else {
            return this.b.getCursiveFontFamily();
        }
    }

    @TargetApi(5)
    public synchronized boolean getDatabaseEnabled() {
        if (this.f2499c && this.a != null) {
            return this.a.getDatabaseEnabled();
        } else if (this.f2499c || this.b == null) {
            return false;
        } else {
            return this.b.getDatabaseEnabled();
        }
    }

    @TargetApi(5)
    public synchronized String getDatabasePath() {
        if (this.f2499c && this.a != null) {
            return this.a.getDatabasePath();
        } else if (this.f2499c || this.b == null) {
            return "";
        } else {
            return this.b.getDatabasePath();
        }
    }

    public synchronized int getDefaultFixedFontSize() {
        if (this.f2499c && this.a != null) {
            return this.a.getDefaultFixedFontSize();
        } else if (this.f2499c || this.b == null) {
            return 0;
        } else {
            return this.b.getDefaultFixedFontSize();
        }
    }

    public synchronized int getDefaultFontSize() {
        if (this.f2499c && this.a != null) {
            return this.a.getDefaultFontSize();
        } else if (this.f2499c || this.b == null) {
            return 0;
        } else {
            return this.b.getDefaultFontSize();
        }
    }

    public synchronized String getDefaultTextEncodingName() {
        if (this.f2499c && this.a != null) {
            return this.a.getDefaultTextEncodingName();
        } else if (this.f2499c || this.b == null) {
            return "";
        } else {
            return this.b.getDefaultTextEncodingName();
        }
    }

    @TargetApi(7)
    public ZoomDensity getDefaultZoom() {
        android.webkit.WebSettings webSettings;
        IX5WebSettings iX5WebSettings;
        if (this.f2499c && (iX5WebSettings = this.a) != null) {
            return ZoomDensity.valueOf(iX5WebSettings.getDefaultZoom().name());
        }
        if (this.f2499c || (webSettings = this.b) == null) {
            return null;
        }
        return ZoomDensity.valueOf(webSettings.getDefaultZoom().name());
    }

    @TargetApi(11)
    public boolean getDisplayZoomControls() {
        android.webkit.WebSettings webSettings;
        Object a;
        IX5WebSettings iX5WebSettings;
        if (this.f2499c && (iX5WebSettings = this.a) != null) {
            return iX5WebSettings.getDisplayZoomControls();
        }
        if (this.f2499c || (webSettings = this.b) == null || (a = com.tencent.smtt.utils.k.a(webSettings, "getDisplayZoomControls")) == null) {
            return false;
        }
        return ((Boolean) a).booleanValue();
    }

    @TargetApi(7)
    public synchronized boolean getDomStorageEnabled() {
        if (this.f2499c && this.a != null) {
            return this.a.getDomStorageEnabled();
        } else if (this.f2499c || this.b == null) {
            return false;
        } else {
            return this.b.getDomStorageEnabled();
        }
    }

    public synchronized String getFantasyFontFamily() {
        if (this.f2499c && this.a != null) {
            return this.a.getFantasyFontFamily();
        } else if (this.f2499c || this.b == null) {
            return "";
        } else {
            return this.b.getFantasyFontFamily();
        }
    }

    public synchronized String getFixedFontFamily() {
        if (this.f2499c && this.a != null) {
            return this.a.getFixedFontFamily();
        } else if (this.f2499c || this.b == null) {
            return "";
        } else {
            return this.b.getFixedFontFamily();
        }
    }

    public synchronized boolean getJavaScriptCanOpenWindowsAutomatically() {
        if (this.f2499c && this.a != null) {
            return this.a.getJavaScriptCanOpenWindowsAutomatically();
        } else if (this.f2499c || this.b == null) {
            return false;
        } else {
            return this.b.getJavaScriptCanOpenWindowsAutomatically();
        }
    }

    public synchronized boolean getJavaScriptEnabled() {
        if (this.f2499c && this.a != null) {
            return this.a.getJavaScriptEnabled();
        } else if (this.f2499c || this.b == null) {
            return false;
        } else {
            return this.b.getJavaScriptEnabled();
        }
    }

    public synchronized LayoutAlgorithm getLayoutAlgorithm() {
        if (this.f2499c && this.a != null) {
            return LayoutAlgorithm.valueOf(this.a.getLayoutAlgorithm().name());
        } else if (this.f2499c || this.b == null) {
            return null;
        } else {
            return LayoutAlgorithm.valueOf(this.b.getLayoutAlgorithm().name());
        }
    }

    public boolean getLightTouchEnabled() {
        android.webkit.WebSettings webSettings;
        IX5WebSettings iX5WebSettings;
        if (this.f2499c && (iX5WebSettings = this.a) != null) {
            return iX5WebSettings.getLightTouchEnabled();
        }
        if (this.f2499c || (webSettings = this.b) == null) {
            return false;
        }
        return webSettings.getLightTouchEnabled();
    }

    @TargetApi(7)
    public boolean getLoadWithOverviewMode() {
        android.webkit.WebSettings webSettings;
        IX5WebSettings iX5WebSettings;
        if (this.f2499c && (iX5WebSettings = this.a) != null) {
            return iX5WebSettings.getLoadWithOverviewMode();
        }
        if (this.f2499c || (webSettings = this.b) == null) {
            return false;
        }
        return webSettings.getLoadWithOverviewMode();
    }

    public synchronized boolean getLoadsImagesAutomatically() {
        if (this.f2499c && this.a != null) {
            return this.a.getLoadsImagesAutomatically();
        } else if (this.f2499c || this.b == null) {
            return false;
        } else {
            return this.b.getLoadsImagesAutomatically();
        }
    }

    @TargetApi(17)
    public boolean getMediaPlaybackRequiresUserGesture() {
        android.webkit.WebSettings webSettings;
        Object a;
        IX5WebSettings iX5WebSettings;
        if (this.f2499c && (iX5WebSettings = this.a) != null) {
            return iX5WebSettings.getMediaPlaybackRequiresUserGesture();
        }
        if (this.f2499c || (webSettings = this.b) == null || (a = com.tencent.smtt.utils.k.a(webSettings, "getMediaPlaybackRequiresUserGesture")) == null) {
            return false;
        }
        return ((Boolean) a).booleanValue();
    }

    public synchronized int getMinimumFontSize() {
        if (this.f2499c && this.a != null) {
            return this.a.getMinimumFontSize();
        } else if (this.f2499c || this.b == null) {
            return 0;
        } else {
            return this.b.getMinimumFontSize();
        }
    }

    public synchronized int getMinimumLogicalFontSize() {
        if (this.f2499c && this.a != null) {
            return this.a.getMinimumLogicalFontSize();
        } else if (this.f2499c || this.b == null) {
            return 0;
        } else {
            return this.b.getMinimumLogicalFontSize();
        }
    }

    public synchronized int getMixedContentMode() {
        int i2 = -1;
        if (this.f2499c && this.a != null) {
            return this.a.getMixedContentMode();
        }
        Object a = com.tencent.smtt.utils.k.a(this.b, "getMixedContentMode", new Class[0], new Object[0]);
        if (a != null) {
            i2 = ((Integer) a).intValue();
        }
        return i2;
    }

    public boolean getNavDump() {
        android.webkit.WebSettings webSettings;
        Object a;
        IX5WebSettings iX5WebSettings;
        if (this.f2499c && (iX5WebSettings = this.a) != null) {
            return iX5WebSettings.getNavDump();
        }
        if (this.f2499c || (webSettings = this.b) == null || (a = com.tencent.smtt.utils.k.a(webSettings, "getNavDump")) == null) {
            return false;
        }
        return ((Boolean) a).booleanValue();
    }

    @TargetApi(8)
    @Deprecated
    public synchronized PluginState getPluginState() {
        if (this.f2499c && this.a != null) {
            return PluginState.valueOf(this.a.getPluginState().name());
        } else if (this.f2499c || this.b == null) {
            return null;
        } else {
            Object a = com.tencent.smtt.utils.k.a(this.b, "getPluginState");
            if (a == null) {
                return null;
            }
            return PluginState.valueOf(((WebSettings.PluginState) a).name());
        }
    }

    @TargetApi(8)
    @Deprecated
    public synchronized boolean getPluginsEnabled() {
        if (!this.f2499c || this.a == null) {
            return (this.f2499c || this.b == null) ? false : false;
        }
        return this.a.getPluginsEnabled();
    }

    @Deprecated
    public synchronized String getPluginsPath() {
        if (!this.f2499c || this.a == null) {
            return (this.f2499c || this.b == null) ? "" : "";
        }
        return this.a.getPluginsPath();
    }

    public synchronized String getSansSerifFontFamily() {
        if (this.f2499c && this.a != null) {
            return this.a.getSansSerifFontFamily();
        } else if (this.f2499c || this.b == null) {
            return "";
        } else {
            return this.b.getSansSerifFontFamily();
        }
    }

    public boolean getSaveFormData() {
        android.webkit.WebSettings webSettings;
        IX5WebSettings iX5WebSettings;
        if (this.f2499c && (iX5WebSettings = this.a) != null) {
            return iX5WebSettings.getSaveFormData();
        }
        if (this.f2499c || (webSettings = this.b) == null) {
            return false;
        }
        return webSettings.getSaveFormData();
    }

    public boolean getSavePassword() {
        android.webkit.WebSettings webSettings;
        IX5WebSettings iX5WebSettings;
        if (this.f2499c && (iX5WebSettings = this.a) != null) {
            return iX5WebSettings.getSavePassword();
        }
        if (this.f2499c || (webSettings = this.b) == null) {
            return false;
        }
        return webSettings.getSavePassword();
    }

    public synchronized String getSerifFontFamily() {
        if (this.f2499c && this.a != null) {
            return this.a.getSerifFontFamily();
        } else if (this.f2499c || this.b == null) {
            return "";
        } else {
            return this.b.getSerifFontFamily();
        }
    }

    public synchronized String getStandardFontFamily() {
        if (this.f2499c && this.a != null) {
            return this.a.getStandardFontFamily();
        } else if (this.f2499c || this.b == null) {
            return "";
        } else {
            return this.b.getStandardFontFamily();
        }
    }

    public TextSize getTextSize() {
        android.webkit.WebSettings webSettings;
        IX5WebSettings iX5WebSettings;
        if (this.f2499c && (iX5WebSettings = this.a) != null) {
            return TextSize.valueOf(iX5WebSettings.getTextSize().name());
        }
        if (this.f2499c || (webSettings = this.b) == null) {
            return null;
        }
        return TextSize.valueOf(webSettings.getTextSize().name());
    }

    @TargetApi(14)
    public synchronized int getTextZoom() {
        if (this.f2499c && this.a != null) {
            return this.a.getTextZoom();
        } else if (this.f2499c || this.b == null) {
            return 0;
        } else {
            try {
                return this.b.getTextZoom();
            } catch (Exception unused) {
                Object a = com.tencent.smtt.utils.k.a(this.b, "getTextZoom");
                if (a == null) {
                    return 0;
                }
                return ((Integer) a).intValue();
            }
        }
    }

    @Deprecated
    public boolean getUseWebViewBackgroundForOverscrollBackground() {
        android.webkit.WebSettings webSettings;
        Object a;
        IX5WebSettings iX5WebSettings;
        if (this.f2499c && (iX5WebSettings = this.a) != null) {
            return iX5WebSettings.getUseWebViewBackgroundForOverscrollBackground();
        }
        if (this.f2499c || (webSettings = this.b) == null || (a = com.tencent.smtt.utils.k.a(webSettings, "getUseWebViewBackgroundForOverscrollBackground")) == null) {
            return false;
        }
        return ((Boolean) a).booleanValue();
    }

    public synchronized boolean getUseWideViewPort() {
        if (this.f2499c && this.a != null) {
            return this.a.getUseWideViewPort();
        } else if (this.f2499c || this.b == null) {
            return false;
        } else {
            return this.b.getUseWideViewPort();
        }
    }

    @TargetApi(3)
    public String getUserAgentString() {
        android.webkit.WebSettings webSettings;
        IX5WebSettings iX5WebSettings;
        if (!this.f2499c || (iX5WebSettings = this.a) == null) {
            return (this.f2499c || (webSettings = this.b) == null) ? "" : webSettings.getUserAgentString();
        }
        return iX5WebSettings.getUserAgentString();
    }

    @TargetApi(11)
    public void setAllowContentAccess(boolean z) {
        android.webkit.WebSettings webSettings;
        IX5WebSettings iX5WebSettings;
        if (this.f2499c && (iX5WebSettings = this.a) != null) {
            iX5WebSettings.setAllowContentAccess(z);
        } else if (this.f2499c || (webSettings = this.b) == null) {
        } else {
            com.tencent.smtt.utils.k.a(webSettings, "setAllowContentAccess", new Class[]{Boolean.TYPE}, Boolean.valueOf(z));
        }
    }

    @TargetApi(3)
    public void setAllowFileAccess(boolean z) {
        android.webkit.WebSettings webSettings;
        IX5WebSettings iX5WebSettings;
        if (this.f2499c && (iX5WebSettings = this.a) != null) {
            iX5WebSettings.setAllowFileAccess(z);
        } else if (this.f2499c || (webSettings = this.b) == null) {
        } else {
            webSettings.setAllowFileAccess(z);
        }
    }

    @TargetApi(16)
    public void setAllowFileAccessFromFileURLs(boolean z) {
        android.webkit.WebSettings webSettings;
        IX5WebSettings iX5WebSettings;
        if (this.f2499c && (iX5WebSettings = this.a) != null) {
            iX5WebSettings.setAllowFileAccessFromFileURLs(z);
        } else if (this.f2499c || (webSettings = this.b) == null) {
        } else {
            com.tencent.smtt.utils.k.a(webSettings, "setAllowFileAccessFromFileURLs", new Class[]{Boolean.TYPE}, Boolean.valueOf(z));
        }
    }

    @TargetApi(16)
    public void setAllowUniversalAccessFromFileURLs(boolean z) {
        android.webkit.WebSettings webSettings;
        IX5WebSettings iX5WebSettings;
        if (this.f2499c && (iX5WebSettings = this.a) != null) {
            iX5WebSettings.setAllowUniversalAccessFromFileURLs(z);
        } else if (this.f2499c || (webSettings = this.b) == null) {
        } else {
            com.tencent.smtt.utils.k.a(webSettings, "setAllowUniversalAccessFromFileURLs", new Class[]{Boolean.TYPE}, Boolean.valueOf(z));
        }
    }

    @TargetApi(7)
    public void setAppCacheEnabled(boolean z) {
        android.webkit.WebSettings webSettings;
        IX5WebSettings iX5WebSettings;
        if (this.f2499c && (iX5WebSettings = this.a) != null) {
            iX5WebSettings.setAppCacheEnabled(z);
        } else if (this.f2499c || (webSettings = this.b) == null) {
        } else {
            webSettings.setAppCacheEnabled(z);
        }
    }

    @TargetApi(7)
    public void setAppCacheMaxSize(long j2) {
        android.webkit.WebSettings webSettings;
        IX5WebSettings iX5WebSettings;
        if (this.f2499c && (iX5WebSettings = this.a) != null) {
            iX5WebSettings.setAppCacheMaxSize(j2);
        } else if (this.f2499c || (webSettings = this.b) == null) {
        } else {
            webSettings.setAppCacheMaxSize(j2);
        }
    }

    @TargetApi(7)
    public void setAppCachePath(String str) {
        android.webkit.WebSettings webSettings;
        IX5WebSettings iX5WebSettings;
        if (this.f2499c && (iX5WebSettings = this.a) != null) {
            iX5WebSettings.setAppCachePath(str);
        } else if (this.f2499c || (webSettings = this.b) == null) {
        } else {
            webSettings.setAppCachePath(str);
        }
    }

    public void setBlockNetworkImage(boolean z) {
        android.webkit.WebSettings webSettings;
        IX5WebSettings iX5WebSettings;
        if (this.f2499c && (iX5WebSettings = this.a) != null) {
            iX5WebSettings.setBlockNetworkImage(z);
        } else if (this.f2499c || (webSettings = this.b) == null) {
        } else {
            webSettings.setBlockNetworkImage(z);
        }
    }

    @TargetApi(8)
    public synchronized void setBlockNetworkLoads(boolean z) {
        if (this.f2499c && this.a != null) {
            this.a.setBlockNetworkLoads(z);
        } else if (this.f2499c || this.b == null) {
        } else {
            this.b.setBlockNetworkLoads(z);
        }
    }

    @TargetApi(3)
    public void setBuiltInZoomControls(boolean z) {
        android.webkit.WebSettings webSettings;
        IX5WebSettings iX5WebSettings;
        if (this.f2499c && (iX5WebSettings = this.a) != null) {
            iX5WebSettings.setBuiltInZoomControls(z);
        } else if (this.f2499c || (webSettings = this.b) == null) {
        } else {
            webSettings.setBuiltInZoomControls(z);
        }
    }

    public void setCacheMode(int i2) {
        android.webkit.WebSettings webSettings;
        IX5WebSettings iX5WebSettings;
        if (this.f2499c && (iX5WebSettings = this.a) != null) {
            iX5WebSettings.setCacheMode(i2);
        } else if (this.f2499c || (webSettings = this.b) == null) {
        } else {
            webSettings.setCacheMode(i2);
        }
    }

    public synchronized void setCursiveFontFamily(String str) {
        if (this.f2499c && this.a != null) {
            this.a.setCursiveFontFamily(str);
        } else if (this.f2499c || this.b == null) {
        } else {
            this.b.setCursiveFontFamily(str);
        }
    }

    @TargetApi(5)
    public void setDatabaseEnabled(boolean z) {
        android.webkit.WebSettings webSettings;
        IX5WebSettings iX5WebSettings;
        if (this.f2499c && (iX5WebSettings = this.a) != null) {
            iX5WebSettings.setDatabaseEnabled(z);
        } else if (this.f2499c || (webSettings = this.b) == null) {
        } else {
            webSettings.setDatabaseEnabled(z);
        }
    }

    @TargetApi(5)
    @Deprecated
    public void setDatabasePath(String str) {
        android.webkit.WebSettings webSettings;
        IX5WebSettings iX5WebSettings;
        if (this.f2499c && (iX5WebSettings = this.a) != null) {
            iX5WebSettings.setDatabasePath(str);
        } else if (this.f2499c || (webSettings = this.b) == null) {
        } else {
            com.tencent.smtt.utils.k.a(webSettings, "setDatabasePath", new Class[]{String.class}, str);
        }
    }

    public synchronized void setDefaultFixedFontSize(int i2) {
        if (this.f2499c && this.a != null) {
            this.a.setDefaultFixedFontSize(i2);
        } else if (this.f2499c || this.b == null) {
        } else {
            this.b.setDefaultFixedFontSize(i2);
        }
    }

    public synchronized void setDefaultFontSize(int i2) {
        if (this.f2499c && this.a != null) {
            this.a.setDefaultFontSize(i2);
        } else if (this.f2499c || this.b == null) {
        } else {
            this.b.setDefaultFontSize(i2);
        }
    }

    public synchronized void setDefaultTextEncodingName(String str) {
        if (this.f2499c && this.a != null) {
            this.a.setDefaultTextEncodingName(str);
        } else if (this.f2499c || this.b == null) {
        } else {
            this.b.setDefaultTextEncodingName(str);
        }
    }

    @TargetApi(7)
    public void setDefaultZoom(ZoomDensity zoomDensity) {
        android.webkit.WebSettings webSettings;
        IX5WebSettings iX5WebSettings;
        if (this.f2499c && (iX5WebSettings = this.a) != null) {
            iX5WebSettings.setDefaultZoom(IX5WebSettings.ZoomDensity.valueOf(zoomDensity.name()));
        } else if (this.f2499c || (webSettings = this.b) == null) {
        } else {
            webSettings.setDefaultZoom(WebSettings.ZoomDensity.valueOf(zoomDensity.name()));
        }
    }

    @TargetApi(11)
    public void setDisplayZoomControls(boolean z) {
        android.webkit.WebSettings webSettings;
        IX5WebSettings iX5WebSettings;
        if (this.f2499c && (iX5WebSettings = this.a) != null) {
            iX5WebSettings.setDisplayZoomControls(z);
        } else if (this.f2499c || (webSettings = this.b) == null) {
        } else {
            com.tencent.smtt.utils.k.a(webSettings, "setDisplayZoomControls", new Class[]{Boolean.TYPE}, Boolean.valueOf(z));
        }
    }

    @TargetApi(7)
    public void setDomStorageEnabled(boolean z) {
        android.webkit.WebSettings webSettings;
        IX5WebSettings iX5WebSettings;
        if (this.f2499c && (iX5WebSettings = this.a) != null) {
            iX5WebSettings.setDomStorageEnabled(z);
        } else if (this.f2499c || (webSettings = this.b) == null) {
        } else {
            webSettings.setDomStorageEnabled(z);
        }
    }

    @TargetApi(11)
    @Deprecated
    public void setEnableSmoothTransition(boolean z) {
        android.webkit.WebSettings webSettings;
        IX5WebSettings iX5WebSettings;
        if (this.f2499c && (iX5WebSettings = this.a) != null) {
            iX5WebSettings.setEnableSmoothTransition(z);
        } else if (this.f2499c || (webSettings = this.b) == null) {
        } else {
            com.tencent.smtt.utils.k.a(webSettings, "setEnableSmoothTransition", new Class[]{Boolean.TYPE}, Boolean.valueOf(z));
        }
    }

    public synchronized void setFantasyFontFamily(String str) {
        if (this.f2499c && this.a != null) {
            this.a.setFantasyFontFamily(str);
        } else if (this.f2499c || this.b == null) {
        } else {
            this.b.setFantasyFontFamily(str);
        }
    }

    public synchronized void setFixedFontFamily(String str) {
        if (this.f2499c && this.a != null) {
            this.a.setFixedFontFamily(str);
        } else if (this.f2499c || this.b == null) {
        } else {
            this.b.setFixedFontFamily(str);
        }
    }

    @TargetApi(5)
    public void setGeolocationDatabasePath(String str) {
        android.webkit.WebSettings webSettings;
        IX5WebSettings iX5WebSettings;
        if (this.f2499c && (iX5WebSettings = this.a) != null) {
            iX5WebSettings.setGeolocationDatabasePath(str);
        } else if (this.f2499c || (webSettings = this.b) == null) {
        } else {
            webSettings.setGeolocationDatabasePath(str);
        }
    }

    @TargetApi(5)
    public void setGeolocationEnabled(boolean z) {
        android.webkit.WebSettings webSettings;
        IX5WebSettings iX5WebSettings;
        if (this.f2499c && (iX5WebSettings = this.a) != null) {
            iX5WebSettings.setGeolocationEnabled(z);
        } else if (this.f2499c || (webSettings = this.b) == null) {
        } else {
            webSettings.setGeolocationEnabled(z);
        }
    }

    public synchronized void setJavaScriptCanOpenWindowsAutomatically(boolean z) {
        if (this.f2499c && this.a != null) {
            this.a.setJavaScriptCanOpenWindowsAutomatically(z);
        } else if (this.f2499c || this.b == null) {
        } else {
            this.b.setJavaScriptCanOpenWindowsAutomatically(z);
        }
    }

    @Deprecated
    public void setJavaScriptEnabled(boolean z) {
        try {
            if (this.f2499c && this.a != null) {
                this.a.setJavaScriptEnabled(z);
            } else if (this.f2499c || this.b == null) {
            } else {
                this.b.setJavaScriptEnabled(z);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void setLayoutAlgorithm(LayoutAlgorithm layoutAlgorithm) {
        android.webkit.WebSettings webSettings;
        IX5WebSettings iX5WebSettings;
        if (this.f2499c && (iX5WebSettings = this.a) != null) {
            iX5WebSettings.setLayoutAlgorithm(IX5WebSettings.LayoutAlgorithm.valueOf(layoutAlgorithm.name()));
        } else if (this.f2499c || (webSettings = this.b) == null) {
        } else {
            webSettings.setLayoutAlgorithm(WebSettings.LayoutAlgorithm.valueOf(layoutAlgorithm.name()));
        }
    }

    public void setLightTouchEnabled(boolean z) {
        android.webkit.WebSettings webSettings;
        IX5WebSettings iX5WebSettings;
        if (this.f2499c && (iX5WebSettings = this.a) != null) {
            iX5WebSettings.setLightTouchEnabled(z);
        } else if (this.f2499c || (webSettings = this.b) == null) {
        } else {
            webSettings.setLightTouchEnabled(z);
        }
    }

    @TargetApi(7)
    public void setLoadWithOverviewMode(boolean z) {
        android.webkit.WebSettings webSettings;
        IX5WebSettings iX5WebSettings;
        if (this.f2499c && (iX5WebSettings = this.a) != null) {
            iX5WebSettings.setLoadWithOverviewMode(z);
        } else if (this.f2499c || (webSettings = this.b) == null) {
        } else {
            webSettings.setLoadWithOverviewMode(z);
        }
    }

    public void setLoadsImagesAutomatically(boolean z) {
        android.webkit.WebSettings webSettings;
        IX5WebSettings iX5WebSettings;
        if (this.f2499c && (iX5WebSettings = this.a) != null) {
            iX5WebSettings.setLoadsImagesAutomatically(z);
        } else if (this.f2499c || (webSettings = this.b) == null) {
        } else {
            webSettings.setLoadsImagesAutomatically(z);
        }
    }

    @TargetApi(17)
    public void setMediaPlaybackRequiresUserGesture(boolean z) {
        android.webkit.WebSettings webSettings;
        IX5WebSettings iX5WebSettings;
        if (this.f2499c && (iX5WebSettings = this.a) != null) {
            iX5WebSettings.setMediaPlaybackRequiresUserGesture(z);
        } else if (this.f2499c || (webSettings = this.b) == null) {
        } else {
            com.tencent.smtt.utils.k.a(webSettings, "setMediaPlaybackRequiresUserGesture", new Class[]{Boolean.TYPE}, Boolean.valueOf(z));
        }
    }

    public synchronized void setMinimumFontSize(int i2) {
        if (this.f2499c && this.a != null) {
            this.a.setMinimumFontSize(i2);
        } else if (this.f2499c || this.b == null) {
        } else {
            this.b.setMinimumFontSize(i2);
        }
    }

    public synchronized void setMinimumLogicalFontSize(int i2) {
        if (this.f2499c && this.a != null) {
            this.a.setMinimumLogicalFontSize(i2);
        } else if (this.f2499c || this.b == null) {
        } else {
            this.b.setMinimumLogicalFontSize(i2);
        }
    }

    @TargetApi(21)
    public void setMixedContentMode(int i2) {
        android.webkit.WebSettings webSettings;
        if ((this.f2499c && this.a != null) || this.f2499c || (webSettings = this.b) == null) {
            return;
        }
        com.tencent.smtt.utils.k.a(webSettings, "setMixedContentMode", new Class[]{Integer.TYPE}, Integer.valueOf(i2));
    }

    public void setNavDump(boolean z) {
        android.webkit.WebSettings webSettings;
        IX5WebSettings iX5WebSettings;
        if (this.f2499c && (iX5WebSettings = this.a) != null) {
            iX5WebSettings.setNavDump(z);
        } else if (this.f2499c || (webSettings = this.b) == null) {
        } else {
            com.tencent.smtt.utils.k.a(webSettings, "setNavDump", new Class[]{Boolean.TYPE}, Boolean.valueOf(z));
        }
    }

    public void setNeedInitialFocus(boolean z) {
        android.webkit.WebSettings webSettings;
        IX5WebSettings iX5WebSettings;
        if (this.f2499c && (iX5WebSettings = this.a) != null) {
            iX5WebSettings.setNeedInitialFocus(z);
        } else if (this.f2499c || (webSettings = this.b) == null) {
        } else {
            webSettings.setNeedInitialFocus(z);
        }
    }

    @TargetApi(8)
    @Deprecated
    public synchronized void setPluginState(PluginState pluginState) {
        if (this.f2499c && this.a != null) {
            this.a.setPluginState(IX5WebSettings.PluginState.valueOf(pluginState.name()));
        } else if (this.f2499c || this.b == null) {
        } else {
            com.tencent.smtt.utils.k.a(this.b, "setPluginState", new Class[]{WebSettings.PluginState.class}, WebSettings.PluginState.valueOf(pluginState.name()));
        }
    }

    @Deprecated
    public void setPluginsEnabled(boolean z) {
        android.webkit.WebSettings webSettings;
        IX5WebSettings iX5WebSettings;
        if (this.f2499c && (iX5WebSettings = this.a) != null) {
            iX5WebSettings.setPluginsEnabled(z);
        } else if (this.f2499c || (webSettings = this.b) == null) {
        } else {
            com.tencent.smtt.utils.k.a(webSettings, "setPluginsEnabled", new Class[]{Boolean.TYPE}, Boolean.valueOf(z));
        }
    }

    @Deprecated
    public synchronized void setPluginsPath(String str) {
        if (this.f2499c && this.a != null) {
            this.a.setPluginsPath(str);
        } else if (this.f2499c || this.b == null) {
        } else {
            com.tencent.smtt.utils.k.a(this.b, "setPluginsPath", new Class[]{String.class}, str);
        }
    }

    public void setRenderPriority(RenderPriority renderPriority) {
        android.webkit.WebSettings webSettings;
        IX5WebSettings iX5WebSettings;
        if (this.f2499c && (iX5WebSettings = this.a) != null) {
            iX5WebSettings.setRenderPriority(IX5WebSettings.RenderPriority.valueOf(renderPriority.name()));
        } else if (this.f2499c || (webSettings = this.b) == null) {
        } else {
            webSettings.setRenderPriority(WebSettings.RenderPriority.valueOf(renderPriority.name()));
        }
    }

    public synchronized void setSansSerifFontFamily(String str) {
        if (this.f2499c && this.a != null) {
            this.a.setSansSerifFontFamily(str);
        } else if (this.f2499c || this.b == null) {
        } else {
            this.b.setSansSerifFontFamily(str);
        }
    }

    public void setSaveFormData(boolean z) {
        android.webkit.WebSettings webSettings;
        IX5WebSettings iX5WebSettings;
        if (this.f2499c && (iX5WebSettings = this.a) != null) {
            iX5WebSettings.setSaveFormData(z);
        } else if (this.f2499c || (webSettings = this.b) == null) {
        } else {
            webSettings.setSaveFormData(z);
        }
    }

    public void setSavePassword(boolean z) {
        android.webkit.WebSettings webSettings;
        IX5WebSettings iX5WebSettings;
        if (this.f2499c && (iX5WebSettings = this.a) != null) {
            iX5WebSettings.setSavePassword(z);
        } else if (this.f2499c || (webSettings = this.b) == null) {
        } else {
            webSettings.setSavePassword(z);
        }
    }

    public synchronized void setSerifFontFamily(String str) {
        if (this.f2499c && this.a != null) {
            this.a.setSerifFontFamily(str);
        } else if (this.f2499c || this.b == null) {
        } else {
            this.b.setSerifFontFamily(str);
        }
    }

    public synchronized void setStandardFontFamily(String str) {
        if (this.f2499c && this.a != null) {
            this.a.setStandardFontFamily(str);
        } else if (this.f2499c || this.b == null) {
        } else {
            this.b.setStandardFontFamily(str);
        }
    }

    public void setSupportMultipleWindows(boolean z) {
        android.webkit.WebSettings webSettings;
        IX5WebSettings iX5WebSettings;
        if (this.f2499c && (iX5WebSettings = this.a) != null) {
            iX5WebSettings.setSupportMultipleWindows(z);
        } else if (this.f2499c || (webSettings = this.b) == null) {
        } else {
            webSettings.setSupportMultipleWindows(z);
        }
    }

    public void setSupportZoom(boolean z) {
        android.webkit.WebSettings webSettings;
        IX5WebSettings iX5WebSettings;
        if (this.f2499c && (iX5WebSettings = this.a) != null) {
            iX5WebSettings.setSupportZoom(z);
        } else if (this.f2499c || (webSettings = this.b) == null) {
        } else {
            webSettings.setSupportZoom(z);
        }
    }

    public void setTextSize(TextSize textSize) {
        android.webkit.WebSettings webSettings;
        IX5WebSettings iX5WebSettings;
        if (this.f2499c && (iX5WebSettings = this.a) != null) {
            iX5WebSettings.setTextSize(IX5WebSettings.TextSize.valueOf(textSize.name()));
        } else if (this.f2499c || (webSettings = this.b) == null) {
        } else {
            webSettings.setTextSize(WebSettings.TextSize.valueOf(textSize.name()));
        }
    }

    @TargetApi(14)
    public synchronized void setTextZoom(int i2) {
        if (this.f2499c && this.a != null) {
            this.a.setTextZoom(i2);
        } else if (!this.f2499c && this.b != null) {
            try {
                this.b.setTextZoom(i2);
            } catch (Exception unused) {
                com.tencent.smtt.utils.k.a(this.b, "setTextZoom", new Class[]{Integer.TYPE}, Integer.valueOf(i2));
            }
        }
    }

    @Deprecated
    public void setUseWebViewBackgroundForOverscrollBackground(boolean z) {
        android.webkit.WebSettings webSettings;
        IX5WebSettings iX5WebSettings;
        if (this.f2499c && (iX5WebSettings = this.a) != null) {
            iX5WebSettings.setUseWebViewBackgroundForOverscrollBackground(z);
        } else if (this.f2499c || (webSettings = this.b) == null) {
        } else {
            com.tencent.smtt.utils.k.a(webSettings, "setUseWebViewBackgroundForOverscrollBackground", new Class[]{Boolean.TYPE}, Boolean.valueOf(z));
        }
    }

    public void setUseWideViewPort(boolean z) {
        android.webkit.WebSettings webSettings;
        IX5WebSettings iX5WebSettings;
        if (this.f2499c && (iX5WebSettings = this.a) != null) {
            iX5WebSettings.setUseWideViewPort(z);
        } else if (this.f2499c || (webSettings = this.b) == null) {
        } else {
            webSettings.setUseWideViewPort(z);
        }
    }

    public void setUserAgent(String str) {
        android.webkit.WebSettings webSettings;
        IX5WebSettings iX5WebSettings;
        if (this.f2499c && (iX5WebSettings = this.a) != null) {
            iX5WebSettings.setUserAgent(str);
        } else if (this.f2499c || (webSettings = this.b) == null) {
        } else {
            webSettings.setUserAgentString(str);
        }
    }

    @TargetApi(3)
    public void setUserAgentString(String str) {
        android.webkit.WebSettings webSettings;
        IX5WebSettings iX5WebSettings;
        if (this.f2499c && (iX5WebSettings = this.a) != null) {
            iX5WebSettings.setUserAgentString(str);
        } else if (this.f2499c || (webSettings = this.b) == null) {
        } else {
            webSettings.setUserAgentString(str);
        }
    }

    public synchronized boolean supportMultipleWindows() {
        if (this.f2499c && this.a != null) {
            return this.a.supportMultipleWindows();
        } else if (this.f2499c || this.b == null) {
            return false;
        } else {
            return this.b.supportMultipleWindows();
        }
    }

    public boolean supportZoom() {
        android.webkit.WebSettings webSettings;
        IX5WebSettings iX5WebSettings;
        if (this.f2499c && (iX5WebSettings = this.a) != null) {
            return iX5WebSettings.supportZoom();
        }
        if (this.f2499c || (webSettings = this.b) == null) {
            return false;
        }
        return webSettings.supportZoom();
    }

    public WebSettings(android.webkit.WebSettings webSettings) {
        this.a = null;
        this.b = null;
        this.f2499c = false;
        this.a = null;
        this.b = webSettings;
        this.f2499c = false;
    }
}
