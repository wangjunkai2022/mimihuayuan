package com.tencent.smtt.utils;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import android.os.Environment;
import android.util.Log;
import androidx.recyclerview.widget.RecyclerView;
import com.tencent.smtt.sdk.TbsDownloadConfig;
import com.tencent.smtt.sdk.TbsDownloader;
import com.tencent.smtt.sdk.TbsLogReport;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.nio.channels.OverlappingFileLockException;
import java.util.zip.CRC32;
import java.util.zip.ZipEntry;

/* compiled from: FileUtil.java */
@SuppressLint({"NewApi"})
/* loaded from: classes.dex */
public class f {
    public static String a = null;
    public static final a b = new a() { // from class: com.tencent.smtt.utils.f.2
        @Override // com.tencent.smtt.utils.f.a
        public boolean a(File file, File file2) {
            return file.length() == file2.length() && file.lastModified() == file2.lastModified();
        }
    };

    /* renamed from: c  reason: collision with root package name */
    public static final int f2750c = 4;

    /* renamed from: d  reason: collision with root package name */
    public static RandomAccessFile f2751d;

    /* compiled from: FileUtil.java */
    /* loaded from: classes.dex */
    public interface a {
        boolean a(File file, File file2);
    }

    /* compiled from: FileUtil.java */
    /* loaded from: classes.dex */
    public interface b {
        boolean a(InputStream inputStream, ZipEntry zipEntry, String str) throws Exception;
    }

    public static String b(Context context, String str) {
        if (context == null) {
            return "";
        }
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            context = applicationContext;
        }
        try {
            return context.getExternalFilesDir(str).getAbsolutePath();
        } catch (Throwable th) {
            th.printStackTrace();
            try {
                return Environment.getExternalStorageDirectory() + File.separator + "Android" + File.separator + "data" + File.separator + context.getApplicationInfo().packageName + File.separator + "files" + File.separator + str;
            } catch (Exception e2) {
                e2.printStackTrace();
                return "";
            }
        }
    }

    public static boolean c(File file) {
        return file != null && file.exists() && file.isFile() && file.length() > 0;
    }

    public static FileOutputStream d(File file) throws IOException {
        if (file.exists()) {
            if (!file.isDirectory()) {
                if (!file.canWrite()) {
                    throw new IOException("File '" + file + "' cannot be written to");
                }
            } else {
                throw new IOException("File '" + file + "' exists but is a directory");
            }
        } else {
            File parentFile = file.getParentFile();
            if (parentFile != null && !parentFile.exists() && !parentFile.mkdirs()) {
                throw new IOException("File '" + file + "' could not be created");
            }
        }
        return new FileOutputStream(file);
    }

    public static FileLock e(Context context) {
        boolean z;
        TbsLog.i("FileHelper", "getTbsCoreLoadFileLock #1");
        try {
            z = TbsDownloadConfig.getInstance().getTbsCoreLoadRenameFileLockEnable();
        } catch (Throwable unused) {
            z = true;
        }
        FileLock fileLock = null;
        if (!z) {
            FileOutputStream b2 = b(context, true, "tbs_rename_lock");
            if (b2 == null) {
                TbsLog.i("FileHelper", "init -- failed to get rename fileLock#1!");
            } else {
                fileLock = a(context, b2);
                if (fileLock == null) {
                    TbsLog.i("FileHelper", "init -- failed to get rename fileLock#2!");
                } else {
                    TbsLog.i("FileHelper", "init -- get rename fileLock success!");
                }
            }
            TbsLog.i("FileHelper", "getTbsCoreLoadFileLock #2 renameFileLock is " + fileLock);
            return fileLock;
        }
        TbsLog.i("FileHelper", "getTbsCoreLoadFileLock #3");
        File a2 = a(context, "tbs_rename_lock");
        TbsLog.i("FileHelper", "getTbsCoreLoadFileLock #4 " + a2);
        try {
            RandomAccessFile randomAccessFile = new RandomAccessFile(a2.getAbsolutePath(), "r");
            f2751d = randomAccessFile;
            fileLock = randomAccessFile.getChannel().tryLock(0L, RecyclerView.FOREVER_NS, true);
        } catch (Throwable th) {
            TbsLog.e("FileHelper", "getTbsCoreLoadFileLock -- exception: " + th);
        }
        if (fileLock == null) {
            fileLock = g(context);
        }
        if (fileLock == null) {
            TbsLog.i("FileHelper", "getTbsCoreLoadFileLock -- failed: tbs_rename_lock");
        } else {
            TbsLog.i("FileHelper", "getTbsCoreLoadFileLock -- success: tbs_rename_lock");
        }
        return fileLock;
    }

    public static FileLock f(Context context) {
        FileLock fileLock;
        File a2 = a(context, "tbs_rename_lock");
        TbsLog.i("FileHelper", "getTbsCoreRenameFileLock #1 " + a2);
        try {
            RandomAccessFile randomAccessFile = new RandomAccessFile(a2.getAbsolutePath(), "rw");
            f2751d = randomAccessFile;
            fileLock = randomAccessFile.getChannel().tryLock(0L, RecyclerView.FOREVER_NS, false);
        } catch (Throwable unused) {
            TbsLog.e("FileHelper", "getTbsCoreRenameFileLock -- excpetion: tbs_rename_lock");
            fileLock = null;
        }
        if (fileLock == null) {
            TbsLog.i("FileHelper", "getTbsCoreRenameFileLock -- failed: tbs_rename_lock");
        } else {
            TbsLog.i("FileHelper", "getTbsCoreRenameFileLock -- success: tbs_rename_lock");
        }
        return fileLock;
    }

    public static FileLock g(Context context) {
        FileLock fileLock = null;
        try {
            TbsLogReport.TbsLogInfo tbsLogInfo = TbsLogReport.getInstance(context).tbsLogInfo();
            tbsLogInfo.setErrorCode(803);
            File a2 = a(context, "tbs_rename_lock");
            if (TbsDownloadConfig.getInstance(context).getTbsCoreLoadRenameFileLockWaitEnable()) {
                int i2 = 0;
                while (i2 < 20 && fileLock == null) {
                    try {
                        Thread.sleep(100L);
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                    RandomAccessFile randomAccessFile = new RandomAccessFile(a2.getAbsolutePath(), "r");
                    f2751d = randomAccessFile;
                    fileLock = randomAccessFile.getChannel().tryLock(0L, RecyclerView.FOREVER_NS, true);
                    i2++;
                }
                if (fileLock != null) {
                    tbsLogInfo.setErrorCode(802);
                } else {
                    tbsLogInfo.setErrorCode(801);
                }
                TbsLogReport.getInstance(context).eventReport(TbsLogReport.EventType.TYPE_SDK_REPORT_INFO, tbsLogInfo);
                StringBuilder sb = new StringBuilder();
                sb.append("getTbsCoreLoadFileLock,retry num=");
                sb.append(i2);
                sb.append("success=");
                sb.append(fileLock == null);
                TbsLog.i("FileHelper", sb.toString());
            }
        } catch (Exception e3) {
            e3.printStackTrace();
        }
        return fileLock;
    }

    public static String a(Context context, int i2) {
        return a(context, context.getApplicationInfo().packageName, i2, true);
    }

    public static String c(Context context) {
        StringBuilder sb = new StringBuilder();
        sb.append(Environment.getExternalStorageDirectory());
        sb.append(File.separator);
        sb.append("tbs");
        return f.b.a.a.a.l(sb, File.separator, "file_locks");
    }

    public static String a(Context context, String str, int i2, boolean z) {
        String str2;
        if (context == null) {
            return "";
        }
        try {
            str2 = Environment.getExternalStorageDirectory() + File.separator;
        } catch (Exception e2) {
            e2.printStackTrace();
            str2 = "";
        }
        switch (i2) {
            case 1:
                if (str2.equals("")) {
                    return str2;
                }
                StringBuilder r = f.b.a.a.a.r(str2, "tencent");
                r.append(File.separator);
                r.append("tbs");
                return f.b.a.a.a.l(r, File.separator, str);
            case 2:
                if (str2.equals("")) {
                    return str2;
                }
                StringBuilder r2 = f.b.a.a.a.r(str2, "tbs");
                r2.append(File.separator);
                r2.append("backup");
                return f.b.a.a.a.l(r2, File.separator, str);
            case 3:
                if (str2.equals("")) {
                    return str2;
                }
                StringBuilder r3 = f.b.a.a.a.r(str2, "tencent");
                r3.append(File.separator);
                r3.append("tbs");
                r3.append(File.separator);
                r3.append("backup");
                return f.b.a.a.a.l(r3, File.separator, str);
            case 4:
                if (str2.equals("")) {
                    return b(context, "backup");
                }
                StringBuilder r4 = f.b.a.a.a.r(str2, "tencent");
                r4.append(File.separator);
                r4.append("tbs");
                r4.append(File.separator);
                r4.append("backup");
                String l2 = f.b.a.a.a.l(r4, File.separator, str);
                if (z) {
                    File file = new File(l2);
                    if (file.exists() && file.canWrite()) {
                        return l2;
                    }
                    if (!file.exists()) {
                        file.mkdirs();
                        return !file.canWrite() ? b(context, "backup") : l2;
                    }
                    return b(context, "backup");
                }
                return l2;
            case 5:
                if (str2.equals("")) {
                    return str2;
                }
                StringBuilder r5 = f.b.a.a.a.r(str2, "tencent");
                r5.append(File.separator);
                r5.append("tbs");
                return f.b.a.a.a.l(r5, File.separator, str);
            case 6:
                String str3 = a;
                if (str3 != null) {
                    return str3;
                }
                String b2 = b(context, "tbslog");
                a = b2;
                return b2;
            case 7:
                if (str2.equals("")) {
                    return str2;
                }
                StringBuilder r6 = f.b.a.a.a.r(str2, "tencent");
                r6.append(File.separator);
                r6.append("tbs");
                r6.append(File.separator);
                r6.append("backup");
                return f.b.a.a.a.l(r6, File.separator, "core");
            default:
                return "";
        }
    }

    @SuppressLint({"NewApi"})
    public static boolean b(InputStream inputStream, ZipEntry zipEntry, String str, String str2) throws Exception {
        FileOutputStream fileOutputStream;
        a(new File(str));
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        String l2 = f.b.a.a.a.l(sb, File.separator, str2);
        File file = new File(l2);
        try {
            try {
                fileOutputStream = new FileOutputStream(file);
                try {
                    byte[] bArr = new byte[8192];
                    while (true) {
                        int read = inputStream.read(bArr);
                        if (read <= 0) {
                            break;
                        }
                        fileOutputStream.write(bArr, 0, read);
                    }
                    fileOutputStream.close();
                    if (a(l2, zipEntry.getSize(), zipEntry.getTime(), zipEntry.getCrc())) {
                        TbsLog.e("FileHelper", "file is different: " + l2);
                        return false;
                    } else if (file.setLastModified(zipEntry.getTime())) {
                        return true;
                    } else {
                        TbsLog.e("FileHelper", "Couldn't set time for dst file " + file);
                        return true;
                    }
                } catch (IOException e2) {
                    e = e2;
                    b(file);
                    throw new IOException("Couldn't write dst file " + file, e);
                } catch (Throwable th) {
                    th = th;
                    if (fileOutputStream != null) {
                        fileOutputStream.close();
                    }
                    throw th;
                }
            } catch (IOException e3) {
                e = e3;
            }
        } catch (Throwable th2) {
            th = th2;
            fileOutputStream = null;
        }
    }

    public static String d(Context context) {
        File file = new File(context.getDir("tbs", 0), "core_private");
        if (file.isDirectory() || file.mkdir()) {
            return file.getAbsolutePath();
        }
        return null;
    }

    public static boolean b(File file, File file2) throws Exception {
        return a(file, file2, (FileFilter) null);
    }

    public static boolean b(File file, File file2, FileFilter fileFilter, a aVar) throws Exception {
        FileChannel fileChannel;
        if (file == null || file2 == null) {
            return false;
        }
        if (fileFilter != null && !fileFilter.accept(file)) {
            return false;
        }
        FileChannel fileChannel2 = null;
        try {
            if (file.exists() && file.isFile()) {
                if (file2.exists()) {
                    if (aVar != null && aVar.a(file, file2)) {
                        return true;
                    }
                    b(file2);
                }
                File parentFile = file2.getParentFile();
                if (parentFile.isFile()) {
                    b(parentFile);
                }
                if (parentFile.exists() || parentFile.mkdirs()) {
                    FileChannel channel = new FileInputStream(file).getChannel();
                    try {
                        fileChannel2 = new FileOutputStream(file2).getChannel();
                        long size = channel.size();
                        if (fileChannel2.transferFrom(channel, 0L, size) != size) {
                            b(file2);
                            channel.close();
                            fileChannel2.close();
                            return false;
                        }
                        channel.close();
                        fileChannel2.close();
                        return true;
                    } catch (Throwable th) {
                        FileChannel fileChannel3 = fileChannel2;
                        fileChannel2 = channel;
                        th = th;
                        fileChannel = fileChannel3;
                        if (fileChannel2 != null) {
                            fileChannel2.close();
                        }
                        if (fileChannel != null) {
                            fileChannel.close();
                        }
                        throw th;
                    }
                }
                return false;
            }
            return false;
        } catch (Throwable th2) {
            th = th2;
            fileChannel = null;
        }
    }

    public static boolean a(Context context) {
        if (Build.VERSION.SDK_INT < 23) {
            return true;
        }
        if (context != null) {
            return context.getApplicationContext().checkSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") == 0;
        }
        return false;
    }

    public static boolean a(File file, File file2) throws Exception {
        return a(file.getPath(), file2.getPath());
    }

    @SuppressLint({"InlinedApi"})
    public static boolean a(String str, String str2) throws Exception {
        return a(str, str2, Build.CPU_ABI, Build.CPU_ABI2, j.a("ro.product.cpu.upgradeabi", "armeabi"));
    }

    public static boolean a(String str, final String str2, String str3, String str4, String str5) throws Exception {
        return a(str, str3, str4, str5, new b() { // from class: com.tencent.smtt.utils.f.1
            @Override // com.tencent.smtt.utils.f.b
            public boolean a(InputStream inputStream, ZipEntry zipEntry, String str6) throws Exception {
                try {
                    return f.b(inputStream, zipEntry, str2, str6);
                } catch (Exception e2) {
                    throw new Exception("copyFileIfChanged Exception", e2);
                }
            }
        });
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x0093, code lost:
        if (r6.regionMatches(com.tencent.smtt.utils.f.f2750c, r14, 0, r14.length()) == false) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00a0, code lost:
        if (r6.charAt(com.tencent.smtt.utils.f.f2750c + r14.length()) != '/') goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00a2, code lost:
        if (r3 != false) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00a4, code lost:
        if (r4 == false) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x000e, code lost:
        continue;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x000e, code lost:
        continue;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x000e, code lost:
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean a(java.lang.String r11, java.lang.String r12, java.lang.String r13, java.lang.String r14, com.tencent.smtt.utils.f.b r15) throws java.lang.Exception {
        /*
            r0 = 0
            java.util.zip.ZipFile r1 = new java.util.zip.ZipFile     // Catch: java.lang.Throwable -> Ld4
            r1.<init>(r11)     // Catch: java.lang.Throwable -> Ld4
            java.util.Enumeration r11 = r1.entries()     // Catch: java.lang.Throwable -> Ld1
            r0 = 1
            r2 = 0
            r3 = 0
            r4 = 0
        Le:
            boolean r5 = r11.hasMoreElements()     // Catch: java.lang.Throwable -> Ld1
            if (r5 == 0) goto Lcd
            java.lang.Object r5 = r11.nextElement()     // Catch: java.lang.Throwable -> Ld1
            java.util.zip.ZipEntry r5 = (java.util.zip.ZipEntry) r5     // Catch: java.lang.Throwable -> Ld1
            java.lang.String r6 = r5.getName()     // Catch: java.lang.Throwable -> Ld1
            if (r6 != 0) goto L21
            goto Le
        L21:
            java.lang.String r7 = "../"
            boolean r7 = r6.contains(r7)     // Catch: java.lang.Throwable -> Ld1
            if (r7 == 0) goto L2a
            goto Le
        L2a:
            java.lang.String r7 = "lib/"
            boolean r7 = r6.startsWith(r7)     // Catch: java.lang.Throwable -> Ld1
            if (r7 != 0) goto L3b
            java.lang.String r7 = "assets/"
            boolean r7 = r6.startsWith(r7)     // Catch: java.lang.Throwable -> Ld1
            if (r7 != 0) goto L3b
            goto Le
        L3b:
            r7 = 47
            int r8 = r6.lastIndexOf(r7)     // Catch: java.lang.Throwable -> Ld1
            java.lang.String r8 = r6.substring(r8)     // Catch: java.lang.Throwable -> Ld1
            java.lang.String r9 = ".so"
            boolean r9 = r8.endsWith(r9)     // Catch: java.lang.Throwable -> Ld1
            if (r9 == 0) goto La8
            int r9 = com.tencent.smtt.utils.f.f2750c     // Catch: java.lang.Throwable -> Ld1
            int r10 = r12.length()     // Catch: java.lang.Throwable -> Ld1
            boolean r9 = r6.regionMatches(r9, r12, r2, r10)     // Catch: java.lang.Throwable -> Ld1
            if (r9 == 0) goto L68
            int r9 = com.tencent.smtt.utils.f.f2750c     // Catch: java.lang.Throwable -> Ld1
            int r10 = r12.length()     // Catch: java.lang.Throwable -> Ld1
            int r9 = r9 + r10
            char r9 = r6.charAt(r9)     // Catch: java.lang.Throwable -> Ld1
            if (r9 != r7) goto L68
            r3 = 1
            goto La8
        L68:
            if (r13 == 0) goto L87
            int r9 = com.tencent.smtt.utils.f.f2750c     // Catch: java.lang.Throwable -> Ld1
            int r10 = r13.length()     // Catch: java.lang.Throwable -> Ld1
            boolean r9 = r6.regionMatches(r9, r13, r2, r10)     // Catch: java.lang.Throwable -> Ld1
            if (r9 == 0) goto L87
            int r9 = com.tencent.smtt.utils.f.f2750c     // Catch: java.lang.Throwable -> Ld1
            int r10 = r13.length()     // Catch: java.lang.Throwable -> Ld1
            int r9 = r9 + r10
            char r9 = r6.charAt(r9)     // Catch: java.lang.Throwable -> Ld1
            if (r9 != r7) goto L87
            r4 = 1
            if (r3 == 0) goto La8
            goto Le
        L87:
            if (r14 == 0) goto Le
            int r9 = com.tencent.smtt.utils.f.f2750c     // Catch: java.lang.Throwable -> Ld1
            int r10 = r14.length()     // Catch: java.lang.Throwable -> Ld1
            boolean r9 = r6.regionMatches(r9, r14, r2, r10)     // Catch: java.lang.Throwable -> Ld1
            if (r9 == 0) goto Le
            int r9 = com.tencent.smtt.utils.f.f2750c     // Catch: java.lang.Throwable -> Ld1
            int r10 = r14.length()     // Catch: java.lang.Throwable -> Ld1
            int r9 = r9 + r10
            char r6 = r6.charAt(r9)     // Catch: java.lang.Throwable -> Ld1
            if (r6 != r7) goto Le
            if (r3 != 0) goto Le
            if (r4 == 0) goto La8
            goto Le
        La8:
            java.io.InputStream r6 = r1.getInputStream(r5)     // Catch: java.lang.Throwable -> Ld1
            java.lang.String r7 = r8.substring(r0)     // Catch: java.lang.Throwable -> Lc6
            boolean r5 = r15.a(r6, r5, r7)     // Catch: java.lang.Throwable -> Lc6
            if (r5 != 0) goto Lbf
            if (r6 == 0) goto Lbb
            r6.close()     // Catch: java.lang.Throwable -> Ld1
        Lbb:
            r1.close()
            return r2
        Lbf:
            if (r6 == 0) goto Le
            r6.close()     // Catch: java.lang.Throwable -> Ld1
            goto Le
        Lc6:
            r11 = move-exception
            if (r6 == 0) goto Lcc
            r6.close()     // Catch: java.lang.Throwable -> Ld1
        Lcc:
            throw r11     // Catch: java.lang.Throwable -> Ld1
        Lcd:
            r1.close()
            return r0
        Ld1:
            r11 = move-exception
            r0 = r1
            goto Ld5
        Ld4:
            r11 = move-exception
        Ld5:
            if (r0 == 0) goto Lda
            r0.close()
        Lda:
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.smtt.utils.f.a(java.lang.String, java.lang.String, java.lang.String, java.lang.String, com.tencent.smtt.utils.f$b):boolean");
    }

    public static void b(File file) {
        a(file, false);
    }

    public static boolean b(Context context) {
        long a2 = q.a();
        boolean z = a2 >= TbsDownloadConfig.getInstance(context).getDownloadMinFreeSpace();
        if (!z) {
            TbsLog.e(TbsDownloader.LOGTAG, "[TbsApkDwonloader.hasEnoughFreeSpace] freeSpace too small,  freeSpace = " + a2);
        }
        return z;
    }

    public static FileOutputStream b(Context context, boolean z, String str) {
        File a2 = a(context, z, str);
        if (a2 != null) {
            try {
                return new FileOutputStream(a2);
            } catch (FileNotFoundException e2) {
                e2.printStackTrace();
                return null;
            }
        }
        return null;
    }

    public static boolean a(String str, long j2, long j3, long j4) throws Exception {
        File file = new File(str);
        if (file.length() != j2) {
            StringBuilder o = f.b.a.a.a.o("file size doesn't match: ");
            o.append(file.length());
            o.append(" vs ");
            o.append(j2);
            TbsLog.e("FileHelper", o.toString());
            return true;
        }
        FileInputStream fileInputStream = null;
        try {
            FileInputStream fileInputStream2 = new FileInputStream(file);
            try {
                CRC32 crc32 = new CRC32();
                byte[] bArr = new byte[8192];
                while (true) {
                    int read = fileInputStream2.read(bArr);
                    if (read <= 0) {
                        break;
                    }
                    crc32.update(bArr, 0, read);
                }
                long value = crc32.getValue();
                TbsLog.i("FileHelper", "" + file.getName() + ": crc = " + value + ", zipCrc = " + j4);
                if (value != j4) {
                    fileInputStream2.close();
                    return true;
                }
                fileInputStream2.close();
                return false;
            } catch (Throwable th) {
                th = th;
                fileInputStream = fileInputStream2;
                if (fileInputStream != null) {
                    fileInputStream.close();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static boolean a(File file, File file2, FileFilter fileFilter) throws Exception {
        return a(file, file2, fileFilter, b);
    }

    public static boolean a(File file, File file2, FileFilter fileFilter, a aVar) throws Exception {
        if (file == null || file2 == null || !file.exists()) {
            return false;
        }
        if (file.isFile()) {
            return b(file, file2, fileFilter, aVar);
        }
        File[] listFiles = file.listFiles(fileFilter);
        if (listFiles == null) {
            return false;
        }
        boolean z = true;
        for (File file3 : listFiles) {
            if (!a(file3, new File(file2, file3.getName()), fileFilter)) {
                z = false;
            }
        }
        return z;
    }

    public static boolean a(File file) {
        if (file == null) {
            return false;
        }
        if (file.exists() && file.isDirectory()) {
            return true;
        }
        b(file);
        return file.mkdirs();
    }

    public static void a(File file, boolean z) {
        TbsLog.i("FileUtils", "delete file,ignore=" + z + file + Log.getStackTraceString(new Throwable()));
        if (file == null || !file.exists()) {
            return;
        }
        if (file.isFile()) {
            file.delete();
            return;
        }
        File[] listFiles = file.listFiles();
        if (listFiles == null) {
            return;
        }
        for (File file2 : listFiles) {
            a(file2, z);
        }
        if (z) {
            return;
        }
        file.delete();
    }

    public static void a(File file, boolean z, String str) {
        TbsLog.i("FileUtils", "delete file,ignore=" + z + "except" + str + file + Log.getStackTraceString(new Throwable()));
        if (file == null || !file.exists()) {
            return;
        }
        if (file.isFile()) {
            file.delete();
            return;
        }
        File[] listFiles = file.listFiles();
        if (listFiles == null) {
            return;
        }
        for (File file2 : listFiles) {
            if (!file2.getName().equals(str)) {
                a(file2, z);
            }
        }
        if (z) {
            return;
        }
        file.delete();
    }

    public static File a(Context context, boolean z, String str) {
        String c2;
        if (z) {
            c2 = d(context);
        } else {
            c2 = c(context);
        }
        if (c2 == null) {
            return null;
        }
        File file = new File(c2);
        if (!file.exists()) {
            file.mkdirs();
        }
        if (file.canWrite()) {
            File file2 = new File(file, str);
            if (!file2.exists()) {
                try {
                    file2.createNewFile();
                } catch (IOException e2) {
                    e2.printStackTrace();
                    return null;
                }
            }
            return file2;
        }
        return null;
    }

    public static File a(Context context, String str) {
        File file = new File(context.getFilesDir(), "tbs");
        if (!file.exists()) {
            file.mkdirs();
        }
        if (!file.canWrite()) {
            TbsLog.e("FileHelper", "getPermanentTbsFile -- no permission!");
            return null;
        }
        File file2 = new File(file, str);
        if (!file2.exists()) {
            try {
                file2.createNewFile();
            } catch (IOException e2) {
                TbsLog.e("FileHelper", "getPermanentTbsFile -- exception: " + e2);
                return null;
            }
        }
        return file2;
    }

    public static FileLock a(Context context, FileOutputStream fileOutputStream) {
        FileLock tryLock;
        if (fileOutputStream == null) {
            return null;
        }
        try {
            tryLock = fileOutputStream.getChannel().tryLock();
        } catch (OverlappingFileLockException e2) {
            e2.printStackTrace();
        } catch (Exception e3) {
            e3.printStackTrace();
        }
        if (tryLock.isValid()) {
            return tryLock;
        }
        return null;
    }

    public static void a(FileLock fileLock, FileOutputStream fileOutputStream) {
        if (fileLock != null) {
            try {
                FileChannel channel = fileLock.channel();
                if (channel != null && channel.isOpen()) {
                    fileLock.release();
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        if (fileOutputStream != null) {
            try {
                fileOutputStream.close();
            } catch (Exception e3) {
                e3.printStackTrace();
            }
        }
    }

    public static synchronized void a(Context context, FileLock fileLock) {
        synchronized (f.class) {
            TbsLog.i("FileHelper", "releaseTbsCoreRenameFileLock -- lock: " + fileLock);
            FileChannel channel = fileLock.channel();
            if (channel != null && channel.isOpen()) {
                try {
                    fileLock.release();
                } catch (IOException e2) {
                    e2.printStackTrace();
                }
            }
        }
    }
}
