package com.tencent.smtt.sdk;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.Process;
import android.text.TextUtils;
import android.util.Log;
import androidx.multidex.MultiDexExtractor;
import com.tencent.smtt.sdk.TbsDownloadConfig;
import com.tencent.smtt.sdk.TbsListener;
import com.tencent.smtt.utils.TbsLog;
import dalvik.system.DexClassLoader;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.channels.FileLock;
import java.util.Properties;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* compiled from: TbsInstaller.java */
/* loaded from: classes.dex */
public class l {

    /* renamed from: d  reason: collision with root package name */
    public static l f2581d;

    /* renamed from: f  reason: collision with root package name */
    public FileLock f2587f;

    /* renamed from: g  reason: collision with root package name */
    public FileOutputStream f2588g;

    /* renamed from: i  reason: collision with root package name */
    public static final ReentrantLock f2582i = new ReentrantLock();

    /* renamed from: j  reason: collision with root package name */
    public static final Lock f2583j = new ReentrantLock();

    /* renamed from: l  reason: collision with root package name */
    public static FileLock f2584l = null;
    public static ThreadLocal<Integer> a = new ThreadLocal<Integer>() { // from class: com.tencent.smtt.sdk.l.1
        @Override // java.lang.ThreadLocal
        /* renamed from: a */
        public Integer initialValue() {
            return 0;
        }
    };

    /* renamed from: m  reason: collision with root package name */
    public static Handler f2585m = null;
    public static final Long[][] n = {new Long[]{44006L, 39094008L}, new Long[]{44005L, 39094008L}, new Long[]{43910L, 38917816L}, new Long[]{44027L, 39094008L}, new Long[]{44028L, 39094008L}, new Long[]{44029L, 39094008L}, new Long[]{44030L, 39094008L}, new Long[]{44032L, 39094008L}, new Long[]{44033L, 39094008L}, new Long[]{44034L, 39094008L}, new Long[]{43909L, 38917816L}};
    public static boolean b = false;

    /* renamed from: c  reason: collision with root package name */
    public static final FileFilter f2580c = new FileFilter() { // from class: com.tencent.smtt.sdk.l.2
        @Override // java.io.FileFilter
        public boolean accept(File file) {
            String name = file.getName();
            if (name == null || name.endsWith(".jar_is_first_load_dex_flag_file") || name.endsWith(MultiDexExtractor.DEX_SUFFIX)) {
                return false;
            }
            if (Build.VERSION.SDK_INT < 26 || !name.endsWith(".prof")) {
                return Build.VERSION.SDK_INT < 26 || !name.equals("oat");
            }
            return false;
        }
    };
    public static int o = 0;
    public static boolean p = false;

    /* renamed from: e  reason: collision with root package name */
    public int f2586e = 0;

    /* renamed from: h  reason: collision with root package name */
    public boolean f2589h = false;

    /* renamed from: k  reason: collision with root package name */
    public boolean f2590k = false;

    public l() {
        if (f2585m == null) {
            f2585m = new Handler(k.a().getLooper()) { // from class: com.tencent.smtt.sdk.l.3
                @Override // android.os.Handler
                public void handleMessage(Message message) {
                    QbSdk.setTBSInstallingStatus(true);
                    int i2 = message.what;
                    if (i2 == 1) {
                        TbsLog.i("TbsInstaller", "TbsInstaller--handleMessage--MSG_INSTALL_TBS_CORE");
                        Object[] objArr = (Object[]) message.obj;
                        l.this.b((Context) objArr[0], (String) objArr[1], ((Integer) objArr[2]).intValue());
                    } else if (i2 == 2) {
                        TbsLog.i("TbsInstaller", "TbsInstaller--handleMessage--MSG_COPY_TBS_CORE");
                        Object[] objArr2 = (Object[]) message.obj;
                        l.this.a((Context) objArr2[0], (Context) objArr2[1], ((Integer) objArr2[2]).intValue());
                    } else if (i2 == 3) {
                        TbsLog.i("TbsInstaller", "TbsInstaller--handleMessage--MSG_INSTALL_TBS_CORE_EX");
                        Object[] objArr3 = (Object[]) message.obj;
                        l.this.b((Context) objArr3[0], (Bundle) objArr3[1]);
                    } else if (i2 != 4) {
                    } else {
                        TbsLog.i("TbsInstaller", "TbsInstaller--handleMessage--MSG_UNZIP_TBS_CORE");
                        Object[] objArr4 = (Object[]) message.obj;
                        l.this.b((Context) objArr4[0], (File) objArr4[1], ((Integer) objArr4[2]).intValue());
                        QbSdk.setTBSInstallingStatus(false);
                        super.handleMessage(message);
                    }
                }
            };
        }
    }

    private void A(Context context) {
        TbsLog.i("TbsInstaller", "TbsInstaller--deleteOldCore");
        com.tencent.smtt.utils.f.a(q(context), false);
    }

    private void B(Context context) {
        TbsLog.i("TbsInstaller", "TbsInstaller--renameShareDir");
        File f2 = f(context, 0);
        File q = q(context);
        if (f2 != null && q != null) {
            boolean renameTo = f2.renameTo(q);
            f.b.a.a.a.A("renameTbsCoreShareDir rename success=", renameTo, "TbsInstaller");
            if (context != null && TbsConfig.APP_WX.equals(context.getApplicationContext().getApplicationInfo().packageName)) {
                if (renameTo) {
                    TbsLogReport.getInstance(context).setInstallErrorCode(TbsListener.ErrorCode.RENAME_SUCCESS, " ");
                } else {
                    TbsLogReport.getInstance(context).setInstallErrorCode(TbsListener.ErrorCode.RENAME_FAIL, " ");
                }
            }
            g(context, false);
            return;
        }
        TbsLog.i("TbsInstaller", "renameTbsCoreShareDir return,tmpTbsCoreUnzipDir=" + f2 + "tbsSharePath=" + q);
    }

    private void C(Context context) {
        TbsLog.i("TbsInstaller", "TbsInstaller--renameTbsCoreCopyDir");
        File f2 = f(context, 1);
        File q = q(context);
        if (f2 == null || q == null) {
            return;
        }
        f2.renameTo(q);
        g(context, false);
    }

    private void D(Context context) {
        TbsLog.i("TbsInstaller", "TbsInstaller--renameTbsTpatchCoreDir");
        File f2 = f(context, 5);
        File q = q(context);
        if (f2 == null || q == null) {
            return;
        }
        f2.renameTo(q);
        g(context, false);
    }

    private void E(Context context) {
        TbsLog.i("TbsInstaller", "TbsInstaller--clearNewTbsCore");
        File f2 = f(context, 0);
        if (f2 != null) {
            com.tencent.smtt.utils.f.a(f2, false);
        }
        j.a(context).c(0, 5);
        j.a(context).c(-1);
        QbSdk.a(context, "TbsInstaller::clearNewTbsCore forceSysWebViewInner!");
    }

    private synchronized boolean c(Context context, boolean z) {
        TbsLog.i("TbsInstaller", "TbsInstaller-enableTbsCoreFromTpatch");
        boolean z2 = false;
        if (t(context)) {
            boolean tryLock = f2582i.tryLock();
            TbsLog.i("TbsInstaller", "TbsInstaller-enableTbsCoreFromTpatch Locked =" + tryLock);
            if (tryLock) {
                try {
                    int b2 = j.a(context).b("tpatch_status");
                    int a2 = a(false, context);
                    TbsLog.i("TbsInstaller", "TbsInstaller-enableTbsCoreFromTpatch copyStatus =" + b2);
                    TbsLog.i("TbsInstaller", "TbsInstaller-enableTbsCoreFromTpatch tbsCoreInstalledVer =" + a2);
                    if (b2 == 1) {
                        if (a2 == 0) {
                            TbsLog.i("TbsInstaller", "TbsInstaller-enableTbsCoreFromTpatch tbsCoreInstalledVer = 0", true);
                            y(context);
                        } else if (z) {
                            TbsLog.i("TbsInstaller", "TbsInstaller-enableTbsCoreFromTpatch tbsCoreInstalledVer != 0", true);
                            y(context);
                        }
                        z2 = true;
                    }
                    f2582i.unlock();
                } catch (Throwable th) {
                    f2582i.unlock();
                    throw th;
                }
            }
            b();
            return z2;
        }
        return false;
    }

    private synchronized boolean d(Context context, boolean z) {
        TbsLog.i("TbsInstaller", "TbsInstaller-enableTbsCoreFromCopy");
        boolean z2 = false;
        if (t(context)) {
            boolean tryLock = f2582i.tryLock();
            TbsLog.i("TbsInstaller", "TbsInstaller-enableTbsCoreFromCopy Locked =" + tryLock);
            if (tryLock) {
                try {
                    int b2 = j.a(context).b("copy_status");
                    int a2 = a(false, context);
                    TbsLog.i("TbsInstaller", "TbsInstaller-enableTbsCoreFromCopy copyStatus =" + b2);
                    TbsLog.i("TbsInstaller", "TbsInstaller-enableTbsCoreFromCopy tbsCoreInstalledVer =" + a2);
                    if (b2 == 1) {
                        if (a2 == 0) {
                            TbsLog.i("TbsInstaller", "TbsInstaller-enableTbsCoreFromCopy tbsCoreInstalledVer = 0", true);
                            z(context);
                        } else if (z) {
                            TbsLog.i("TbsInstaller", "TbsInstaller-enableTbsCoreFromCopy tbsCoreInstalledVer != 0", true);
                            z(context);
                        }
                        z2 = true;
                    }
                    f2582i.unlock();
                } catch (Throwable th) {
                    f2582i.unlock();
                    throw th;
                }
            }
            b();
            return z2;
        }
        return false;
    }

    private synchronized boolean e(Context context, boolean z) {
        if (context != null) {
            if (TbsConfig.APP_WX.equals(context.getApplicationContext().getApplicationInfo().packageName)) {
                TbsLogReport.getInstance(context).setInstallErrorCode(TbsListener.ErrorCode.INSTALL_FROM_UNZIP, " ");
            }
        }
        TbsLog.i("TbsInstaller", "TbsInstaller-enableTbsCoreFromUnzip canRenameTmpDir =" + z);
        TbsLog.i("TbsInstaller", "Tbsinstaller enableTbsCoreFromUnzip #1 ");
        boolean z2 = false;
        try {
        } catch (Exception e2) {
            QbSdk.a(context, "TbsInstaller::enableTbsCoreFromUnzip Exception: " + e2);
            e2.printStackTrace();
        }
        if (t(context)) {
            TbsLog.i("TbsInstaller", "Tbsinstaller enableTbsCoreFromUnzip #2 ");
            boolean tryLock = f2582i.tryLock();
            TbsLog.i("TbsInstaller", "TbsInstaller-enableTbsCoreFromUnzip locked=" + tryLock);
            if (tryLock) {
                try {
                    int c2 = j.a(context).c();
                    TbsLog.i("TbsInstaller", "TbsInstaller-enableTbsCoreFromUnzip installStatus=" + c2);
                    int a2 = a(false, context);
                    if (c2 == 2) {
                        TbsLog.i("TbsInstaller", "Tbsinstaller enableTbsCoreFromUnzip #4 ");
                        if (a2 == 0) {
                            TbsLog.i("TbsInstaller", "TbsInstaller-enableTbsCoreFromUnzip tbsCoreInstalledVer = 0", false);
                            x(context);
                        } else if (z) {
                            TbsLog.i("TbsInstaller", "TbsInstaller-enableTbsCoreFromUnzip tbsCoreInstalledVer != 0", false);
                            x(context);
                        }
                        z2 = true;
                    }
                    f2582i.unlock();
                } catch (Throwable th) {
                    f2582i.unlock();
                    throw th;
                }
            }
            b();
            return z2;
        }
        return false;
    }

    private synchronized boolean f(Context context, boolean z) {
        return false;
    }

    private void g(Context context, boolean z) {
        if (context == null) {
            TbsLogReport.getInstance(context).setInstallErrorCode(225, "setTmpFolderCoreToRead context is null");
            return;
        }
        try {
            File file = new File(context.getDir("tbs", 0), "tmp_folder_core_to_read.conf");
            if (z) {
                if (!file.exists()) {
                    file.createNewFile();
                }
            } else {
                com.tencent.smtt.utils.f.b(file);
            }
        } catch (Exception e2) {
            TbsLogReport tbsLogReport = TbsLogReport.getInstance(context);
            StringBuilder o2 = f.b.a.a.a.o("setTmpFolderCoreToRead Exception message is ");
            o2.append(e2.getMessage());
            o2.append(" Exception cause is ");
            o2.append(e2.getCause());
            tbsLogReport.setInstallErrorCode(225, o2.toString());
        }
    }

    private void h(Context context, int i2) {
        TbsLog.i("TbsInstaller", "proceedTpatchStatus,result=" + i2);
        if (i2 == 0) {
            if (TbsDownloader.a(context)) {
                i(context, 6);
            } else {
                g(context, true);
                j.a(context).b(TbsDownloadConfig.getInstance(context).mPreferences.getInt(TbsDownloadConfig.TbsConfigKey.KEY_TBS_DOWNLOAD_V, 0), 1);
            }
        }
        QbSdk.setTBSInstallingStatus(false);
    }

    private void i(Context context, int i2) {
        File f2 = a().f(context, i2);
        a().g(context, true);
        File p2 = p(context);
        com.tencent.smtt.utils.f.a(p2, true);
        f2.renameTo(p2);
        TbsShareManager.b(context);
    }

    private boolean j(Context context, int i2) {
        File f2;
        boolean z;
        TbsLog.i("TbsInstaller", "TbsInstaller-doTbsDexOpt start - dirMode: " + i2);
        boolean z2 = false;
        try {
            if (i2 != 0) {
                if (i2 == 1) {
                    f2 = f(context, 1);
                } else if (i2 != 2) {
                    TbsLog.e("TbsInstaller", "doDexoptOrDexoat mode error: " + i2);
                    return false;
                } else {
                    f2 = q(context);
                }
            } else if (TbsDownloader.a(context)) {
                return true;
            } else {
                f2 = f(context, 0);
            }
            String property = System.getProperty("java.vm.version");
            z = property != null && property.startsWith("2");
            boolean z3 = Build.VERSION.SDK_INT == 23;
            boolean z4 = TbsDownloadConfig.getInstance(context).mPreferences.getBoolean(TbsDownloadConfig.TbsConfigKey.KEY_STOP_PRE_OAT, false);
            if (z && z3 && !z4) {
                z2 = true;
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            TbsLogReport.getInstance(context).setInstallErrorCode(TbsListener.ErrorCode.DEXOPT_EXCEPTION, e2.toString());
        }
        if (z2 && c(context, f2)) {
            TbsLog.i("TbsInstaller", "doTbsDexOpt -- doDexoatForArtVm");
            return true;
        } else if (z) {
            TbsLog.i("TbsInstaller", "doTbsDexOpt -- is ART mode, skip!");
            TbsLog.i("TbsInstaller", "TbsInstaller-doTbsDexOpt done");
            return true;
        } else {
            TbsLog.i("TbsInstaller", "doTbsDexOpt -- doDexoptForDavlikVM");
            return b(context, f2);
        }
    }

    public static File s(Context context) {
        File file = new File(context.getDir("tbs", 0), "core_private");
        if (file.isDirectory() || file.mkdir()) {
            return file;
        }
        return null;
    }

    private int u(Context context) {
        boolean z = j.a(context).d() == 1;
        boolean a2 = TbsDownloader.a(context);
        if (z) {
            return a2 ? TbsListener.ErrorCode.DECOUPLE_INCURUPDATE_SUCCESS : TbsListener.ErrorCode.INCRUPDATE_INSTALL_SUCCESS;
        } else if (a2) {
            return TbsListener.ErrorCode.DECOUPLE_INSTLL_SUCCESS;
        } else {
            return 200;
        }
    }

    public static boolean v(Context context) {
        if (context == null) {
            TbsLog.i("TbsInstaller", "TbsInstaller-getTmpFolderCoreToRead, #1");
            return true;
        }
        try {
            if (new File(context.getDir("tbs", 0), "tmp_folder_core_to_read.conf").exists()) {
                TbsLog.i("TbsInstaller", "TbsInstaller-getTmpFolderCoreToRead, #2");
                return true;
            }
            TbsLog.i("TbsInstaller", "TbsInstaller-getTmpFolderCoreToRead, #3");
            return false;
        } catch (Exception unused) {
            TbsLog.i("TbsInstaller", "TbsInstaller-getTmpFolderCoreToRead, #4");
            return true;
        }
    }

    private boolean w(Context context) {
        boolean z;
        TbsLog.i("TbsInstaller", "Tbsinstaller getTbsCoreRenameFileLock #1 ");
        try {
            z = TbsDownloadConfig.getInstance().getTbsCoreLoadRenameFileLockEnable();
        } catch (Throwable unused) {
            z = true;
        }
        f.b.a.a.a.A("Tbsinstaller getTbsCoreRenameFileLock #2  enabled is ", z, "TbsInstaller");
        if (!z) {
            f2584l = t.a().b(context);
        } else {
            f2584l = com.tencent.smtt.utils.f.f(context);
        }
        if (f2584l == null) {
            TbsLog.i("TbsInstaller", "getTbsCoreRenameFileLock## failed!");
            return false;
        }
        TbsLog.i("TbsInstaller", "Tbsinstaller getTbsCoreRenameFileLock true ");
        return true;
    }

    private void x(Context context) {
        TbsLog.i("TbsInstaller", "TbsInstaller--generateNewTbsCoreFromUnzip");
        if (!w(context)) {
            TbsLog.i("TbsInstaller", "get rename fileLock#4 ## failed!");
            return;
        }
        try {
            A(context);
            B(context);
            TbsLog.i("TbsInstaller", "after renameTbsCoreShareDir");
            if (!TbsShareManager.isThirdPartyApp(context)) {
                TbsLog.i("TbsInstaller", "prepare to shareTbsCore");
                TbsShareManager.a(context);
            } else {
                TbsLog.i("TbsInstaller", "is thirdapp and not chmod");
            }
            j.a(context).a(0);
            j.a(context).b(0);
            j.a(context).d(0);
            j.a(context).a("incrupdate_retry_num", 0);
            j.a(context).c(0, 3);
            j.a(context).a("");
            j.a(context).a("tpatch_num", 0);
            j.a(context).c(-1);
            if (!TbsShareManager.isThirdPartyApp(context)) {
                int i2 = TbsDownloadConfig.getInstance(context).mPreferences.getInt(TbsDownloadConfig.TbsConfigKey.KEY_DECOUPLECOREVERSION, 0);
                if (i2 > 0 && i2 != a().h(context) && i2 == a().i(context)) {
                    n(context);
                } else {
                    TbsLog.i("TbsInstaller", "TbsInstaller--generateNewTbsCoreFromUnzip #1 deCoupleCoreVersion is " + i2 + " getTbsCoreShareDecoupleCoreVersion is " + a().h(context) + " getTbsCoreInstalledVerInNolock is " + a().i(context));
                }
            }
            if (TbsShareManager.isThirdPartyApp(context)) {
                TbsShareManager.writeCoreInfoForThirdPartyApp(context, m(context), true);
            }
            a.set(0);
            o = 0;
        } catch (Throwable th) {
            th.printStackTrace();
            TbsLogReport tbsLogReport = TbsLogReport.getInstance(context);
            StringBuilder o2 = f.b.a.a.a.o("exception when renameing from unzip:");
            o2.append(th.toString());
            tbsLogReport.setInstallErrorCode(TbsListener.ErrorCode.RENAME_EXCEPTION, o2.toString());
            TbsLog.e("TbsInstaller", "TbsInstaller--generateNewTbsCoreFromUnzip Exception", true);
        }
        g(context);
    }

    private void y(Context context) {
        TbsLog.i("TbsInstaller", "TbsInstaller--generateNewTbsCoreFromTpatch");
        if (!w(context)) {
            TbsLog.i("TbsInstaller", "get rename fileLock#4 ## failed!");
            return;
        }
        try {
            A(context);
            D(context);
            TbsShareManager.a(context);
            j.a(context).b(0, -1);
            j.a(context).a("tpatch_num", 0);
            a.set(0);
        } catch (Exception e2) {
            e2.printStackTrace();
            TbsLogReport tbsLogReport = TbsLogReport.getInstance(context);
            StringBuilder o2 = f.b.a.a.a.o("exception when renameing from tpatch:");
            o2.append(e2.toString());
            tbsLogReport.setInstallErrorCode(TbsListener.ErrorCode.TPATCH_ENABLE_EXCEPTION, o2.toString());
        }
        g(context);
    }

    private void z(Context context) {
        TbsLog.i("TbsInstaller", "TbsInstaller--generateNewTbsCoreFromCopy");
        if (!w(context)) {
            TbsLog.i("TbsInstaller", "get rename fileLock#4 ## failed!");
            return;
        }
        try {
            A(context);
            C(context);
            TbsShareManager.a(context);
            j.a(context).a(0, 3);
            j.a(context).a("tpatch_num", 0);
            if (!TbsShareManager.isThirdPartyApp(context)) {
                int i2 = TbsDownloadConfig.getInstance(context).mPreferences.getInt(TbsDownloadConfig.TbsConfigKey.KEY_DECOUPLECOREVERSION, 0);
                if (i2 > 0 && i2 != a().h(context) && i2 == a().i(context)) {
                    n(context);
                } else {
                    TbsLog.i("TbsInstaller", "TbsInstaller--generateNewTbsCoreFromCopy #1 deCoupleCoreVersion is " + i2 + " getTbsCoreShareDecoupleCoreVersion is " + a().h(context) + " getTbsCoreInstalledVerInNolock is " + a().i(context));
                }
            }
            a.set(0);
        } catch (Exception e2) {
            e2.printStackTrace();
            TbsLogReport tbsLogReport = TbsLogReport.getInstance(context);
            StringBuilder o2 = f.b.a.a.a.o("exception when renameing from copy:");
            o2.append(e2.toString());
            tbsLogReport.setInstallErrorCode(TbsListener.ErrorCode.RENAME_EXCEPTION, o2.toString());
        }
        g(context);
    }

    public boolean a(Context context, File[] fileArr) {
        return false;
    }

    public void b(Context context, boolean z) {
        if (QbSdk.b) {
            return;
        }
        TbsLog.i("TbsInstaller", "Tbsinstaller installTbsCoreIfNeeded #1 ");
        if (TbsShareManager.isThirdPartyApp(context) && j.a(context).b("remove_old_core") == 1 && z) {
            try {
                com.tencent.smtt.utils.f.b(a().q(context));
                TbsLog.i("TbsInstaller", "thirdAPP success--> delete old core_share Directory");
            } catch (Throwable th) {
                th.printStackTrace();
            }
            j.a(context).a("remove_old_core", 0);
        }
        if (v(context)) {
            TbsLog.i("TbsInstaller", "Tbsinstaller installTbsCoreIfNeeded #2 ");
            if (a(context, "core_unzip_tmp") && e(context, z)) {
                TbsLog.i("TbsInstaller", "TbsInstaller-installTbsCoreIfNeeded, enableTbsCoreFromUnzip!!", true);
            } else if (a(context, "core_share_backup_tmp") && f(context, z)) {
                TbsLog.i("TbsInstaller", "TbsInstaller-installTbsCoreIfNeeded, enableTbsCoreFromBackup!!", true);
            } else if (a(context, "core_copy_tmp") && d(context, z)) {
                TbsLog.i("TbsInstaller", "TbsInstaller-installTbsCoreIfNeeded, enableTbsCoreFromCopy!!", true);
            } else if (a(context, "tpatch_tmp") && c(context, z)) {
                TbsLog.i("TbsInstaller", "TbsInstaller-installTbsCoreIfNeeded, enableTbsCoreFromTpatch!!", true);
            } else {
                TbsLog.i("TbsInstaller", "TbsInstaller-installTbsCoreIfNeeded, error !!", true);
            }
        }
    }

    public void k(Context context) {
        if (o != 0) {
            return;
        }
        o = i(context);
    }

    public boolean l(Context context) {
        return new File(q(context), "tbs.conf").exists();
    }

    public int m(Context context) {
        BufferedInputStream bufferedInputStream;
        if (!t(context)) {
            return -1;
        }
        boolean tryLock = f2582i.tryLock();
        f.b.a.a.a.A("TbsInstaller--getTbsCoreInstalledVerWithLock locked=", tryLock, "TbsInstaller");
        if (tryLock) {
            BufferedInputStream bufferedInputStream2 = null;
            try {
                try {
                    File file = new File(q(context), "tbs.conf");
                    if (!file.exists()) {
                        try {
                            if (f2582i.isHeldByCurrentThread()) {
                                f2582i.unlock();
                            }
                        } catch (Throwable th) {
                            TbsLog.e("TbsInstaller", "TbsRenameLock.unlock exception: " + th);
                        }
                        b();
                        return 0;
                    }
                    Properties properties = new Properties();
                    bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
                    try {
                        properties.load(bufferedInputStream);
                        bufferedInputStream.close();
                        String property = properties.getProperty("tbs_core_version");
                        if (property == null) {
                            try {
                                bufferedInputStream.close();
                            } catch (IOException e2) {
                                StringBuilder o2 = f.b.a.a.a.o("TbsInstaller--getTbsCoreInstalledVerWithLock IOException=");
                                o2.append(e2.toString());
                                TbsLog.i("TbsInstaller", o2.toString());
                            }
                            try {
                                if (f2582i.isHeldByCurrentThread()) {
                                    f2582i.unlock();
                                }
                            } catch (Throwable th2) {
                                TbsLog.e("TbsInstaller", "TbsRenameLock.unlock exception: " + th2);
                            }
                            b();
                            return 0;
                        }
                        a.set(Integer.valueOf(Integer.parseInt(property)));
                        int intValue = a.get().intValue();
                        try {
                            bufferedInputStream.close();
                        } catch (IOException e3) {
                            StringBuilder o3 = f.b.a.a.a.o("TbsInstaller--getTbsCoreInstalledVerWithLock IOException=");
                            o3.append(e3.toString());
                            TbsLog.i("TbsInstaller", o3.toString());
                        }
                        try {
                            if (f2582i.isHeldByCurrentThread()) {
                                f2582i.unlock();
                            }
                        } catch (Throwable th3) {
                            TbsLog.e("TbsInstaller", "TbsRenameLock.unlock exception: " + th3);
                        }
                        b();
                        return intValue;
                    } catch (Exception e4) {
                        e = e4;
                        bufferedInputStream2 = bufferedInputStream;
                        TbsLog.i("TbsInstaller", "TbsInstaller--getTbsCoreInstalledVerWithLock Exception=" + e.toString());
                        if (bufferedInputStream2 != null) {
                            try {
                                bufferedInputStream2.close();
                            } catch (IOException e5) {
                                StringBuilder o4 = f.b.a.a.a.o("TbsInstaller--getTbsCoreInstalledVerWithLock IOException=");
                                o4.append(e5.toString());
                                TbsLog.i("TbsInstaller", o4.toString());
                            }
                        }
                        try {
                            if (f2582i.isHeldByCurrentThread()) {
                                f2582i.unlock();
                            }
                        } catch (Throwable th4) {
                            TbsLog.e("TbsInstaller", "TbsRenameLock.unlock exception: " + th4);
                        }
                        b();
                        return 0;
                    } catch (Throwable th5) {
                        th = th5;
                        if (bufferedInputStream != null) {
                            try {
                                bufferedInputStream.close();
                            } catch (IOException e6) {
                                StringBuilder o5 = f.b.a.a.a.o("TbsInstaller--getTbsCoreInstalledVerWithLock IOException=");
                                o5.append(e6.toString());
                                TbsLog.i("TbsInstaller", o5.toString());
                            }
                        }
                        try {
                            if (f2582i.isHeldByCurrentThread()) {
                                f2582i.unlock();
                            }
                        } catch (Throwable th6) {
                            TbsLog.e("TbsInstaller", "TbsRenameLock.unlock exception: " + th6);
                        }
                        b();
                        throw th;
                    }
                } catch (Exception e7) {
                    e = e7;
                }
            } catch (Throwable th7) {
                th = th7;
                bufferedInputStream = null;
            }
        } else {
            b();
            return 0;
        }
    }

    public boolean n(Context context) {
        TbsLog.i("TbsInstaller", "TbsInstaller--coreShareCopyToDecouple #0");
        File q = q(context);
        File p2 = p(context);
        try {
            com.tencent.smtt.utils.f.a(p2, true);
            com.tencent.smtt.utils.f.a(q, p2, new FileFilter() { // from class: com.tencent.smtt.sdk.l.5
                @Override // java.io.FileFilter
                public boolean accept(File file) {
                    return (file.getName().endsWith(MultiDexExtractor.DEX_SUFFIX) || file.getName().endsWith(".jar_is_first_load_dex_flag_file")) ? false : true;
                }
            });
            TbsShareManager.b(context);
            TbsLog.i("TbsInstaller", "TbsInstaller--coreShareCopyToDecouple success!!!");
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public void o(Context context) {
        TbsLog.i("TbsInstaller", "TbsInstaller--cleanStatusAndTmpDir");
        j.a(context).a(0);
        j.a(context).b(0);
        j.a(context).d(0);
        j.a(context).a("incrupdate_retry_num", 0);
        if (TbsDownloader.a(context)) {
            return;
        }
        j.a(context).c(0, -1);
        j.a(context).a("");
        j.a(context).a("copy_retry_num", 0);
        j.a(context).c(-1);
        j.a(context).a(0, -1);
        com.tencent.smtt.utils.f.a(f(context, 0), true);
        com.tencent.smtt.utils.f.a(f(context, 1), true);
    }

    public File p(Context context) {
        File file = new File(context.getDir("tbs", 0), "core_share_decouple");
        if (file.isDirectory() || file.mkdir()) {
            return file;
        }
        return null;
    }

    public File q(Context context) {
        return b((Context) null, context);
    }

    public File r(Context context) {
        File file = new File(context.getDir("tbs", 0), "share");
        if (file.isDirectory() || file.mkdir()) {
            return file;
        }
        return null;
    }

    public synchronized boolean t(Context context) {
        if (this.f2586e > 0) {
            TbsLog.i("TbsInstaller", "getTbsInstallingFileLock success,is cached= true");
            this.f2586e++;
            return true;
        }
        FileOutputStream b2 = com.tencent.smtt.utils.f.b(context, true, "tbslock.txt");
        this.f2588g = b2;
        if (b2 != null) {
            FileLock a2 = com.tencent.smtt.utils.f.a(context, b2);
            this.f2587f = a2;
            if (a2 == null) {
                TbsLog.i("TbsInstaller", "getTbsInstallingFileLock tbsFileLockFileLock == null");
                return false;
            }
            TbsLog.i("TbsInstaller", "getTbsInstallingFileLock success,is cached= false");
            this.f2586e++;
            return true;
        }
        TbsLog.i("TbsInstaller", "getTbsInstallingFileLock get install fos failed");
        return false;
    }

    public boolean f(Context context) {
        if (TbsShareManager.getHostCorePathAppDefined() != null) {
            return true;
        }
        try {
            Signature signature = context.getPackageManager().getPackageInfo(context.getPackageName(), 64).signatures[0];
            if (context.getPackageName().equals(TbsConfig.APP_QB)) {
                if (!signature.toCharsString().equals("3082023f308201a8a00302010202044c46914a300d06092a864886f70d01010505003064310b30090603550406130238363110300e060355040813074265696a696e673110300e060355040713074265696a696e673110300e060355040a130754656e63656e74310c300a060355040b13035753443111300f0603550403130873616d75656c6d6f301e170d3130303732313036313835305a170d3430303731333036313835305a3064310b30090603550406130238363110300e060355040813074265696a696e673110300e060355040713074265696a696e673110300e060355040a130754656e63656e74310c300a060355040b13035753443111300f0603550403130873616d75656c6d6f30819f300d06092a864886f70d010101050003818d0030818902818100c209077044bd0d63ea00ede5b839914cabcc912a87f0f8b390877e0f7a2583f0d5933443c40431c35a4433bc4c965800141961adc44c9625b1d321385221fd097e5bdc2f44a1840d643ab59dc070cf6c4b4b4d98bed5cbb8046e0a7078ae134da107cdf2bfc9b440fe5cb2f7549b44b73202cc6f7c2c55b8cfb0d333a021f01f0203010001300d06092a864886f70d010105050003818100b007db9922774ef4ccfee81ba514a8d57c410257e7a2eba64bfa17c9e690da08106d32f637ac41fbc9f205176c71bde238c872c3ee2f8313502bee44c80288ea4ef377a6f2cdfe4d3653c145c4acfedbfbadea23b559d41980cc3cdd35d79a68240693739aabf5c5ed26148756cf88264226de394c8a24ac35b712b120d4d23a")) {
                    return false;
                }
            } else if (context.getPackageName().equals(TbsConfig.APP_WX)) {
                if (!signature.toCharsString().equals("308202eb30820254a00302010202044d36f7a4300d06092a864886f70d01010505003081b9310b300906035504061302383631123010060355040813094775616e67646f6e673111300f060355040713085368656e7a68656e31353033060355040a132c54656e63656e7420546563686e6f6c6f6779285368656e7a68656e2920436f6d70616e79204c696d69746564313a3038060355040b133154656e63656e74204775616e677a686f7520526573656172636820616e6420446576656c6f706d656e742043656e7465723110300e0603550403130754656e63656e74301e170d3131303131393134333933325a170d3431303131313134333933325a3081b9310b300906035504061302383631123010060355040813094775616e67646f6e673111300f060355040713085368656e7a68656e31353033060355040a132c54656e63656e7420546563686e6f6c6f6779285368656e7a68656e2920436f6d70616e79204c696d69746564313a3038060355040b133154656e63656e74204775616e677a686f7520526573656172636820616e6420446576656c6f706d656e742043656e7465723110300e0603550403130754656e63656e7430819f300d06092a864886f70d010101050003818d0030818902818100c05f34b231b083fb1323670bfbe7bdab40c0c0a6efc87ef2072a1ff0d60cc67c8edb0d0847f210bea6cbfaa241be70c86daf56be08b723c859e52428a064555d80db448cdcacc1aea2501eba06f8bad12a4fa49d85cacd7abeb68945a5cb5e061629b52e3254c373550ee4e40cb7c8ae6f7a8151ccd8df582d446f39ae0c5e930203010001300d06092a864886f70d0101050500038181009c8d9d7f2f908c42081b4c764c377109a8b2c70582422125ce545842d5f520aea69550b6bd8bfd94e987b75a3077eb04ad341f481aac266e89d3864456e69fba13df018acdc168b9a19dfd7ad9d9cc6f6ace57c746515f71234df3a053e33ba93ece5cd0fc15f3e389a3f365588a9fcb439e069d3629cd7732a13fff7b891499")) {
                    return false;
                }
            } else if (context.getPackageName().equals(TbsConfig.APP_QQ)) {
                if (!signature.toCharsString().equals("30820253308201bca00302010202044bbb0361300d06092a864886f70d0101050500306d310e300c060355040613054368696e61310f300d06035504080c06e58c97e4baac310f300d06035504070c06e58c97e4baac310f300d060355040a0c06e885bee8aeaf311b3019060355040b0c12e697a0e7babfe4b89ae58aa1e7b3bbe7bb9f310b30090603550403130251513020170d3130303430363039343831375a180f32323834303132303039343831375a306d310e300c060355040613054368696e61310f300d06035504080c06e58c97e4baac310f300d06035504070c06e58c97e4baac310f300d060355040a0c06e885bee8aeaf311b3019060355040b0c12e697a0e7babfe4b89ae58aa1e7b3bbe7bb9f310b300906035504031302515130819f300d06092a864886f70d010101050003818d0030818902818100a15e9756216f694c5915e0b529095254367c4e64faeff07ae13488d946615a58ddc31a415f717d019edc6d30b9603d3e2a7b3de0ab7e0cf52dfee39373bc472fa997027d798d59f81d525a69ecf156e885fd1e2790924386b2230cc90e3b7adc95603ddcf4c40bdc72f22db0f216a99c371d3bf89cba6578c60699e8a0d536950203010001300d06092a864886f70d01010505000381810094a9b80e80691645dd42d6611775a855f71bcd4d77cb60a8e29404035a5e00b21bcc5d4a562482126bd91b6b0e50709377ceb9ef8c2efd12cc8b16afd9a159f350bb270b14204ff065d843832720702e28b41491fbc3a205f5f2f42526d67f17614d8a974de6487b2c866efede3b4e49a0f916baa3c1336fd2ee1b1629652049")) {
                    return false;
                }
            } else if (context.getPackageName().equals(TbsConfig.APP_DEMO)) {
                if (!signature.toCharsString().equals("3082023f308201a8a00302010202044c46914a300d06092a864886f70d01010505003064310b30090603550406130238363110300e060355040813074265696a696e673110300e060355040713074265696a696e673110300e060355040a130754656e63656e74310c300a060355040b13035753443111300f0603550403130873616d75656c6d6f301e170d3130303732313036313835305a170d3430303731333036313835305a3064310b30090603550406130238363110300e060355040813074265696a696e673110300e060355040713074265696a696e673110300e060355040a130754656e63656e74310c300a060355040b13035753443111300f0603550403130873616d75656c6d6f30819f300d06092a864886f70d010101050003818d0030818902818100c209077044bd0d63ea00ede5b839914cabcc912a87f0f8b390877e0f7a2583f0d5933443c40431c35a4433bc4c965800141961adc44c9625b1d321385221fd097e5bdc2f44a1840d643ab59dc070cf6c4b4b4d98bed5cbb8046e0a7078ae134da107cdf2bfc9b440fe5cb2f7549b44b73202cc6f7c2c55b8cfb0d333a021f01f0203010001300d06092a864886f70d010105050003818100b007db9922774ef4ccfee81ba514a8d57c410257e7a2eba64bfa17c9e690da08106d32f637ac41fbc9f205176c71bde238c872c3ee2f8313502bee44c80288ea4ef377a6f2cdfe4d3653c145c4acfedbfbadea23b559d41980cc3cdd35d79a68240693739aabf5c5ed26148756cf88264226de394c8a24ac35b712b120d4d23a")) {
                    return false;
                }
            } else if (context.getPackageName().equals(TbsConfig.APP_QZONE)) {
                if (!signature.toCharsString().equals("308202ad30820216a00302010202044c26cea2300d06092a864886f70d010105050030819a310b3009060355040613023836311530130603550408130c4265696a696e672043697479311530130603550407130c4265696a696e67204369747931263024060355040a131d515a6f6e65205465616d206f662054656e63656e7420436f6d70616e7931183016060355040b130f54656e63656e7420436f6d70616e79311b301906035504031312416e64726f696420515a6f6e65205465616d301e170d3130303632373034303830325a170d3335303632313034303830325a30819a310b3009060355040613023836311530130603550408130c4265696a696e672043697479311530130603550407130c4265696a696e67204369747931263024060355040a131d515a6f6e65205465616d206f662054656e63656e7420436f6d70616e7931183016060355040b130f54656e63656e7420436f6d70616e79311b301906035504031312416e64726f696420515a6f6e65205465616d30819f300d06092a864886f70d010101050003818d003081890281810082d6aca037a9843fbbe88b6dd19f36e9c24ce174c1b398f3a529e2a7fe02de99c27539602c026edf96ad8d43df32a85458bca1e6fbf11958658a7d6751a1d9b782bf43a8c19bd1c06bdbfd94c0516326ae3cf638ac42bb470580e340c46e6f306a772c1ef98f10a559edf867f3f31fe492808776b7bd953b2cba2d2b2d66a44f0203010001300d06092a864886f70d0101050500038181006003b04a8a8c5be9650f350cda6896e57dd13e6e83e7f891fc70f6a3c2eaf75cfa4fc998365deabbd1b9092159edf4b90df5702a0d101f8840b5d4586eb92a1c3cd19d95fbc1c2ac956309eda8eef3944baf08c4a49d3b9b3ffb06bc13dab94ecb5b8eb74e8789aa0ba21cb567f538bbc59c2a11e6919924a24272eb79251677")) {
                    return false;
                }
            } else if (context.getPackageName().equals("com.tencent.qqpimsecure") && !signature.toCharsString().equals("30820239308201a2a00302010202044c96f48f300d06092a864886f70d01010505003060310b300906035504061302434e310b300906035504081302474431123010060355040713094775616e677a686f753110300e060355040a130754656e63656e74310b3009060355040b130233473111300f0603550403130857696c736f6e57753020170d3130303932303035343334335a180f32303635303632333035343334335a3060310b300906035504061302434e310b300906035504081302474431123010060355040713094775616e677a686f753110300e060355040a130754656e63656e74310b3009060355040b130233473111300f0603550403130857696c736f6e577530819f300d06092a864886f70d010101050003818d0030818902818100b56e79dbb1185a79e52d792bb3d0bb3da8010d9b87da92ec69f7dc5ad66ab6bfdff2a6a1ed285dd2358f28b72a468be7c10a2ce30c4c27323ed4edcc936080e5bedc2cbbca0b7e879c08a631182793f44bb3ea284179b263410c298e5f6831032c9702ba4a74e2ccfc9ef857f12201451602fc8e774ac59d6398511586c83d1d0203010001300d06092a864886f70d0101050500038181002475615bb65b8d8786b890535802948840387d06b1692ff3ea47ef4c435719ba1865b81e6bfa6293ce31747c3cd6b34595b485cc1563fd90107ba5845c28b95c79138f0dec288940395bc10f92f2b69d8dc410999deb38900974ce9984b678030edfba8816582f56160d87e38641288d8588d2a31e20b89f223d788dd35cc9c8")) {
                return false;
            }
            return true;
        } catch (Exception unused) {
            TbsLog.i("TbsInstaller", "TbsInstaller-installLocalTbsCore getPackageInfo fail");
            return false;
        }
    }

    public static synchronized l a() {
        l lVar;
        synchronized (l.class) {
            if (f2581d == null) {
                synchronized (l.class) {
                    if (f2581d == null) {
                        f2581d = new l();
                    }
                }
            }
            lVar = f2581d;
        }
        return lVar;
    }

    public int i(Context context) {
        BufferedInputStream bufferedInputStream;
        BufferedInputStream bufferedInputStream2 = null;
        try {
            try {
                File file = new File(q(context), "tbs.conf");
                if (file.exists()) {
                    Properties properties = new Properties();
                    bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
                    try {
                        properties.load(bufferedInputStream);
                        bufferedInputStream.close();
                        String property = properties.getProperty("tbs_core_version");
                        if (property == null) {
                            try {
                                bufferedInputStream.close();
                            } catch (IOException e2) {
                                StringBuilder o2 = f.b.a.a.a.o("TbsInstaller--getTbsCoreInstalledVerInNolock IOException=");
                                o2.append(e2.toString());
                                TbsLog.i("TbsInstaller", o2.toString());
                            }
                            return 0;
                        }
                        int parseInt = Integer.parseInt(property);
                        if (o == 0) {
                            o = parseInt;
                        }
                        try {
                            bufferedInputStream.close();
                        } catch (IOException e3) {
                            StringBuilder o3 = f.b.a.a.a.o("TbsInstaller--getTbsCoreInstalledVerInNolock IOException=");
                            o3.append(e3.toString());
                            TbsLog.i("TbsInstaller", o3.toString());
                        }
                        return parseInt;
                    } catch (Exception e4) {
                        e = e4;
                        bufferedInputStream2 = bufferedInputStream;
                        TbsLog.i("TbsInstaller", "TbsInstaller--getTbsCoreInstalledVerInNolock Exception=" + e.toString());
                        if (bufferedInputStream2 != null) {
                            try {
                                bufferedInputStream2.close();
                            } catch (IOException e5) {
                                StringBuilder o4 = f.b.a.a.a.o("TbsInstaller--getTbsCoreInstalledVerInNolock IOException=");
                                o4.append(e5.toString());
                                TbsLog.i("TbsInstaller", o4.toString());
                            }
                        }
                        return 0;
                    } catch (Throwable th) {
                        th = th;
                        if (bufferedInputStream != null) {
                            try {
                                bufferedInputStream.close();
                            } catch (IOException e6) {
                                StringBuilder o5 = f.b.a.a.a.o("TbsInstaller--getTbsCoreInstalledVerInNolock IOException=");
                                o5.append(e6.toString());
                                TbsLog.i("TbsInstaller", o5.toString());
                            }
                        }
                        throw th;
                    }
                }
                return 0;
            } catch (Exception e7) {
                e = e7;
            }
        } catch (Throwable th2) {
            th = th2;
            bufferedInputStream = null;
        }
    }

    public void g(Context context) {
        boolean z;
        FileLock fileLock;
        try {
            z = TbsDownloadConfig.getInstance().getTbsCoreLoadRenameFileLockEnable();
        } catch (Throwable unused) {
            z = true;
        }
        if (z && (fileLock = f2584l) != null) {
            com.tencent.smtt.utils.f.a(context, fileLock);
        }
    }

    public int h(Context context) {
        BufferedInputStream bufferedInputStream = null;
        try {
            File file = new File(p(context), "tbs.conf");
            if (file.exists()) {
                Properties properties = new Properties();
                BufferedInputStream bufferedInputStream2 = new BufferedInputStream(new FileInputStream(file));
                try {
                    properties.load(bufferedInputStream2);
                    bufferedInputStream2.close();
                    String property = properties.getProperty("tbs_core_version");
                    if (property == null) {
                        try {
                            bufferedInputStream2.close();
                        } catch (IOException unused) {
                        }
                        return 0;
                    }
                    int parseInt = Integer.parseInt(property);
                    try {
                        bufferedInputStream2.close();
                    } catch (IOException unused2) {
                    }
                    return parseInt;
                } catch (Exception unused3) {
                    bufferedInputStream = bufferedInputStream2;
                    if (bufferedInputStream != null) {
                        try {
                            bufferedInputStream.close();
                        } catch (IOException unused4) {
                        }
                    }
                    return 0;
                } catch (Throwable th) {
                    th = th;
                    bufferedInputStream = bufferedInputStream2;
                    if (bufferedInputStream != null) {
                        try {
                            bufferedInputStream.close();
                        } catch (IOException unused5) {
                        }
                    }
                    throw th;
                }
            }
            return 0;
        } catch (Exception unused6) {
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public int a(boolean z, Context context) {
        if (z || a.get().intValue() <= 0) {
            a.set(Integer.valueOf(i(context)));
        }
        return a.get().intValue();
    }

    public boolean g(Context context, int i2) {
        File q;
        try {
            boolean isThirdPartyApp = TbsShareManager.isThirdPartyApp(context);
            if (isThirdPartyApp) {
                if (TbsShareManager.j(context)) {
                    q = new File(TbsShareManager.c(context));
                    if (q.getAbsolutePath().contains(TbsConfig.APP_DEMO)) {
                        return true;
                    }
                } else {
                    TbsLog.e("TbsInstaller", "321");
                    return false;
                }
            } else {
                q = q(context);
            }
            if (q != null) {
                Long[][] lArr = n;
                int length = lArr.length;
                int i3 = 0;
                while (true) {
                    if (i3 >= length) {
                        break;
                    }
                    Long[] lArr2 = lArr[i3];
                    if (i2 == lArr2[0].intValue()) {
                        File file = new File(q, "libmttwebview.so");
                        if (file.exists() && file.length() == lArr2[1].longValue()) {
                            TbsLog.d("TbsInstaller", "check so success: " + i2 + "; file: " + file);
                        } else {
                            if (!isThirdPartyApp) {
                                com.tencent.smtt.utils.f.b(context.getDir("tbs", 0));
                            }
                            a.set(0);
                            TbsLog.e("TbsInstaller", "322");
                            return false;
                        }
                    } else {
                        i3++;
                    }
                }
                return true;
            }
            TbsLog.e("TbsInstaller", "323");
            return false;
        } catch (Throwable th) {
            StringBuilder o2 = f.b.a.a.a.o("ISTBSCORELEGAL exception getMessage is ");
            o2.append(th.getMessage());
            TbsLog.e("TbsInstaller", o2.toString());
            TbsLog.e("TbsInstaller", "ISTBSCORELEGAL exception getCause is " + th.getCause());
            return false;
        }
    }

    public void a(Context context, boolean z) {
        int c2;
        int b2;
        String d2;
        int c3;
        int b3;
        boolean z2 = true;
        if (z) {
            this.f2590k = true;
        }
        StringBuilder o2 = f.b.a.a.a.o("TbsInstaller-continueInstallTbsCore currentProcessName=");
        o2.append(context.getApplicationInfo().processName);
        TbsLog.i("TbsInstaller", o2.toString());
        TbsLog.i("TbsInstaller", "TbsInstaller-continueInstallTbsCore currentProcessId=" + Process.myPid());
        TbsLog.i("TbsInstaller", "TbsInstaller-continueInstallTbsCore currentThreadName=" + Thread.currentThread().getName());
        if (t(context)) {
            if (f2582i.tryLock()) {
                try {
                    c2 = j.a(context).c();
                    b2 = j.a(context).b();
                    d2 = j.a(context).d("install_apk_path");
                    c3 = j.a(context).c("copy_core_ver");
                    b3 = j.a(context).b("copy_status");
                } finally {
                    f2582i.unlock();
                }
            } else {
                c3 = 0;
                b3 = -1;
                d2 = null;
                c2 = -1;
                b2 = 0;
            }
            b();
            TbsLog.i("TbsInstaller", "TbsInstaller-continueInstallTbsCore installStatus=" + c2);
            TbsLog.i("TbsInstaller", "TbsInstaller-continueInstallTbsCore tbsCoreInstallVer=" + b2);
            TbsLog.i("TbsInstaller", "TbsInstaller-continueInstallTbsCore tbsApkPath=" + d2);
            TbsLog.i("TbsInstaller", "TbsInstaller-continueInstallTbsCore tbsCoreCopyVer=" + c3);
            TbsLog.i("TbsInstaller", "TbsInstaller-continueInstallTbsCore copyStatus=" + b3);
            if (TbsShareManager.isThirdPartyApp(context)) {
                c(context, TbsShareManager.a(context, false));
                return;
            }
            int i2 = TbsDownloadConfig.getInstance(context).mPreferences.getInt(TbsDownloadConfig.TbsConfigKey.KEY_RESPONSECODE, 0);
            if (i2 != 1 && i2 != 2 && i2 != 4) {
                z2 = false;
            }
            if (!z2 && i2 != 0 && i2 != 5) {
                Bundle bundle = new Bundle();
                bundle.putInt("operation", 10001);
                a(context, bundle);
            }
            if (c2 > -1 && c2 < 2) {
                a(context, d2, b2);
            }
            if (b3 == 0) {
                b(context, c3);
            }
        }
    }

    public File f(Context context, int i2) {
        return a(context, i2, true);
    }

    public boolean c(Context context) {
        File file = new File(q(context), "tbs.conf");
        boolean z = false;
        if (!file.exists()) {
            return false;
        }
        Properties properties = new Properties();
        BufferedInputStream bufferedInputStream = null;
        try {
            BufferedInputStream bufferedInputStream2 = new BufferedInputStream(new FileInputStream(file));
            try {
                properties.load(bufferedInputStream2);
                boolean booleanValue = Boolean.valueOf(properties.getProperty("tbs_local_installation", "false")).booleanValue();
                if (booleanValue) {
                    try {
                        if (System.currentTimeMillis() - file.lastModified() > 259200000) {
                            z = true;
                        }
                    } catch (Throwable th) {
                        th = th;
                        z = booleanValue;
                        bufferedInputStream = bufferedInputStream2;
                        try {
                            th.printStackTrace();
                            return z;
                        } finally {
                            if (bufferedInputStream != null) {
                                try {
                                    bufferedInputStream.close();
                                } catch (IOException e2) {
                                    e2.printStackTrace();
                                }
                            }
                        }
                    }
                }
                TbsLog.i("TbsInstaller", "TBS_LOCAL_INSTALLATION is:" + booleanValue + " expired=" + z);
                boolean z2 = booleanValue & (!z);
                try {
                    bufferedInputStream2.close();
                    return z2;
                } catch (IOException e3) {
                    e3.printStackTrace();
                    return z2;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public void d(Context context) {
        BufferedInputStream bufferedInputStream;
        BufferedOutputStream bufferedOutputStream;
        try {
            File file = new File(q(context), "tbs.conf");
            Properties properties = new Properties();
            BufferedOutputStream bufferedOutputStream2 = null;
            try {
                bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
                try {
                    properties.load(bufferedInputStream);
                    bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file));
                } catch (Throwable unused) {
                }
            } catch (Throwable unused2) {
                bufferedInputStream = null;
            }
            try {
                properties.setProperty("tbs_local_installation", "false");
                properties.store(bufferedOutputStream, (String) null);
                try {
                    bufferedOutputStream.close();
                } catch (IOException unused3) {
                }
            } catch (Throwable unused4) {
                bufferedOutputStream2 = bufferedOutputStream;
                if (bufferedOutputStream2 != null) {
                    try {
                        bufferedOutputStream2.close();
                    } catch (IOException unused5) {
                    }
                }
                if (bufferedInputStream == null) {
                    return;
                }
                bufferedInputStream.close();
            }
            bufferedInputStream.close();
        } catch (Throwable unused6) {
        }
    }

    public int j(Context context) {
        int i2 = o;
        return i2 != 0 ? i2 : i(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:282:0x047f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @android.annotation.TargetApi(11)
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void b(android.content.Context r13, java.lang.String r14, int r15) {
        /*
            Method dump skipped, instructions count: 1625
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.smtt.sdk.l.b(android.content.Context, java.lang.String, int):void");
    }

    private boolean e(Context context, String str) {
        PackageInfo packageInfo;
        try {
            packageInfo = context.getPackageManager().getPackageInfo(str, 0);
        } catch (PackageManager.NameNotFoundException unused) {
            packageInfo = null;
        }
        return packageInfo != null;
    }

    public boolean e(Context context) {
        try {
            File file = new File(com.tencent.smtt.utils.f.a(context, 4), "x5.tbs.decouple");
            File f2 = a().f(context, 2);
            com.tencent.smtt.utils.f.a(f2);
            com.tencent.smtt.utils.f.a(f2, true);
            com.tencent.smtt.utils.f.a(file, f2);
            for (String str : f2.list()) {
                File file2 = new File(f2, str);
                if (file2.getName().endsWith(MultiDexExtractor.DEX_SUFFIX)) {
                    file2.delete();
                }
            }
            i(context, 2);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public Context d(Context context, int i2) {
        Context b2;
        TbsLog.i("TbsInstaller", "TbsInstaller--getTbsCoreHostContext tbsCoreTargetVer=" + i2);
        if (i2 <= 0) {
            return null;
        }
        String[] coreProviderAppList = TbsShareManager.getCoreProviderAppList();
        for (int i3 = 0; i3 < coreProviderAppList.length; i3++) {
            if (!context.getPackageName().equalsIgnoreCase(coreProviderAppList[i3]) && e(context, coreProviderAppList[i3]) && (b2 = b(context, coreProviderAppList[i3])) != null) {
                if (!f(b2)) {
                    StringBuilder o2 = f.b.a.a.a.o("TbsInstaller--getTbsCoreHostContext ");
                    o2.append(coreProviderAppList[i3]);
                    o2.append(" illegal signature go on next");
                    TbsLog.e("TbsInstaller", o2.toString());
                } else {
                    int i4 = i(b2);
                    TbsLog.i("TbsInstaller", "TbsInstaller-getTbsCoreHostContext hostTbsCoreVer=" + i4);
                    if (i4 != 0 && i4 == i2) {
                        StringBuilder o3 = f.b.a.a.a.o("TbsInstaller-getTbsCoreHostContext targetApp=");
                        o3.append(coreProviderAppList[i3]);
                        TbsLog.i("TbsInstaller", o3.toString());
                        return b2;
                    }
                }
            }
        }
        return null;
    }

    public int e(Context context, int i2) {
        return a(f(context, i2));
    }

    public static void a(Context context) {
        if (v(context)) {
            return;
        }
        if (a(context, "core_unzip_tmp")) {
            TbsCoreLoadStat.getInstance().a(context, TbsListener.ErrorCode.INFO_TEMP_CORE_EXIST_CONF_ERROR, new Throwable("TMP_TBS_UNZIP_FOLDER_NAME"));
            TbsLog.e("TbsInstaller", "TbsInstaller-UploadIfTempCoreExistConfError INFO_TEMP_CORE_EXIST_CONF_ERROR TMP_TBS_UNZIP_FOLDER_NAME");
        } else if (a(context, "core_share_backup_tmp")) {
            TbsCoreLoadStat.getInstance().a(context, TbsListener.ErrorCode.INFO_TEMP_CORE_EXIST_CONF_ERROR, new Throwable("TMP_BACKUP_TBSCORE_FOLDER_NAME"));
            TbsLog.e("TbsInstaller", "TbsInstaller-UploadIfTempCoreExistConfError INFO_TEMP_CORE_EXIST_CONF_ERROR TMP_BACKUP_TBSCORE_FOLDER_NAME");
        } else if (a(context, "core_copy_tmp")) {
            TbsCoreLoadStat.getInstance().a(context, TbsListener.ErrorCode.INFO_TEMP_CORE_EXIST_CONF_ERROR, new Throwable("TMP_TBS_COPY_FOLDER_NAME"));
            TbsLog.e("TbsInstaller", "TbsInstaller-UploadIfTempCoreExistConfError INFO_TEMP_CORE_EXIST_CONF_ERROR TMP_TBS_COPY_FOLDER_NAME");
        }
    }

    private int c(Context context, Bundle bundle) {
        try {
            Bundle a2 = QbSdk.a(context, bundle);
            TbsLog.i("TbsInstaller", "tpatch finished,ret is" + a2);
            int i2 = a2.getInt("patch_result");
            if (i2 == 0) {
                String string = bundle.getString("new_apk_location");
                int i3 = bundle.getInt("new_core_ver");
                int a3 = a(new File(string));
                if (i3 != a3) {
                    TbsLog.i("TbsInstaller", "version not equals!!!" + i3 + "patchVersion:" + a3);
                    TbsLogReport tbsLogReport = TbsLogReport.getInstance(context);
                    tbsLogReport.setInstallErrorCode(TbsListener.ErrorCode.TPATCH_VERSION_FAILED, "version=" + i3 + ",patchVersion=" + a3);
                    return 1;
                }
                File file = new File(bundle.getString("backup_apk"));
                String a4 = com.tencent.smtt.utils.b.a(context, true, file);
                if (!"3082023f308201a8a00302010202044c46914a300d06092a864886f70d01010505003064310b30090603550406130238363110300e060355040813074265696a696e673110300e060355040713074265696a696e673110300e060355040a130754656e63656e74310c300a060355040b13035753443111300f0603550403130873616d75656c6d6f301e170d3130303732313036313835305a170d3430303731333036313835305a3064310b30090603550406130238363110300e060355040813074265696a696e673110300e060355040713074265696a696e673110300e060355040a130754656e63656e74310c300a060355040b13035753443111300f0603550403130873616d75656c6d6f30819f300d06092a864886f70d010101050003818d0030818902818100c209077044bd0d63ea00ede5b839914cabcc912a87f0f8b390877e0f7a2583f0d5933443c40431c35a4433bc4c965800141961adc44c9625b1d321385221fd097e5bdc2f44a1840d643ab59dc070cf6c4b4b4d98bed5cbb8046e0a7078ae134da107cdf2bfc9b440fe5cb2f7549b44b73202cc6f7c2c55b8cfb0d333a021f01f0203010001300d06092a864886f70d010105050003818100b007db9922774ef4ccfee81ba514a8d57c410257e7a2eba64bfa17c9e690da08106d32f637ac41fbc9f205176c71bde238c872c3ee2f8313502bee44c80288ea4ef377a6f2cdfe4d3653c145c4acfedbfbadea23b559d41980cc3cdd35d79a68240693739aabf5c5ed26148756cf88264226de394c8a24ac35b712b120d4d23a".equals(a4)) {
                    TbsLog.i("TbsInstaller", "tpatch sig not equals!!!" + file + "signature:" + a4);
                    TbsLogReport tbsLogReport2 = TbsLogReport.getInstance(context);
                    tbsLogReport2.setInstallErrorCode(TbsListener.ErrorCode.TPATCH_BACKUP_NOT_VALID, "version=" + i3 + ",patchVersion=" + a3);
                    com.tencent.smtt.utils.f.b(file);
                    return 0;
                }
                if (TbsDownloader.a(context)) {
                    TbsLog.i("TbsInstaller", "Tpatch decouple success!");
                    TbsLogReport.getInstance(context).setInstallErrorCode(TbsListener.ErrorCode.DECOUPLE_TPATCH_INSTALL_SUCCESS, "");
                } else {
                    TbsLog.i("TbsInstaller", "Tpatch success!");
                    TbsLogReport.getInstance(context).setInstallErrorCode(TbsListener.ErrorCode.TPATCH_INSTALL_SUCCESS, "");
                }
                return 0;
            }
            String string2 = bundle.getString("new_apk_location");
            if (!TextUtils.isEmpty(string2)) {
                com.tencent.smtt.utils.f.b(new File(string2));
            }
            TbsLogReport tbsLogReport3 = TbsLogReport.getInstance(context);
            tbsLogReport3.setInstallErrorCode(i2, "tpatch fail,patch error_code=" + i2);
            return 1;
        } catch (Exception e2) {
            e2.printStackTrace();
            TbsLogReport tbsLogReport4 = TbsLogReport.getInstance(context);
            StringBuilder o2 = f.b.a.a.a.o("patch exception");
            o2.append(Log.getStackTraceString(e2));
            tbsLogReport4.setInstallErrorCode(TbsListener.ErrorCode.DECOUPLE_TPATCH_FAIL, o2.toString());
            return 1;
        }
    }

    public String d(Context context, String str) {
        BufferedInputStream bufferedInputStream;
        BufferedInputStream bufferedInputStream2 = null;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            File file = new File(q(context), "tbs.conf");
            if (file.exists()) {
                Properties properties = new Properties();
                bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
                try {
                    properties.load(bufferedInputStream);
                    bufferedInputStream.close();
                    String property = properties.getProperty(str);
                    try {
                        bufferedInputStream.close();
                    } catch (IOException unused) {
                    }
                    return property;
                } catch (Exception unused2) {
                    if (bufferedInputStream != null) {
                        try {
                            bufferedInputStream.close();
                        } catch (IOException unused3) {
                        }
                    }
                    return null;
                } catch (Throwable th) {
                    th = th;
                    bufferedInputStream2 = bufferedInputStream;
                    if (bufferedInputStream2 != null) {
                        try {
                            bufferedInputStream2.close();
                        } catch (IOException unused4) {
                        }
                    }
                    throw th;
                }
            }
            return null;
        } catch (Exception unused5) {
            bufferedInputStream = null;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static boolean a(Context context, String str) {
        File file = new File(context.getDir("tbs", 0), str);
        if (!file.exists()) {
            TbsLog.i("TbsInstaller", "TbsInstaller-isPrepareTbsCore, #1");
            return false;
        } else if (!new File(file, "tbs.conf").exists()) {
            TbsLog.i("TbsInstaller", "TbsInstaller-isPrepareTbsCore, #2");
            return false;
        } else {
            TbsLog.i("TbsInstaller", "TbsInstaller-isPrepareTbsCore, #3");
            return true;
        }
    }

    public void a(Context context, String str, int i2) {
        TbsLog.i("TbsInstaller", "TbsInstaller-installTbsCore tbsApkPath=" + str);
        TbsLog.i("TbsInstaller", "TbsInstaller-installTbsCore tbsCoreTargetVer=" + i2);
        TbsLog.i("TbsInstaller", "TbsInstaller-continueInstallTbsCore currentProcessName=" + context.getApplicationInfo().processName);
        TbsLog.i("TbsInstaller", "TbsInstaller-installTbsCore currentProcessId=" + Process.myPid());
        TbsLog.i("TbsInstaller", "TbsInstaller-installTbsCore currentThreadName=" + Thread.currentThread().getName());
        Object[] objArr = {context, str, Integer.valueOf(i2)};
        Message message = new Message();
        message.what = 1;
        message.obj = objArr;
        f2585m.sendMessage(message);
    }

    public void c(Context context, int i2) {
        int i3;
        TbsLog.i("TbsInstaller", "TbsInstaller-installTbsCoreForThirdPartyApp");
        if (i2 > 0 && (i3 = i(context)) != i2) {
            Context e2 = TbsShareManager.e(context);
            if (e2 != null || TbsShareManager.getHostCorePathAppDefined() != null) {
                TbsLog.i("TbsInstaller", "TbsInstaller--quickDexOptForThirdPartyApp hostContext != null");
                a(context, e2);
            } else if (i3 <= 0) {
                TbsLog.i("TbsInstaller", "TbsInstaller--installTbsCoreForThirdPartyApp hostContext == null");
                QbSdk.a(context, "TbsInstaller::installTbsCoreForThirdPartyApp forceSysWebViewInner #2");
            }
        }
    }

    public void a(Context context, int i2) {
        g(context, true);
        j.a(context).c(i2, 2);
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x0092 -> B:52:0x00ac). Please submit an issue!!! */
    private void a(int i2, String str, Context context) {
        BufferedInputStream bufferedInputStream;
        BufferedOutputStream bufferedOutputStream;
        new File(str).delete();
        TbsLog.i("TbsInstaller", "Local tbs apk(" + str + ") is deleted!", true);
        File file = new File(context.getDir("tbs", 0), "core_unzip_tmp");
        if (file.canRead()) {
            File file2 = new File(file, "tbs.conf");
            Properties properties = new Properties();
            BufferedOutputStream bufferedOutputStream2 = null;
            try {
                try {
                    bufferedInputStream = new BufferedInputStream(new FileInputStream(file2));
                    try {
                        properties.load(bufferedInputStream);
                        bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file2));
                    } catch (Throwable th) {
                        th = th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    bufferedInputStream = null;
                }
            } catch (IOException e2) {
                e2.printStackTrace();
            }
            try {
                properties.setProperty("tbs_local_installation", "true");
                properties.store(bufferedOutputStream, (String) null);
                TbsLog.i("TbsInstaller", "TBS_LOCAL_INSTALLATION is set!", true);
                try {
                    bufferedOutputStream.close();
                } catch (IOException e3) {
                    e3.printStackTrace();
                }
                bufferedInputStream.close();
            } catch (Throwable th3) {
                th = th3;
                bufferedOutputStream2 = bufferedOutputStream;
                try {
                    th.printStackTrace();
                    if (bufferedOutputStream2 != null) {
                        try {
                            bufferedOutputStream2.close();
                        } catch (IOException e4) {
                            e4.printStackTrace();
                        }
                    }
                    if (bufferedInputStream != null) {
                        bufferedInputStream.close();
                    }
                } catch (Throwable th4) {
                    if (bufferedOutputStream2 != null) {
                        try {
                            bufferedOutputStream2.close();
                        } catch (IOException e5) {
                            e5.printStackTrace();
                        }
                    }
                    if (bufferedInputStream != null) {
                        try {
                            bufferedInputStream.close();
                        } catch (IOException e6) {
                            e6.printStackTrace();
                        }
                    }
                    throw th4;
                }
            }
        }
    }

    public int c(Context context, String str) {
        PackageInfo packageArchiveInfo = context.getPackageManager().getPackageArchiveInfo(str, 0);
        if (packageArchiveInfo != null) {
            return packageArchiveInfo.versionCode;
        }
        return 0;
    }

    public File c(Context context, Context context2) {
        File file = new File(context2.getDir("tbs", 0), "core_share_decouple");
        if (file.isDirectory() || ((context != null && TbsShareManager.isThirdPartyApp(context)) || file.mkdir())) {
            return file;
        }
        return null;
    }

    private boolean c(Context context, File file) {
        File[] listFiles;
        try {
            File file2 = new File(file, "tbs_sdk_extension_dex.jar");
            File file3 = new File(file, "tbs_sdk_extension_dex.dex");
            new DexClassLoader(file2.getAbsolutePath(), file.getAbsolutePath(), null, context.getClassLoader());
            String a2 = c.a(context, file3.getAbsolutePath());
            if (TextUtils.isEmpty(a2)) {
                TbsLogReport.getInstance(context).setInstallErrorCode(TbsListener.ErrorCode.DEXOAT_EXCEPTION, "can not find oat command");
                return false;
            }
            for (File file4 : file.listFiles(new FileFilter() { // from class: com.tencent.smtt.sdk.l.7
                @Override // java.io.FileFilter
                public boolean accept(File file5) {
                    return file5.getName().endsWith(".jar");
                }
            })) {
                String substring = file4.getName().substring(0, file4.getName().length() - 4);
                Runtime.getRuntime().exec("/system/bin/dex2oat " + a2.replaceAll("tbs_sdk_extension_dex", substring) + " --dex-location=" + a().q(context) + File.separator + substring + ".jar").waitFor();
            }
            return true;
        } catch (Exception e2) {
            e2.printStackTrace();
            TbsLogReport.getInstance(context).setInstallErrorCode(TbsListener.ErrorCode.DEXOAT_EXCEPTION, e2);
            return false;
        }
    }

    public void a(Context context, Bundle bundle) {
        if (bundle == null || context == null) {
            return;
        }
        Object[] objArr = {context, bundle};
        Message message = new Message();
        message.what = 3;
        message.obj = objArr;
        f2585m.sendMessage(message);
    }

    public void a(Context context, File file, int i2) {
        TbsLog.i("TbsInstaller", "unzipTbsCoreToThirdAppTmp,ctx=" + context + "File=" + file + "coreVersion=" + i2);
        if (file == null || context == null) {
            return;
        }
        Object[] objArr = {context, file, Integer.valueOf(i2)};
        Message message = new Message();
        message.what = 4;
        message.obj = objArr;
        f2585m.sendMessage(message);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:116:0x02d9 A[Catch: Exception -> 0x04ac, all -> 0x04dc, TryCatch #0 {Exception -> 0x04ac, blocks: (B:72:0x020b, B:74:0x0234, B:75:0x0237, B:77:0x0253, B:79:0x025c, B:94:0x02b2, B:116:0x02d9, B:117:0x02e7, B:119:0x02ea, B:121:0x02f6, B:123:0x0302, B:125:0x030e, B:127:0x0314, B:130:0x0321, B:133:0x0337, B:135:0x033d, B:138:0x0388, B:136:0x0359, B:140:0x038f, B:143:0x03a7, B:146:0x03d2, B:148:0x03e1, B:150:0x03e7, B:154:0x03f4, B:155:0x03fa, B:157:0x0406, B:159:0x041d, B:165:0x0471, B:164:0x0459, B:158:0x0412, B:98:0x02b8, B:170:0x047b, B:175:0x0484, B:174:0x0481, B:109:0x02cd, B:113:0x02d3, B:176:0x0485, B:180:0x04b1, B:182:0x04c7), top: B:200:0x0207 }] */
    /* JADX WARN: Removed duplicated region for block: B:142:0x03a5 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:148:0x03e1 A[Catch: Exception -> 0x04ac, all -> 0x04dc, TryCatch #0 {Exception -> 0x04ac, blocks: (B:72:0x020b, B:74:0x0234, B:75:0x0237, B:77:0x0253, B:79:0x025c, B:94:0x02b2, B:116:0x02d9, B:117:0x02e7, B:119:0x02ea, B:121:0x02f6, B:123:0x0302, B:125:0x030e, B:127:0x0314, B:130:0x0321, B:133:0x0337, B:135:0x033d, B:138:0x0388, B:136:0x0359, B:140:0x038f, B:143:0x03a7, B:146:0x03d2, B:148:0x03e1, B:150:0x03e7, B:154:0x03f4, B:155:0x03fa, B:157:0x0406, B:159:0x041d, B:165:0x0471, B:164:0x0459, B:158:0x0412, B:98:0x02b8, B:170:0x047b, B:175:0x0484, B:174:0x0481, B:109:0x02cd, B:113:0x02d3, B:176:0x0485, B:180:0x04b1, B:182:0x04c7), top: B:200:0x0207 }] */
    /* JADX WARN: Removed duplicated region for block: B:152:0x03ef  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x03f2  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x0406 A[Catch: Exception -> 0x04ac, all -> 0x04dc, TryCatch #0 {Exception -> 0x04ac, blocks: (B:72:0x020b, B:74:0x0234, B:75:0x0237, B:77:0x0253, B:79:0x025c, B:94:0x02b2, B:116:0x02d9, B:117:0x02e7, B:119:0x02ea, B:121:0x02f6, B:123:0x0302, B:125:0x030e, B:127:0x0314, B:130:0x0321, B:133:0x0337, B:135:0x033d, B:138:0x0388, B:136:0x0359, B:140:0x038f, B:143:0x03a7, B:146:0x03d2, B:148:0x03e1, B:150:0x03e7, B:154:0x03f4, B:155:0x03fa, B:157:0x0406, B:159:0x041d, B:165:0x0471, B:164:0x0459, B:158:0x0412, B:98:0x02b8, B:170:0x047b, B:175:0x0484, B:174:0x0481, B:109:0x02cd, B:113:0x02d3, B:176:0x0485, B:180:0x04b1, B:182:0x04c7), top: B:200:0x0207 }] */
    /* JADX WARN: Removed duplicated region for block: B:158:0x0412 A[Catch: Exception -> 0x04ac, all -> 0x04dc, TryCatch #0 {Exception -> 0x04ac, blocks: (B:72:0x020b, B:74:0x0234, B:75:0x0237, B:77:0x0253, B:79:0x025c, B:94:0x02b2, B:116:0x02d9, B:117:0x02e7, B:119:0x02ea, B:121:0x02f6, B:123:0x0302, B:125:0x030e, B:127:0x0314, B:130:0x0321, B:133:0x0337, B:135:0x033d, B:138:0x0388, B:136:0x0359, B:140:0x038f, B:143:0x03a7, B:146:0x03d2, B:148:0x03e1, B:150:0x03e7, B:154:0x03f4, B:155:0x03fa, B:157:0x0406, B:159:0x041d, B:165:0x0471, B:164:0x0459, B:158:0x0412, B:98:0x02b8, B:170:0x047b, B:175:0x0484, B:174:0x0481, B:109:0x02cd, B:113:0x02d3, B:176:0x0485, B:180:0x04b1, B:182:0x04c7), top: B:200:0x0207 }] */
    /* JADX WARN: Removed duplicated region for block: B:203:0x02cd A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:212:0x047b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @android.annotation.TargetApi(11)
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void a(android.content.Context r20, android.content.Context r21, int r22) {
        /*
            Method dump skipped, instructions count: 1364
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.smtt.sdk.l.a(android.content.Context, android.content.Context, int):void");
    }

    public void b(Context context) {
        g(context, true);
        j.a(context).c(h(context), 2);
    }

    public boolean b(Context context, int i2) {
        if (TbsDownloader.getOverSea(context)) {
            return false;
        }
        TbsLog.i("TbsInstaller", "TbsInstaller-installLocalTbsCore targetTbsCoreVer=" + i2);
        TbsLog.i("TbsInstaller", "TbsInstaller-continueInstallTbsCore currentProcessName=" + context.getApplicationInfo().processName);
        TbsLog.i("TbsInstaller", "TbsInstaller-installLocalTbsCore currentProcessId=" + Process.myPid());
        TbsLog.i("TbsInstaller", "TbsInstaller-installLocalTbsCore currentThreadName=" + Thread.currentThread().getName());
        Context d2 = d(context, i2);
        if (d2 != null) {
            Object[] objArr = {d2, context, Integer.valueOf(i2)};
            Message message = new Message();
            message.what = 2;
            message.obj = objArr;
            f2585m.sendMessage(message);
            return true;
        }
        TbsLog.i("TbsInstaller", "TbsInstaller--installLocalTbsCore copy from null");
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:130:0x0322  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x0326  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x0449  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x044e  */
    /* JADX WARN: Removed duplicated region for block: B:188:0x04a7  */
    /* JADX WARN: Removed duplicated region for block: B:190:0x04ab  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x01c8 A[Catch: all -> 0x03fb, Exception -> 0x0403, TryCatch #13 {Exception -> 0x0403, all -> 0x03fb, blocks: (B:21:0x00c7, B:51:0x019a, B:53:0x01a0, B:66:0x01bd, B:68:0x01c8, B:70:0x01e5, B:71:0x01ed, B:73:0x01f3, B:74:0x01fb, B:76:0x0201, B:77:0x0209, B:84:0x023e, B:86:0x024d, B:88:0x025a), top: B:227:0x00c7 }] */
    /* JADX WARN: Removed duplicated region for block: B:84:0x023e A[Catch: all -> 0x03fb, Exception -> 0x0403, TRY_ENTER, TryCatch #13 {Exception -> 0x0403, all -> 0x03fb, blocks: (B:21:0x00c7, B:51:0x019a, B:53:0x01a0, B:66:0x01bd, B:68:0x01c8, B:70:0x01e5, B:71:0x01ed, B:73:0x01f3, B:74:0x01fb, B:76:0x0201, B:77:0x0209, B:84:0x023e, B:86:0x024d, B:88:0x025a), top: B:227:0x00c7 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void b(android.content.Context r20, android.os.Bundle r21) {
        /*
            Method dump skipped, instructions count: 1377
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.smtt.sdk.l.b(android.content.Context, android.os.Bundle):void");
    }

    private boolean a(Context context, File file) {
        return a(context, file, false);
    }

    private boolean a(Context context, File file, boolean z) {
        File f2;
        File file2;
        TbsLog.i("TbsInstaller", "TbsInstaller-unzipTbs start");
        if (!com.tencent.smtt.utils.f.c(file)) {
            TbsLogReport.getInstance(context).setInstallErrorCode(TbsListener.ErrorCode.APK_INVALID, "apk is invalid!");
            TbsDownloadConfig.getInstance(context).setInstallInterruptCode(-520);
            return false;
        }
        try {
            File dir = context.getDir("tbs", 0);
            if (z) {
                file2 = new File(dir, "core_share_decouple");
            } else {
                file2 = new File(dir, "core_unzip_tmp");
            }
            if (file2.exists() && !TbsDownloader.a(context)) {
                com.tencent.smtt.utils.f.b(file2);
            }
        } catch (Throwable th) {
            StringBuilder o2 = f.b.a.a.a.o("TbsInstaller-unzipTbs -- delete unzip folder if exists exception");
            o2.append(Log.getStackTraceString(th));
            TbsLog.e("TbsInstaller", o2.toString());
        }
        if (z) {
            f2 = f(context, 2);
        } else {
            f2 = f(context, 0);
        }
        File file3 = f2;
        if (file3 == null) {
            TbsLogReport.getInstance(context).setInstallErrorCode(TbsListener.ErrorCode.UNZIP_DIR_ERROR, "tmp unzip dir is null!");
            TbsDownloadConfig.getInstance(context).setInstallInterruptCode(-521);
            return false;
        }
        try {
            com.tencent.smtt.utils.f.a(file3);
            if (z) {
                com.tencent.smtt.utils.f.a(file3, true);
            }
            boolean a2 = com.tencent.smtt.utils.f.a(file, file3);
            if (a2) {
                a2 = a(file3, context);
            }
            if (z) {
                for (String str : file3.list()) {
                    File file4 = new File(file3, str);
                    if (file4.getName().endsWith(MultiDexExtractor.DEX_SUFFIX)) {
                        file4.delete();
                    }
                }
                try {
                    new File(s(context), "x5.tbs").delete();
                } catch (Exception unused) {
                }
            }
            if (!a2) {
                com.tencent.smtt.utils.f.b(file3);
                TbsDownloadConfig.getInstance(context).setInstallInterruptCode(-522);
                TbsLog.e("TbsInstaller", "copyFileIfChanged -- delete tmpTbsCoreUnzipDir#1! exist:" + file3.exists());
            } else {
                g(context, true);
                if (z) {
                    File p2 = p(context);
                    com.tencent.smtt.utils.f.a(p2, true);
                    file3.renameTo(p2);
                    TbsShareManager.b(context);
                }
            }
            return a2;
        } catch (IOException e2) {
            TbsDownloadConfig.getInstance(context).setInstallInterruptCode(-523);
            TbsLogReport.getInstance(context).setInstallErrorCode(TbsListener.ErrorCode.UNZIP_IO_ERROR, e2);
            if (file3.exists()) {
                try {
                    com.tencent.smtt.utils.f.b(file3);
                    TbsLog.e("TbsInstaller", "copyFileIfChanged -- delete tmpTbsCoreUnzipDir#2! exist:" + file3.exists());
                } catch (Throwable th2) {
                    StringBuilder o3 = f.b.a.a.a.o("copyFileIfChanged -- delete tmpTbsCoreUnzipDir#2! exception:");
                    o3.append(Log.getStackTraceString(th2));
                    TbsLog.e("TbsInstaller", o3.toString());
                }
            }
            return false;
        } catch (Exception e3) {
            TbsDownloadConfig.getInstance(context).setInstallInterruptCode(-523);
            TbsLogReport.getInstance(context).setInstallErrorCode(TbsListener.ErrorCode.UNZIP_OTHER_ERROR, e3);
            if (file3.exists()) {
                try {
                    com.tencent.smtt.utils.f.b(file3);
                    TbsLog.e("TbsInstaller", "copyFileIfChanged -- delete tmpTbsCoreUnzipDir#2! exist:" + file3.exists());
                } catch (Throwable th3) {
                    StringBuilder o4 = f.b.a.a.a.o("copyFileIfChanged -- delete tmpTbsCoreUnzipDir#2! exception:");
                    o4.append(Log.getStackTraceString(th3));
                    TbsLog.e("TbsInstaller", o4.toString());
                }
            }
            return false;
        } finally {
            TbsLog.i("TbsInstaller", "TbsInstaller-unzipTbs done");
        }
    }

    /* JADX WARN: Not initialized variable reg: 4, insn: 0x012a: MOVE  (r14 I:??[OBJECT, ARRAY]) = (r4 I:??[OBJECT, ARRAY]), block:B:62:0x012a */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0073  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private boolean a(java.io.File r13, android.content.Context r14) {
        /*
            Method dump skipped, instructions count: 310
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.smtt.sdk.l.a(java.io.File, android.content.Context):boolean");
    }

    public synchronized boolean a(final Context context, final Context context2) {
        TbsLog.i("TbsInstaller", "TbsInstaller--quickDexOptForThirdPartyApp");
        if (p) {
            return true;
        }
        p = true;
        new Thread() { // from class: com.tencent.smtt.sdk.l.4

            /* compiled from: TbsInstaller.java */
            /* renamed from: com.tencent.smtt.sdk.l$4$1  reason: invalid class name */
            /* loaded from: classes.dex */
            public class AnonymousClass1 implements FileFilter {
                public AnonymousClass1() {
                }

                @Override // java.io.FileFilter
                public boolean accept(File file) {
                    return file.getName().endsWith(MultiDexExtractor.DEX_SUFFIX);
                }
            }

            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                File q;
                TbsLog.i("TbsInstaller", "TbsInstaller--quickDexOptForThirdPartyApp thread start");
                try {
                    if (context2 == null) {
                        q = new File(TbsShareManager.getHostCorePathAppDefined());
                    } else if (TbsShareManager.isThirdPartyApp(context)) {
                        if (TbsShareManager.c(context) != null && TbsShareManager.c(context).contains("decouple")) {
                            q = l.this.p(context2);
                        } else {
                            q = l.this.q(context2);
                        }
                    } else {
                        q = l.this.q(context2);
                    }
                    com.tencent.smtt.utils.f.a(q, l.this.q(context), new FileFilter() { // from class: com.tencent.smtt.sdk.l.4.2
                        @Override // java.io.FileFilter
                        public boolean accept(File file) {
                            return file.getName().endsWith("tbs.conf");
                        }
                    });
                    TbsLog.i("TbsInstaller", "TbsInstaller--quickDexOptForThirdPartyApp thread done");
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
        }.start();
        return true;
    }

    public int a(String str) {
        if (str == null) {
            return 0;
        }
        BufferedInputStream bufferedInputStream = null;
        try {
            File file = new File(new File(str), "tbs.conf");
            if (file.exists()) {
                Properties properties = new Properties();
                BufferedInputStream bufferedInputStream2 = new BufferedInputStream(new FileInputStream(file));
                try {
                    properties.load(bufferedInputStream2);
                    bufferedInputStream2.close();
                    String property = properties.getProperty("tbs_core_version");
                    if (property == null) {
                        try {
                            bufferedInputStream2.close();
                        } catch (IOException unused) {
                        }
                        return 0;
                    }
                    int parseInt = Integer.parseInt(property);
                    try {
                        bufferedInputStream2.close();
                    } catch (IOException unused2) {
                    }
                    return parseInt;
                } catch (Exception unused3) {
                    bufferedInputStream = bufferedInputStream2;
                    if (bufferedInputStream != null) {
                        try {
                            bufferedInputStream.close();
                        } catch (IOException unused4) {
                        }
                    }
                    return 0;
                } catch (Throwable th) {
                    th = th;
                    bufferedInputStream = bufferedInputStream2;
                    if (bufferedInputStream != null) {
                        try {
                            bufferedInputStream.close();
                        } catch (IOException unused5) {
                        }
                    }
                    throw th;
                }
            }
            return 0;
        } catch (Exception unused6) {
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public int a(File file) {
        BufferedInputStream bufferedInputStream = null;
        try {
            TbsLog.i("TbsInstaller", "TbsInstaller--getTbsVersion  tbsShareDir is " + file);
            File file2 = new File(file, "tbs.conf");
            if (file2.exists()) {
                Properties properties = new Properties();
                BufferedInputStream bufferedInputStream2 = new BufferedInputStream(new FileInputStream(file2));
                try {
                    properties.load(bufferedInputStream2);
                    bufferedInputStream2.close();
                    String property = properties.getProperty("tbs_core_version");
                    if (property == null) {
                        try {
                            bufferedInputStream2.close();
                        } catch (IOException unused) {
                        }
                        return 0;
                    }
                    int parseInt = Integer.parseInt(property);
                    try {
                        bufferedInputStream2.close();
                    } catch (IOException unused2) {
                    }
                    return parseInt;
                } catch (Exception unused3) {
                    bufferedInputStream = bufferedInputStream2;
                    if (bufferedInputStream != null) {
                        try {
                            bufferedInputStream.close();
                        } catch (IOException unused4) {
                        }
                    }
                    return 0;
                } catch (Throwable th) {
                    th = th;
                    bufferedInputStream = bufferedInputStream2;
                    if (bufferedInputStream != null) {
                        try {
                            bufferedInputStream.close();
                        } catch (IOException unused5) {
                        }
                    }
                    throw th;
                }
            }
            return 0;
        } catch (Exception unused6) {
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public Context b(Context context, String str) {
        try {
            if (context.getPackageName() == str || !TbsPVConfig.getInstance(context).isEnableNoCoreGray()) {
                return context.createPackageContext(str, 2);
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    public boolean b(Context context, File file, int i2) {
        TbsLog.i("TbsInstaller", "unzipTbsCoreToThirdAppTmpInThread #1");
        boolean a2 = a(context, file, false);
        f.b.a.a.a.A("unzipTbsCoreToThirdAppTmpInThread result is ", a2, "TbsInstaller");
        if (a2) {
            a().a(context, i2);
        }
        return a2;
    }

    public File b(Context context, Context context2) {
        File file = new File(context2.getDir("tbs", 0), "core_share");
        if (file.isDirectory() || ((context != null && TbsShareManager.isThirdPartyApp(context)) || file.mkdir())) {
            return file;
        }
        TbsLog.i("TbsInstaller", "getTbsCoreShareDir,mkdir false");
        return null;
    }

    public File a(Context context, int i2, boolean z) {
        String str;
        File dir = context.getDir("tbs", 0);
        switch (i2) {
            case 0:
                str = "core_unzip_tmp";
                break;
            case 1:
                str = "core_copy_tmp";
                break;
            case 2:
                str = "core_unzip_tmp_decouple";
                break;
            case 3:
                str = "core_share_backup";
                break;
            case 4:
                str = "core_share_backup_tmp";
                break;
            case 5:
                str = "tpatch_tmp";
                break;
            case 6:
                str = "tpatch_decouple_tmp";
                break;
            default:
                str = "";
                break;
        }
        TbsLog.i("TbsInstaller", "type=" + i2 + "needMakeDir=" + z + "folder=" + str);
        File file = new File(dir, str);
        if (!file.isDirectory()) {
            if (z) {
                if (!file.mkdir()) {
                    TbsLog.i("TbsInstaller", "getCoreDir,mkdir false");
                    return null;
                }
            } else {
                TbsLog.i("TbsInstaller", "getCoreDir,no need mkdir");
                return null;
            }
        }
        return file;
    }

    public synchronized void b() {
        if (this.f2586e <= 0) {
            TbsLog.i("TbsInstaller", "releaseTbsInstallingFileLock currentTbsFileLockStackCount=" + this.f2586e + "call stack:" + Log.getStackTraceString(new Throwable()));
        } else if (this.f2586e > 1) {
            TbsLog.i("TbsInstaller", "releaseTbsInstallingFileLock with skip");
            this.f2586e--;
        } else {
            if (this.f2586e == 1) {
                TbsLog.i("TbsInstaller", "releaseTbsInstallingFileLock without skip");
                com.tencent.smtt.utils.f.a(this.f2587f, this.f2588g);
                this.f2586e = 0;
            }
        }
    }

    private boolean b(Context context, File file) {
        try {
            File[] listFiles = file.listFiles(new FileFilter() { // from class: com.tencent.smtt.sdk.l.6
                @Override // java.io.FileFilter
                public boolean accept(File file2) {
                    return file2.getName().endsWith(".jar");
                }
            });
            int length = listFiles.length;
            ClassLoader classLoader = context.getClassLoader();
            for (int i2 = 0; i2 < length; i2++) {
                TbsLog.i("TbsInstaller", "jarFile: " + listFiles[i2].getAbsolutePath());
                new DexClassLoader(listFiles[i2].getAbsolutePath(), file.getAbsolutePath(), null, classLoader);
            }
            return true;
        } catch (Exception e2) {
            e2.printStackTrace();
            TbsLogReport.getInstance(context).setInstallErrorCode(TbsListener.ErrorCode.DEXOPT_EXCEPTION, e2.toString());
            TbsLog.i("TbsInstaller", "TbsInstaller-doTbsDexOpt done");
            return false;
        }
    }
}
