package com.umeng.commonsdk.stateless;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.text.TextUtils;
import com.umeng.commonsdk.framework.UMEnvelopeBuild;
import com.umeng.commonsdk.internal.crash.UMCrashManager;
import com.umeng.commonsdk.statistics.b;
import com.umeng.commonsdk.statistics.common.DataHelper;
import com.umeng.commonsdk.statistics.common.DeviceConfig;

/* compiled from: UMSLNetWorkSenderHelper.java */
/* loaded from: classes.dex */
public class e {
    public String a = "10.0.0.172";
    public int b = 80;

    /* renamed from: c  reason: collision with root package name */
    public Context f3162c;

    public e(Context context) {
        this.f3162c = context;
    }

    private void a() {
        String imprintProperty = UMEnvelopeBuild.imprintProperty(this.f3162c, "sl_domain_p", "");
        if (!TextUtils.isEmpty(imprintProperty)) {
            a.f3120g = DataHelper.assembleStatelessURL(imprintProperty);
        }
    }

    private void b() {
        String imprintProperty = UMEnvelopeBuild.imprintProperty(this.f3162c, "sl_domain_p", "");
        String imprintProperty2 = UMEnvelopeBuild.imprintProperty(this.f3162c, "oversea_sl_domain_p", "");
        if (!TextUtils.isEmpty(imprintProperty)) {
            a.f3119f = DataHelper.assembleStatelessURL(imprintProperty);
        }
        if (!TextUtils.isEmpty(imprintProperty2)) {
            a.f3121h = DataHelper.assembleStatelessURL(imprintProperty2);
        }
        a.f3120g = a.f3121h;
        if (TextUtils.isEmpty(b.b)) {
            return;
        }
        if (b.b.startsWith("460") || b.b.startsWith("461")) {
            a.f3120g = a.f3119f;
        }
    }

    private boolean c() {
        NetworkInfo activeNetworkInfo;
        String extraInfo;
        Context context = this.f3162c;
        if (context == null || context.getPackageManager().checkPermission("android.permission.ACCESS_NETWORK_STATE", this.f3162c.getPackageName()) != 0) {
            return false;
        }
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) this.f3162c.getSystemService("connectivity");
            if (!(!DeviceConfig.checkPermission(this.f3162c, "android.permission.ACCESS_NETWORK_STATE") || connectivityManager == null || (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) == null || activeNetworkInfo.getType() == 1 || (extraInfo = activeNetworkInfo.getExtraInfo()) == null)) {
                if (!extraInfo.equals("cmwap") && !extraInfo.equals("3gwap")) {
                    if (extraInfo.equals("uniwap")) {
                    }
                }
                return true;
            }
        } catch (Throwable th) {
            UMCrashManager.reportCrash(this.f3162c, th);
        }
        return false;
    }

    /*  JADX ERROR: NullPointerException in pass: BlockProcessor
        java.lang.NullPointerException
        	at java.base/java.util.BitSet.or(BitSet.java:941)
        	at jadx.core.utils.BlockUtils.lambda$getPathCross$3(BlockUtils.java:689)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
        	at jadx.core.utils.BlockUtils.getPathCross(BlockUtils.java:689)
        	at jadx.core.dex.visitors.blocks.BlockExceptionHandler.searchBottomBlock(BlockExceptionHandler.java:397)
        	at jadx.core.dex.visitors.blocks.BlockExceptionHandler.wrapBlocksWithTryCatch(BlockExceptionHandler.java:328)
        	at jadx.core.dex.visitors.blocks.BlockExceptionHandler.connectExcHandlers(BlockExceptionHandler.java:83)
        	at jadx.core.dex.visitors.blocks.BlockExceptionHandler.process(BlockExceptionHandler.java:58)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.independentBlockTreeMod(BlockProcessor.java:452)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:51)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:44)
        */
    public boolean a(byte[] r10, java.lang.String r11) {
        /*
        // Method dump skipped, instructions count: 325
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.commonsdk.stateless.e.a(byte[], java.lang.String):boolean");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:24:0x00b7, code lost:
        if (r10 == null) goto L_0x00ba;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean b(byte[] r9, java.lang.String r10) {
        /*
            r8 = this;
            r0 = 0
            if (r9 == 0) goto L_0x00c9
            if (r10 != 0) goto L_0x0007
            goto L_0x00c9
        L_0x0007:
            r1 = 0
            boolean r2 = r8.c()     // Catch: all -> 0x00a9
            java.lang.String r3 = "/"
            if (r2 == 0) goto L_0x0040
            java.net.Proxy r2 = new java.net.Proxy     // Catch: all -> 0x00a9
            java.net.Proxy$Type r4 = java.net.Proxy.Type.HTTP     // Catch: all -> 0x00a9
            java.net.InetSocketAddress r5 = new java.net.InetSocketAddress     // Catch: all -> 0x00a9
            java.lang.String r6 = r8.a     // Catch: all -> 0x00a9
            int r7 = r8.b     // Catch: all -> 0x00a9
            r5.<init>(r6, r7)     // Catch: all -> 0x00a9
            r2.<init>(r4, r5)     // Catch: all -> 0x00a9
            java.net.URL r4 = new java.net.URL     // Catch: all -> 0x00a9
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: all -> 0x00a9
            r5.<init>()     // Catch: all -> 0x00a9
            java.lang.String r6 = com.umeng.commonsdk.stateless.a.f3120g     // Catch: all -> 0x00a9
            r5.append(r6)     // Catch: all -> 0x00a9
            r5.append(r3)     // Catch: all -> 0x00a9
            r5.append(r10)     // Catch: all -> 0x00a9
            java.lang.String r10 = r5.toString()     // Catch: all -> 0x00a9
            r4.<init>(r10)     // Catch: all -> 0x00a9
            java.net.URLConnection r10 = r4.openConnection(r2)     // Catch: all -> 0x00a9
            java.net.HttpURLConnection r10 = (java.net.HttpURLConnection) r10     // Catch: all -> 0x00a9
            goto L_0x005f
        L_0x0040:
            java.net.URL r2 = new java.net.URL     // Catch: all -> 0x00a9
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: all -> 0x00a9
            r4.<init>()     // Catch: all -> 0x00a9
            java.lang.String r5 = com.umeng.commonsdk.stateless.a.f3120g     // Catch: all -> 0x00a9
            r4.append(r5)     // Catch: all -> 0x00a9
            r4.append(r3)     // Catch: all -> 0x00a9
            r4.append(r10)     // Catch: all -> 0x00a9
            java.lang.String r10 = r4.toString()     // Catch: all -> 0x00a9
            r2.<init>(r10)     // Catch: all -> 0x00a9
            java.net.URLConnection r10 = r2.openConnection()     // Catch: all -> 0x00a9
            java.net.HttpURLConnection r10 = (java.net.HttpURLConnection) r10     // Catch: all -> 0x00a9
        L_0x005f:
            java.lang.String r2 = "X-Umeng-UTC"
            long r3 = java.lang.System.currentTimeMillis()     // Catch: all -> 0x00a7
            java.lang.String r3 = java.lang.String.valueOf(r3)     // Catch: all -> 0x00a7
            r10.setRequestProperty(r2, r3)     // Catch: all -> 0x00a7
            java.lang.String r2 = "Msg-Type"
            java.lang.String r3 = "envelope/json"
            r10.setRequestProperty(r2, r3)     // Catch: all -> 0x00a7
            r2 = 30000(0x7530, float:4.2039E-41)
            r10.setConnectTimeout(r2)     // Catch: all -> 0x00a7
            r10.setReadTimeout(r2)     // Catch: all -> 0x00a7
            java.lang.String r2 = "POST"
            r10.setRequestMethod(r2)     // Catch: all -> 0x00a7
            r2 = 1
            r10.setDoOutput(r2)     // Catch: all -> 0x00a7
            r10.setDoInput(r2)     // Catch: all -> 0x00a7
            r10.setUseCaches(r0)     // Catch: all -> 0x00a7
            java.io.OutputStream r1 = r10.getOutputStream()     // Catch: all -> 0x00a7
            r1.write(r9)     // Catch: all -> 0x00a7
            r1.flush()     // Catch: all -> 0x00a7
            r10.connect()     // Catch: all -> 0x00a7
            int r9 = r10.getResponseCode()     // Catch: all -> 0x00a7
            r3 = 200(0xc8, float:2.8E-43)
            if (r9 != r3) goto L_0x00a0
            r0 = 1
        L_0x00a0:
            r1.close()     // Catch: Exception -> 0x00a3
        L_0x00a3:
            r10.disconnect()
            goto L_0x00ba
        L_0x00a7:
            r9 = move-exception
            goto L_0x00ab
        L_0x00a9:
            r9 = move-exception
            r10 = r1
        L_0x00ab:
            android.content.Context r2 = r8.f3162c     // Catch: all -> 0x00bb
            com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(r2, r9)     // Catch: all -> 0x00bb
            if (r1 == 0) goto L_0x00b7
            r1.close()     // Catch: Exception -> 0x00b6
            goto L_0x00b7
        L_0x00b6:
        L_0x00b7:
            if (r10 == 0) goto L_0x00ba
            goto L_0x00a3
        L_0x00ba:
            return r0
        L_0x00bb:
            r9 = move-exception
            if (r1 == 0) goto L_0x00c3
            r1.close()     // Catch: Exception -> 0x00c2
            goto L_0x00c3
        L_0x00c2:
        L_0x00c3:
            if (r10 == 0) goto L_0x00c8
            r10.disconnect()
        L_0x00c8:
            throw r9
        L_0x00c9:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.commonsdk.stateless.e.b(byte[], java.lang.String):boolean");
    }
}
