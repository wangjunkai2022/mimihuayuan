package com.tencent.smtt.export.external.extension.proxy;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.os.Message;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.ValueCallback;
import com.tencent.smtt.export.external.extension.interfaces.IX5WebChromeClientExtension;
import com.tencent.smtt.export.external.extension.interfaces.IX5WebViewExtension;
import com.tencent.smtt.export.external.interfaces.IX5WebViewBase;
import com.tencent.smtt.export.external.interfaces.JsResult;
import com.tencent.smtt.export.external.interfaces.MediaAccessPermissionsCallback;
import java.util.HashMap;
/* loaded from: classes.dex */
public class ProxyWebChromeClientExtension implements IX5WebChromeClientExtension {
    public static boolean sCompatibleNewOnSavePassword = true;
    public static boolean sCompatibleOpenFileChooser = true;
    public IX5WebChromeClientExtension mWebChromeClient;

    @Override // com.tencent.smtt.export.external.extension.interfaces.IX5WebChromeClientExtension
    public void acquireWakeLock() {
        IX5WebChromeClientExtension iX5WebChromeClientExtension = this.mWebChromeClient;
        if (iX5WebChromeClientExtension != null) {
            iX5WebChromeClientExtension.acquireWakeLock();
        }
    }

    @Override // com.tencent.smtt.export.external.extension.interfaces.IX5WebChromeClientExtension
    public void addFlashView(View view, ViewGroup.LayoutParams layoutParams) {
        IX5WebChromeClientExtension iX5WebChromeClientExtension = this.mWebChromeClient;
        if (iX5WebChromeClientExtension != null) {
            iX5WebChromeClientExtension.addFlashView(view, layoutParams);
        }
    }

    @Override // com.tencent.smtt.export.external.extension.interfaces.IX5WebChromeClientExtension
    public void exitFullScreenFlash() {
        IX5WebChromeClientExtension iX5WebChromeClientExtension = this.mWebChromeClient;
        if (iX5WebChromeClientExtension != null) {
            iX5WebChromeClientExtension.exitFullScreenFlash();
        }
    }

    @Override // com.tencent.smtt.export.external.extension.interfaces.IX5WebChromeClientExtension
    public Context getApplicationContex() {
        IX5WebChromeClientExtension iX5WebChromeClientExtension = this.mWebChromeClient;
        if (iX5WebChromeClientExtension != null) {
            return iX5WebChromeClientExtension.getApplicationContex();
        }
        return null;
    }

    @Override // com.tencent.smtt.export.external.extension.interfaces.IX5WebChromeClientExtension
    public View getVideoLoadingProgressView() {
        IX5WebChromeClientExtension iX5WebChromeClientExtension = this.mWebChromeClient;
        if (iX5WebChromeClientExtension != null) {
            return iX5WebChromeClientExtension.getVideoLoadingProgressView();
        }
        return null;
    }

    @Override // com.tencent.smtt.export.external.extension.interfaces.IX5WebChromeClientExtension
    public Object getX5WebChromeClientInstance() {
        return this.mWebChromeClient;
    }

    public IX5WebChromeClientExtension getmWebChromeClient() {
        return this.mWebChromeClient;
    }

    @Override // com.tencent.smtt.export.external.extension.interfaces.IX5WebChromeClientExtension
    public void h5videoExitFullScreen(String str) {
        IX5WebChromeClientExtension iX5WebChromeClientExtension = this.mWebChromeClient;
        if (iX5WebChromeClientExtension != null) {
            iX5WebChromeClientExtension.h5videoExitFullScreen(str);
        }
    }

    @Override // com.tencent.smtt.export.external.extension.interfaces.IX5WebChromeClientExtension
    public void h5videoRequestFullScreen(String str) {
        IX5WebChromeClientExtension iX5WebChromeClientExtension = this.mWebChromeClient;
        if (iX5WebChromeClientExtension != null) {
            iX5WebChromeClientExtension.h5videoRequestFullScreen(str);
        }
    }

    @Override // com.tencent.smtt.export.external.extension.interfaces.IX5WebChromeClientExtension
    public void jsExitFullScreen() {
        IX5WebChromeClientExtension iX5WebChromeClientExtension = this.mWebChromeClient;
        if (iX5WebChromeClientExtension != null) {
            iX5WebChromeClientExtension.jsExitFullScreen();
        }
    }

    @Override // com.tencent.smtt.export.external.extension.interfaces.IX5WebChromeClientExtension
    public void jsRequestFullScreen() {
        IX5WebChromeClientExtension iX5WebChromeClientExtension = this.mWebChromeClient;
        if (iX5WebChromeClientExtension != null) {
            iX5WebChromeClientExtension.jsRequestFullScreen();
        }
    }

    @Override // com.tencent.smtt.export.external.extension.interfaces.IX5WebChromeClientExtension
    public boolean onAddFavorite(IX5WebViewExtension iX5WebViewExtension, String str, String str2, JsResult jsResult) {
        IX5WebChromeClientExtension iX5WebChromeClientExtension = this.mWebChromeClient;
        if (iX5WebChromeClientExtension != null) {
            return iX5WebChromeClientExtension.onAddFavorite(iX5WebViewExtension, str, str2, jsResult);
        }
        return false;
    }

    @Override // com.tencent.smtt.export.external.extension.interfaces.IX5WebChromeClientExtension
    public void onAllMetaDataFinished(IX5WebViewExtension iX5WebViewExtension, HashMap<String, String> hashMap) {
        IX5WebChromeClientExtension iX5WebChromeClientExtension = this.mWebChromeClient;
        if (iX5WebChromeClientExtension != null) {
            iX5WebChromeClientExtension.onAllMetaDataFinished(iX5WebViewExtension, hashMap);
        }
    }

    @Override // com.tencent.smtt.export.external.extension.interfaces.IX5WebChromeClientExtension
    public void onBackforwardFinished(int i2) {
        IX5WebChromeClientExtension iX5WebChromeClientExtension = this.mWebChromeClient;
        if (iX5WebChromeClientExtension != null) {
            iX5WebChromeClientExtension.onBackforwardFinished(i2);
        }
    }

    @Override // com.tencent.smtt.export.external.extension.interfaces.IX5WebChromeClientExtension
    public void onColorModeChanged(long j2) {
    }

    @Override // com.tencent.smtt.export.external.extension.interfaces.IX5WebChromeClientExtension
    public void onHitTestResultFinished(IX5WebViewExtension iX5WebViewExtension, IX5WebViewBase.HitTestResult hitTestResult) {
        IX5WebChromeClientExtension iX5WebChromeClientExtension = this.mWebChromeClient;
        if (iX5WebChromeClientExtension != null) {
            iX5WebChromeClientExtension.onHitTestResultFinished(iX5WebViewExtension, hitTestResult);
        }
    }

    @Override // com.tencent.smtt.export.external.extension.interfaces.IX5WebChromeClientExtension
    public void onHitTestResultForPluginFinished(IX5WebViewExtension iX5WebViewExtension, IX5WebViewBase.HitTestResult hitTestResult, Bundle bundle) {
        IX5WebChromeClientExtension iX5WebChromeClientExtension = this.mWebChromeClient;
        if (iX5WebChromeClientExtension != null) {
            iX5WebChromeClientExtension.onHitTestResultForPluginFinished(iX5WebViewExtension, hitTestResult, bundle);
        }
    }

    @Override // com.tencent.smtt.export.external.extension.interfaces.IX5WebChromeClientExtension
    public Object onMiscCallBack(String str, Bundle bundle) {
        IX5WebChromeClientExtension iX5WebChromeClientExtension = this.mWebChromeClient;
        if (iX5WebChromeClientExtension != null) {
            return iX5WebChromeClientExtension.onMiscCallBack(str, bundle);
        }
        return null;
    }

    @Override // com.tencent.smtt.export.external.extension.interfaces.IX5WebChromeClientExtension
    public boolean onPageNotResponding(Runnable runnable) {
        IX5WebChromeClientExtension iX5WebChromeClientExtension = this.mWebChromeClient;
        if (iX5WebChromeClientExtension != null) {
            return iX5WebChromeClientExtension.onPageNotResponding(runnable);
        }
        return false;
    }

    @Override // com.tencent.smtt.export.external.extension.interfaces.IX5WebChromeClientExtension
    public boolean onPermissionRequest(String str, long j2, MediaAccessPermissionsCallback mediaAccessPermissionsCallback) {
        return false;
    }

    @Override // com.tencent.smtt.export.external.extension.interfaces.IX5WebChromeClientExtension
    public void onPrepareX5ReadPageDataFinished(IX5WebViewExtension iX5WebViewExtension, HashMap<String, String> hashMap) {
        IX5WebChromeClientExtension iX5WebChromeClientExtension = this.mWebChromeClient;
        if (iX5WebChromeClientExtension != null) {
            iX5WebChromeClientExtension.onPrepareX5ReadPageDataFinished(iX5WebViewExtension, hashMap);
        }
    }

    @Override // com.tencent.smtt.export.external.extension.interfaces.IX5WebChromeClientExtension
    public void onPrintPage() {
    }

    @Override // com.tencent.smtt.export.external.extension.interfaces.IX5WebChromeClientExtension
    public void onPromptNotScalable(IX5WebViewExtension iX5WebViewExtension) {
        IX5WebChromeClientExtension iX5WebChromeClientExtension = this.mWebChromeClient;
        if (iX5WebChromeClientExtension != null) {
            iX5WebChromeClientExtension.onPromptNotScalable(iX5WebViewExtension);
        }
    }

    @Override // com.tencent.smtt.export.external.extension.interfaces.IX5WebChromeClientExtension
    public void onPromptScaleSaved(IX5WebViewExtension iX5WebViewExtension) {
        IX5WebChromeClientExtension iX5WebChromeClientExtension = this.mWebChromeClient;
        if (iX5WebChromeClientExtension != null) {
            iX5WebChromeClientExtension.onPromptScaleSaved(iX5WebViewExtension);
        }
    }

    @Override // com.tencent.smtt.export.external.extension.interfaces.IX5WebChromeClientExtension
    public boolean onSavePassword(String str, String str2, String str3, boolean z, Message message) {
        IX5WebChromeClientExtension iX5WebChromeClientExtension = this.mWebChromeClient;
        if (iX5WebChromeClientExtension != null) {
            try {
                return iX5WebChromeClientExtension.onSavePassword(str, str2, str3, z, message);
            } catch (NoSuchMethodError e2) {
                e2.printStackTrace();
                return false;
            }
        }
        return false;
    }

    @Override // com.tencent.smtt.export.external.extension.interfaces.IX5WebChromeClientExtension
    public void onX5ReadModeAvailableChecked(HashMap<String, String> hashMap) {
        IX5WebChromeClientExtension iX5WebChromeClientExtension = this.mWebChromeClient;
        if (iX5WebChromeClientExtension != null) {
            iX5WebChromeClientExtension.onX5ReadModeAvailableChecked(hashMap);
        }
    }

    @Override // com.tencent.smtt.export.external.extension.interfaces.IX5WebChromeClientExtension
    public void openFileChooser(ValueCallback<Uri[]> valueCallback, String str, String str2) {
        IX5WebChromeClientExtension iX5WebChromeClientExtension = this.mWebChromeClient;
        if (iX5WebChromeClientExtension == null || !sCompatibleOpenFileChooser) {
            return;
        }
        try {
            iX5WebChromeClientExtension.openFileChooser(valueCallback, str, str2);
        } catch (NoSuchMethodError e2) {
            if (e2.getMessage() != null && e2.getMessage().contains("openFileChooser")) {
                sCompatibleOpenFileChooser = false;
                return;
            }
            throw e2;
        }
    }

    @Override // com.tencent.smtt.export.external.extension.interfaces.IX5WebChromeClientExtension
    public void releaseWakeLock() {
        IX5WebChromeClientExtension iX5WebChromeClientExtension = this.mWebChromeClient;
        if (iX5WebChromeClientExtension != null) {
            iX5WebChromeClientExtension.releaseWakeLock();
        }
    }

    @Override // com.tencent.smtt.export.external.extension.interfaces.IX5WebChromeClientExtension
    public void requestFullScreenFlash() {
        IX5WebChromeClientExtension iX5WebChromeClientExtension = this.mWebChromeClient;
        if (iX5WebChromeClientExtension != null) {
            iX5WebChromeClientExtension.requestFullScreenFlash();
        }
    }

    public void setWebChromeClientExtend(IX5WebChromeClientExtension iX5WebChromeClientExtension) {
        this.mWebChromeClient = iX5WebChromeClientExtension;
    }

    @Override // com.tencent.smtt.export.external.extension.interfaces.IX5WebChromeClientExtension
    public boolean onSavePassword(ValueCallback<String> valueCallback, String str, String str2, String str3, String str4, String str5, boolean z) {
        IX5WebChromeClientExtension iX5WebChromeClientExtension = this.mWebChromeClient;
        if (iX5WebChromeClientExtension != null && sCompatibleNewOnSavePassword) {
            try {
                return iX5WebChromeClientExtension.onSavePassword(valueCallback, str, str2, str3, str4, str5, z);
            } catch (NoSuchMethodError e2) {
                if (e2.getMessage() != null && e2.getMessage().contains("onSavePassword")) {
                    sCompatibleNewOnSavePassword = false;
                } else {
                    throw e2;
                }
            }
        }
        return false;
    }
}
