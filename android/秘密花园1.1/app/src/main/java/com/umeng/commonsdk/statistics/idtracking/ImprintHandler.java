package com.umeng.commonsdk.statistics.idtracking;

import android.content.Context;
import android.text.TextUtils;
import com.umeng.commonsdk.debug.UMRTLog;
import com.umeng.commonsdk.internal.crash.UMCrashManager;
import com.umeng.commonsdk.statistics.AnalyticsConstants;
import com.umeng.commonsdk.statistics.common.DataHelper;
import com.umeng.commonsdk.statistics.common.HelperUtils;
import com.umeng.commonsdk.statistics.common.MLog;
import com.umeng.commonsdk.statistics.common.ULog;
import com.umeng.commonsdk.statistics.internal.UMImprintChangeCallback;
import com.umeng.commonsdk.statistics.internal.UMImprintPreProcessCallback;
import com.umeng.commonsdk.utils.FileLockCallback;
import com.umeng.commonsdk.utils.FileLockUtil;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.TreeMap;

/* loaded from: classes.dex */
public class ImprintHandler implements FileLockCallback {
    public static final String a = "ImprintHandler";

    /* renamed from: c  reason: collision with root package name */
    public static final String f3187c = ".imprint";

    /* renamed from: k  reason: collision with root package name */
    public static Context f3192k = null;

    /* renamed from: l  reason: collision with root package name */
    public static FileLockUtil f3193l = null;

    /* renamed from: m  reason: collision with root package name */
    public static final int f3194m = 0;
    public static final int n = 1;

    /* renamed from: e  reason: collision with root package name */
    public com.umeng.commonsdk.statistics.internal.d f3195e;

    /* renamed from: h  reason: collision with root package name */
    public a f3196h = new a();

    /* renamed from: i  reason: collision with root package name */
    public com.umeng.commonsdk.statistics.proto.d f3197i = null;
    public static Object b = new Object();

    /* renamed from: d  reason: collision with root package name */
    public static final byte[] f3188d = "pbl0".getBytes();

    /* renamed from: f  reason: collision with root package name */
    public static Map<String, ArrayList<UMImprintChangeCallback>> f3189f = new HashMap();

    /* renamed from: g  reason: collision with root package name */
    public static Object f3190g = new Object();

    /* renamed from: j  reason: collision with root package name */
    public static ImprintHandler f3191j = null;
    public static Map<String, UMImprintPreProcessCallback> o = new HashMap();
    public static Object p = new Object();

    public ImprintHandler(Context context) {
        f3192k = context.getApplicationContext();
    }

    public static void a(String str, UMImprintChangeCallback uMImprintChangeCallback) {
        synchronized (f3190g) {
            int i2 = 0;
            if (f3189f.containsKey(str)) {
                ArrayList<UMImprintChangeCallback> arrayList = f3189f.get(str);
                int size = arrayList.size();
                ULog.i("--->>> addCallback: before add: callbacks size is: " + size);
                while (i2 < size) {
                    if (uMImprintChangeCallback == arrayList.get(i2)) {
                        ULog.i("--->>> addCallback: callback has exist, just exit");
                        return;
                    }
                    i2++;
                }
                arrayList.add(uMImprintChangeCallback);
                ULog.i("--->>> addCallback: after add: callbacks size is: " + arrayList.size());
            } else {
                ArrayList<UMImprintChangeCallback> arrayList2 = new ArrayList<>();
                int size2 = arrayList2.size();
                ULog.i("--->>> addCallback: before add: callbacks size is: " + size2);
                while (i2 < size2) {
                    if (uMImprintChangeCallback == arrayList2.get(i2)) {
                        ULog.i("--->>> addCallback: callback has exist, just exit");
                        return;
                    }
                    i2++;
                }
                arrayList2.add(uMImprintChangeCallback);
                ULog.i("--->>> addCallback: after add: callbacks size is: " + arrayList2.size());
                f3189f.put(str, arrayList2);
            }
        }
    }

    public static void b(String str, UMImprintChangeCallback uMImprintChangeCallback) {
        if (TextUtils.isEmpty(str) || uMImprintChangeCallback == null) {
            return;
        }
        synchronized (f3190g) {
            try {
                if (f3189f.containsKey(str)) {
                    ArrayList<UMImprintChangeCallback> arrayList = f3189f.get(str);
                    if (arrayList.size() > 0) {
                        int size = arrayList.size();
                        ULog.i("--->>> removeCallback: before remove: callbacks size is: " + size);
                        int i2 = 0;
                        while (true) {
                            if (i2 >= size) {
                                break;
                            } else if (uMImprintChangeCallback == arrayList.get(i2)) {
                                ULog.i("--->>> removeCallback: remove index " + i2);
                                arrayList.remove(i2);
                                break;
                            } else {
                                i2++;
                            }
                        }
                        ULog.i("--->>> removeCallback: after remove: callbacks size is: " + arrayList.size());
                        if (arrayList.size() == 0) {
                            ULog.i("--->>> removeCallback: remove key from map: key = " + str);
                            f3189f.remove(str);
                        }
                    }
                }
            }
        }
    }

    private boolean c(com.umeng.commonsdk.statistics.proto.d dVar) {
        if (dVar.i().equals(a(dVar))) {
            for (com.umeng.commonsdk.statistics.proto.e eVar : dVar.c().values()) {
                byte[] reverseHexString = DataHelper.reverseHexString(eVar.h());
                byte[] a2 = a(eVar);
                for (int i2 = 0; i2 < 4; i2++) {
                    if (reverseHexString[i2] != a2[i2]) {
                        return false;
                    }
                }
            }
            return true;
        }
        return false;
    }

    private com.umeng.commonsdk.statistics.proto.d d(com.umeng.commonsdk.statistics.proto.d dVar) {
        ArrayList<UMImprintChangeCallback> arrayList;
        boolean z;
        ArrayList<UMImprintChangeCallback> arrayList2;
        UMImprintPreProcessCallback uMImprintPreProcessCallback;
        Map<String, com.umeng.commonsdk.statistics.proto.e> c2 = dVar.c();
        ArrayList arrayList3 = new ArrayList(c2.size() / 2);
        Iterator<Map.Entry<String, com.umeng.commonsdk.statistics.proto.e>> it = c2.entrySet().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Map.Entry<String, com.umeng.commonsdk.statistics.proto.e> next = it.next();
            if (!next.getValue().d()) {
                arrayList3.add(next.getKey());
            } else {
                String key = next.getKey();
                String str = next.getValue().a;
                synchronized (p) {
                    z = !TextUtils.isEmpty(key) && o.containsKey(key) && (uMImprintPreProcessCallback = o.get(key)) != null && uMImprintPreProcessCallback.onPreProcessImprintKey(key, str);
                }
                if (z) {
                    arrayList3.add(key);
                }
                synchronized (f3190g) {
                    if (!TextUtils.isEmpty(key) && f3189f.containsKey(key) && (arrayList2 = f3189f.get(key)) != null) {
                        for (int i2 = 0; i2 < arrayList2.size(); i2++) {
                            arrayList2.get(i2).onImprintValueChanged(key, str);
                        }
                    }
                }
            }
        }
        Iterator it2 = arrayList3.iterator();
        while (it2.hasNext()) {
            String str2 = (String) it2.next();
            synchronized (f3190g) {
                if (!TextUtils.isEmpty(str2) && f3189f.containsKey(str2) && (arrayList = f3189f.get(str2)) != null) {
                    for (int i3 = 0; i3 < arrayList.size(); i3++) {
                        arrayList.get(i3).onImprintValueChanged(str2, null);
                    }
                }
            }
            c2.remove(str2);
        }
        return dVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0038 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r2v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v12 */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v4, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v7, types: [java.io.InputStream] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void e() {
        /*
            r5 = this;
            java.io.File r0 = new java.io.File
            android.content.Context r1 = com.umeng.commonsdk.statistics.idtracking.ImprintHandler.f3192k
            java.io.File r1 = r1.getFilesDir()
            java.lang.String r2 = ".imprint"
            r0.<init>(r1, r2)
            java.lang.Object r1 = com.umeng.commonsdk.statistics.idtracking.ImprintHandler.b
            monitor-enter(r1)
            boolean r0 = r0.exists()     // Catch: java.lang.Throwable -> L58
            if (r0 != 0) goto L18
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L58
            return
        L18:
            r0 = 0
            android.content.Context r2 = com.umeng.commonsdk.statistics.idtracking.ImprintHandler.f3192k     // Catch: java.lang.Throwable -> L2b java.lang.Exception -> L30
            java.lang.String r3 = ".imprint"
            java.io.FileInputStream r2 = r2.openFileInput(r3)     // Catch: java.lang.Throwable -> L2b java.lang.Exception -> L30
            byte[] r0 = com.umeng.commonsdk.statistics.common.HelperUtils.readStreamToByteArray(r2)     // Catch: java.lang.Exception -> L29 java.lang.Throwable -> L53
        L25:
            com.umeng.commonsdk.statistics.common.HelperUtils.safeClose(r2)     // Catch: java.lang.Throwable -> L58
            goto L36
        L29:
            r3 = move-exception
            goto L32
        L2b:
            r2 = move-exception
            r4 = r2
            r2 = r0
            r0 = r4
            goto L54
        L30:
            r3 = move-exception
            r2 = r0
        L32:
            r3.printStackTrace()     // Catch: java.lang.Throwable -> L53
            goto L25
        L36:
            if (r0 == 0) goto L51
            com.umeng.commonsdk.statistics.proto.d r2 = new com.umeng.commonsdk.statistics.proto.d     // Catch: java.lang.Exception -> L4d java.lang.Throwable -> L58
            r2.<init>()     // Catch: java.lang.Exception -> L4d java.lang.Throwable -> L58
            com.umeng.commonsdk.proguard.m r3 = new com.umeng.commonsdk.proguard.m     // Catch: java.lang.Exception -> L4d java.lang.Throwable -> L58
            r3.<init>()     // Catch: java.lang.Exception -> L4d java.lang.Throwable -> L58
            r3.a(r2, r0)     // Catch: java.lang.Exception -> L4d java.lang.Throwable -> L58
            r5.f3197i = r2     // Catch: java.lang.Exception -> L4d java.lang.Throwable -> L58
            com.umeng.commonsdk.statistics.idtracking.ImprintHandler$a r0 = r5.f3196h     // Catch: java.lang.Exception -> L4d java.lang.Throwable -> L58
            r0.a(r2)     // Catch: java.lang.Exception -> L4d java.lang.Throwable -> L58
            goto L51
        L4d:
            r0 = move-exception
            r0.printStackTrace()     // Catch: java.lang.Throwable -> L58
        L51:
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L58
            return
        L53:
            r0 = move-exception
        L54:
            com.umeng.commonsdk.statistics.common.HelperUtils.safeClose(r2)     // Catch: java.lang.Throwable -> L58
            throw r0     // Catch: java.lang.Throwable -> L58
        L58:
            r0 = move-exception
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L58
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.commonsdk.statistics.idtracking.ImprintHandler.e():void");
    }

    public static synchronized ImprintHandler getImprintService(Context context) {
        ImprintHandler imprintHandler;
        synchronized (ImprintHandler.class) {
            if (f3191j == null) {
                f3191j = new ImprintHandler(context);
                FileLockUtil fileLockUtil = new FileLockUtil();
                f3193l = fileLockUtil;
                if (fileLockUtil != null) {
                    f3193l.doFileOperateion(new File(f3192k.getFilesDir(), f3187c), f3191j, 0);
                }
            }
            imprintHandler = f3191j;
        }
        return imprintHandler;
    }

    @Override // com.umeng.commonsdk.utils.FileLockCallback
    public boolean onFileLock(File file, int i2) {
        if (i2 == 0) {
            f3191j.e();
        } else if (i2 == 1) {
            f3191j.a(file);
        }
        return true;
    }

    @Override // com.umeng.commonsdk.utils.FileLockCallback
    public boolean onFileLock(String str) {
        return false;
    }

    @Override // com.umeng.commonsdk.utils.FileLockCallback
    public boolean onFileLock(String str, Object obj) {
        return false;
    }

    public void registImprintCallback(String str, UMImprintChangeCallback uMImprintChangeCallback) {
        if (TextUtils.isEmpty(str) || uMImprintChangeCallback == null) {
            return;
        }
        a(str, uMImprintChangeCallback);
    }

    public void registPreProcessCallback(String str, UMImprintPreProcessCallback uMImprintPreProcessCallback) {
        if (TextUtils.isEmpty(str) || uMImprintPreProcessCallback == null) {
            return;
        }
        synchronized (p) {
            try {
                if (!o.containsKey(str)) {
                    o.put(str, uMImprintPreProcessCallback);
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> registPreProcessCallback: key : " + str + " regist success.");
                } else {
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> key : " + str + " PreProcesser has registed!");
                }
            }
        }
    }

    public void unregistImprintCallback(String str, UMImprintChangeCallback uMImprintChangeCallback) {
        if (TextUtils.isEmpty(str) || uMImprintChangeCallback == null) {
            return;
        }
        b(str, uMImprintChangeCallback);
    }

    /* loaded from: classes.dex */
    public static class a {
        public Map<String, String> a = new HashMap();

        public a() {
        }

        private synchronized void b(com.umeng.commonsdk.statistics.proto.d dVar) {
            com.umeng.commonsdk.statistics.proto.e eVar;
            if (dVar != null) {
                if (dVar.e()) {
                    Map<String, com.umeng.commonsdk.statistics.proto.e> c2 = dVar.c();
                    for (String str : c2.keySet()) {
                        if (!TextUtils.isEmpty(str) && (eVar = c2.get(str)) != null) {
                            String b = eVar.b();
                            if (!TextUtils.isEmpty(b)) {
                                this.a.put(str, b);
                                boolean z = AnalyticsConstants.UM_DEBUG;
                            }
                        }
                    }
                }
            }
        }

        public synchronized void a(String str) {
            if (this.a != null && this.a.size() > 0 && !TextUtils.isEmpty(str) && this.a.containsKey(str)) {
                this.a.remove(str);
            }
        }

        public a(com.umeng.commonsdk.statistics.proto.d dVar) {
            a(dVar);
        }

        public void a(com.umeng.commonsdk.statistics.proto.d dVar) {
            if (dVar == null) {
                return;
            }
            b(dVar);
        }

        public synchronized String a(String str, String str2) {
            if (!TextUtils.isEmpty(str) && this.a.size() > 0) {
                String str3 = this.a.get(str);
                return !TextUtils.isEmpty(str3) ? str3 : str2;
            }
            return str2;
        }
    }

    public a c() {
        return this.f3196h;
    }

    public void b(com.umeng.commonsdk.statistics.proto.d dVar) {
        com.umeng.commonsdk.statistics.proto.d a2;
        boolean z;
        if (dVar == null) {
            if (AnalyticsConstants.UM_DEBUG) {
                MLog.d("Imprint is null");
            }
        } else if (!c(dVar)) {
            if (AnalyticsConstants.UM_DEBUG) {
                MLog.e("Imprint is not valid");
            }
        } else {
            if (AnalyticsConstants.UM_DEBUG) {
                MLog.d("Imprint is ok");
            }
            HashMap hashMap = new HashMap();
            synchronized (this) {
                com.umeng.commonsdk.statistics.proto.d dVar2 = this.f3197i;
                String str = null;
                String i2 = dVar2 == null ? null : dVar2.i();
                if (dVar2 == null) {
                    a2 = d(dVar);
                } else {
                    a2 = a(dVar2, dVar, hashMap);
                }
                this.f3197i = a2;
                if (a2 != null) {
                    str = a2.i();
                }
                z = !a(i2, str);
            }
            com.umeng.commonsdk.statistics.proto.d dVar3 = this.f3197i;
            if (dVar3 != null) {
                boolean z2 = AnalyticsConstants.UM_DEBUG;
                if (z) {
                    this.f3196h.a(dVar3);
                    com.umeng.commonsdk.statistics.internal.d dVar4 = this.f3195e;
                    if (dVar4 != null) {
                        dVar4.onImprintChanged(this.f3196h);
                    }
                }
            }
            if (hashMap.size() > 0) {
                synchronized (f3190g) {
                    for (Map.Entry entry : hashMap.entrySet()) {
                        String str2 = (String) entry.getKey();
                        String str3 = (String) entry.getValue();
                        if (!TextUtils.isEmpty(str2) && f3189f.containsKey(str2)) {
                            ULog.i("--->>> target imprint key is: " + str2 + "; value is: " + str3);
                            ArrayList<UMImprintChangeCallback> arrayList = f3189f.get(str2);
                            if (arrayList != null) {
                                for (int i3 = 0; i3 < arrayList.size(); i3++) {
                                    arrayList.get(i3).onImprintValueChanged(str2, str3);
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    public void a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        synchronized (p) {
            try {
                if (o.containsKey(str)) {
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> unregistPreProcessCallback: unregist [" + str + "] success.");
                    f3189f.remove(str);
                } else {
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> unregistPreProcessCallback: can't find [" + str + "], pls regist first.");
                }
            }
        }
    }

    public void a(com.umeng.commonsdk.statistics.internal.d dVar) {
        this.f3195e = dVar;
    }

    public void d() {
        if (this.f3197i == null || f3193l == null) {
            return;
        }
        File file = new File(f3192k.getFilesDir(), f3187c);
        if (!file.exists()) {
            try {
                try {
                    file.createNewFile();
                } catch (IOException unused) {
                    file.createNewFile();
                }
            } catch (IOException e2) {
                UMCrashManager.reportCrash(f3192k, e2);
            }
        }
        f3193l.doFileOperateion(file, f3191j, 1);
    }

    public String a(com.umeng.commonsdk.statistics.proto.d dVar) {
        StringBuilder sb = new StringBuilder();
        for (Map.Entry entry : new TreeMap(dVar.c()).entrySet()) {
            sb.append((String) entry.getKey());
            if (((com.umeng.commonsdk.statistics.proto.e) entry.getValue()).d()) {
                sb.append(((com.umeng.commonsdk.statistics.proto.e) entry.getValue()).b());
            }
            sb.append(((com.umeng.commonsdk.statistics.proto.e) entry.getValue()).e());
            sb.append(((com.umeng.commonsdk.statistics.proto.e) entry.getValue()).h());
        }
        sb.append(dVar.b);
        return HelperUtils.MD5(sb.toString()).toLowerCase(Locale.US);
    }

    public byte[] a(com.umeng.commonsdk.statistics.proto.e eVar) {
        ByteBuffer allocate = ByteBuffer.allocate(8);
        allocate.order(null);
        allocate.putLong(eVar.e());
        byte[] array = allocate.array();
        byte[] bArr = f3188d;
        byte[] bArr2 = new byte[4];
        for (int i2 = 0; i2 < 4; i2++) {
            bArr2[i2] = (byte) (array[i2] ^ bArr[i2]);
        }
        return bArr2;
    }

    public byte[] a() {
        try {
            synchronized (this) {
                if (this.f3197i == null) {
                    return null;
                }
                return new com.umeng.commonsdk.proguard.s().a(this.f3197i);
            }
        } catch (Throwable th) {
            UMCrashManager.reportCrash(f3192k, th);
            return null;
        }
    }

    public synchronized com.umeng.commonsdk.statistics.proto.d b() {
        return this.f3197i;
    }

    private boolean a(String str, String str2) {
        if (str == null) {
            return str2 == null;
        }
        return str.equals(str2);
    }

    private com.umeng.commonsdk.statistics.proto.d a(com.umeng.commonsdk.statistics.proto.d dVar, com.umeng.commonsdk.statistics.proto.d dVar2, Map<String, String> map) {
        UMImprintPreProcessCallback uMImprintPreProcessCallback;
        ArrayList<UMImprintChangeCallback> arrayList;
        if (dVar2 == null) {
            return dVar;
        }
        Map<String, com.umeng.commonsdk.statistics.proto.e> c2 = dVar.c();
        for (Map.Entry<String, com.umeng.commonsdk.statistics.proto.e> entry : dVar2.c().entrySet()) {
            int i2 = 0;
            if (entry.getValue().d()) {
                String key = entry.getKey();
                String str = entry.getValue().a;
                synchronized (p) {
                    if (!TextUtils.isEmpty(key) && o.containsKey(key) && (uMImprintPreProcessCallback = o.get(key)) != null && uMImprintPreProcessCallback.onPreProcessImprintKey(key, str)) {
                        i2 = 1;
                    }
                }
                if (i2 == 0) {
                    c2.put(entry.getKey(), entry.getValue());
                    synchronized (f3190g) {
                        if (!TextUtils.isEmpty(key) && f3189f.containsKey(key) && f3189f.get(key) != null) {
                            map.put(key, str);
                        }
                    }
                } else {
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> merge: [" + key + "] should be ignored.");
                }
            } else {
                String key2 = entry.getKey();
                synchronized (f3190g) {
                    if (!TextUtils.isEmpty(key2) && f3189f.containsKey(key2) && (arrayList = f3189f.get(key2)) != null) {
                        while (i2 < arrayList.size()) {
                            arrayList.get(i2).onImprintValueChanged(key2, null);
                            i2++;
                        }
                    }
                }
                c2.remove(key2);
                this.f3196h.a(key2);
            }
        }
        dVar.a(dVar2.f());
        dVar.a(a(dVar));
        return dVar;
    }

    private void a(File file) {
        if (this.f3197i == null) {
            return;
        }
        try {
            synchronized (b) {
                byte[] a2 = new com.umeng.commonsdk.proguard.s().a(this.f3197i);
                FileOutputStream fileOutputStream = new FileOutputStream(file);
                try {
                    fileOutputStream.write(a2);
                    fileOutputStream.flush();
                } finally {
                    HelperUtils.safeClose(fileOutputStream);
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
