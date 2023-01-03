package com.comeback.data.ui.main.bean;

import g.a.c1;
import g.a.f1.n;
import g.a.g0;

/* loaded from: classes.dex */
public class VideoCacheBean extends g0 implements c1 {
    public String cachePath;
    public boolean downloadFinish;
    public String md5;
    public String name;
    public String tempPath;
    public String url;

    public VideoCacheBean() {
        if (this instanceof n) {
            ((n) this).realm$injectObjectContext();
        }
    }

    public String getCachePath() {
        return realmGet$cachePath();
    }

    public String getMd5() {
        return realmGet$md5();
    }

    public String getName() {
        return realmGet$name();
    }

    public String getTempPath() {
        return realmGet$tempPath();
    }

    public String getUrl() {
        return realmGet$url();
    }

    public boolean isDownloadFinish() {
        return realmGet$downloadFinish();
    }

    @Override // g.a.c1
    public String realmGet$cachePath() {
        return this.cachePath;
    }

    @Override // g.a.c1
    public boolean realmGet$downloadFinish() {
        return this.downloadFinish;
    }

    @Override // g.a.c1
    public String realmGet$md5() {
        return this.md5;
    }

    @Override // g.a.c1
    public String realmGet$name() {
        return this.name;
    }

    @Override // g.a.c1
    public String realmGet$tempPath() {
        return this.tempPath;
    }

    @Override // g.a.c1
    public String realmGet$url() {
        return this.url;
    }

    @Override // g.a.c1
    public void realmSet$cachePath(String str) {
        this.cachePath = str;
    }

    @Override // g.a.c1
    public void realmSet$downloadFinish(boolean z) {
        this.downloadFinish = z;
    }

    @Override // g.a.c1
    public void realmSet$md5(String str) {
        this.md5 = str;
    }

    @Override // g.a.c1
    public void realmSet$name(String str) {
        this.name = str;
    }

    @Override // g.a.c1
    public void realmSet$tempPath(String str) {
        this.tempPath = str;
    }

    @Override // g.a.c1
    public void realmSet$url(String str) {
        this.url = str;
    }

    public void setCachePath(String str) {
        realmSet$cachePath(str);
    }

    public void setDownloadFinish(boolean z) {
        realmSet$downloadFinish(z);
    }

    public void setMd5(String str) {
        realmSet$md5(str);
    }

    public void setName(String str) {
        realmSet$name(str);
    }

    public void setTempPath(String str) {
        realmSet$tempPath(str);
    }

    public void setUrl(String str) {
        realmSet$url(str);
    }

    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:50:0x000f */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.lang.CharSequence] */
    /* JADX WARN: Type inference failed for: r1v25 */
    /* JADX WARN: Type inference failed for: r1v26 */
    /* JADX WARNING: Code restructure failed: missing block: B:26:0x00a1, code lost:
        if (r2.exists() == false) goto L_0x00cd;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:32:0x00cb, code lost:
        if (r2.exists() == false) goto L_0x00cd;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:33:0x00cd, code lost:
        r2.mkdirs();
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public VideoCacheBean(java.lang.String r6, java.lang.String r7) {
        /*
        // Method dump skipped, instructions count: 407
        */
        throw new UnsupportedOperationException("Method not decompiled: com.comeback.data.ui.main.bean.VideoCacheBean.<init>(java.lang.String, java.lang.String):void");
    }
}
