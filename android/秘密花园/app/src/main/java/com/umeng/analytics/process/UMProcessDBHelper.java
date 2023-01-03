package com.umeng.analytics.process;

import android.content.ComponentName;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.umeng.analytics.pro.b;
import com.umeng.analytics.pro.w;
import com.umeng.analytics.process.DBFileTraversalUtil;
import com.umeng.analytics.process.a;
import com.umeng.commonsdk.framework.UMWorkDispatch;
import com.umeng.commonsdk.statistics.AnalyticsConstants;
import com.umeng.commonsdk.utils.FileLockCallback;
import com.umeng.commonsdk.utils.FileLockUtil;
import com.umeng.commonsdk.utils.UMUtils;
import java.io.File;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class UMProcessDBHelper {
    public static UMProcessDBHelper mInstance;
    public Context mContext;
    public FileLockUtil mFileLock = new FileLockUtil();
    public InsertEventCallback ekvCallBack = new InsertEventCallback();

    /* loaded from: classes.dex */
    public class InsertEventCallback implements FileLockCallback {
        public InsertEventCallback() {
        }

        @Override // com.umeng.commonsdk.utils.FileLockCallback
        public boolean onFileLock(File file, int i2) {
            return false;
        }

        @Override // com.umeng.commonsdk.utils.FileLockCallback
        public boolean onFileLock(String str) {
            return false;
        }

        @Override // com.umeng.commonsdk.utils.FileLockCallback
        public boolean onFileLock(String str, Object obj) {
            if (TextUtils.isEmpty(str)) {
                return true;
            }
            if (str.startsWith(a.f2883c)) {
                str = str.replaceFirst(a.f2883c, "");
            }
            UMProcessDBHelper.this.insertEvents(str.replace(a.f2884d, ""), (JSONArray) obj);
            return true;
        }
    }

    /* loaded from: classes.dex */
    public class ProcessToMainCallback implements FileLockCallback {
        public ProcessToMainCallback() {
        }

        @Override // com.umeng.commonsdk.utils.FileLockCallback
        public boolean onFileLock(File file, int i2) {
            return false;
        }

        @Override // com.umeng.commonsdk.utils.FileLockCallback
        public boolean onFileLock(String str) {
            if (TextUtils.isEmpty(str)) {
                return true;
            }
            if (str.startsWith(a.f2883c)) {
                str = str.replaceFirst(a.f2883c, "");
            }
            UMProcessDBHelper.this.processToMain(str.replace(a.f2884d, ""));
            return true;
        }

        @Override // com.umeng.commonsdk.utils.FileLockCallback
        public boolean onFileLock(String str, Object obj) {
            return false;
        }
    }

    /* loaded from: classes.dex */
    public class a implements Serializable {
        public int a;
        public String b;

        /* renamed from: c  reason: collision with root package name */
        public String f2876c;

        /* renamed from: d  reason: collision with root package name */
        public String f2877d;

        /* renamed from: e  reason: collision with root package name */
        public int f2878e;

        /* renamed from: f  reason: collision with root package name */
        public String f2879f;

        /* renamed from: g  reason: collision with root package name */
        public String f2880g;

        /* renamed from: h  reason: collision with root package name */
        public String f2881h;

        public a() {
        }
    }

    public UMProcessDBHelper() {
    }

    private List<a> datasAdapter(String str, JSONArray jSONArray) {
        ArrayList arrayList = new ArrayList();
        if (TextUtils.isEmpty(str)) {
            return arrayList;
        }
        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
            try {
                JSONObject jSONObject = jSONArray.getJSONObject(i2);
                a aVar = new a();
                aVar.f2876c = jSONObject.optString("id");
                aVar.f2880g = UMUtils.getAppVersionName(this.mContext);
                aVar.f2881h = UMUtils.getAppVersionCode(this.mContext);
                aVar.b = jSONObject.optString("__i");
                aVar.f2878e = jSONObject.optInt("__t");
                aVar.f2879f = str;
                if (jSONObject.has(b.ac)) {
                    jSONObject.remove(b.ac);
                }
                jSONObject.put(b.ac, getDataSource());
                jSONObject.remove("__i");
                jSONObject.remove("__t");
                aVar.f2877d = w.a().a(jSONObject.toString());
                jSONObject.remove(b.ac);
                arrayList.add(aVar);
            } catch (Exception unused) {
            }
        }
        return arrayList;
    }

    private boolean dbIsExists(String str) {
        try {
            return new File(b.b(this.mContext, str)).exists();
        } catch (Throwable unused) {
            return false;
        }
    }

    private int getDataSource() {
        return 0;
    }

    public static UMProcessDBHelper getInstance(Context context) {
        if (mInstance == null) {
            synchronized (UMProcessDBHelper.class) {
                if (mInstance == null) {
                    mInstance = new UMProcessDBHelper(context);
                }
            }
        }
        UMProcessDBHelper uMProcessDBHelper = mInstance;
        uMProcessDBHelper.mContext = context;
        return uMProcessDBHelper;
    }

    private boolean insertEvents_(String str, List<a> list) {
        Throwable th;
        if (TextUtils.isEmpty(str) || list == null || list.isEmpty()) {
            return true;
        }
        SQLiteDatabase sQLiteDatabase = null;
        try {
            SQLiteDatabase a2 = c.a(this.mContext).a(str);
            try {
                try {
                    a2.beginTransaction();
                    for (a aVar : list) {
                        try {
                            ContentValues contentValues = new ContentValues();
                            contentValues.put("__i", aVar.b);
                            contentValues.put("__e", aVar.f2876c);
                            contentValues.put("__t", Integer.valueOf(aVar.f2878e));
                            contentValues.put(a.AbstractC0014a.f2892f, aVar.f2879f);
                            contentValues.put("__av", aVar.f2880g);
                            contentValues.put("__vc", aVar.f2881h);
                            contentValues.put("__s", aVar.f2877d);
                            a2.insert(a.AbstractC0014a.a, null, contentValues);
                        } catch (Exception unused) {
                        }
                    }
                    a2.setTransactionSuccessful();
                    try {
                        a2.endTransaction();
                    } catch (Throwable unused2) {
                    }
                    c.a(this.mContext).b(str);
                    return true;
                } catch (Exception unused3) {
                    sQLiteDatabase = a2;
                    if (sQLiteDatabase != null) {
                        try {
                            sQLiteDatabase.endTransaction();
                        } catch (Throwable unused4) {
                        }
                    }
                    c.a(this.mContext).b(str);
                    return false;
                }
            } catch (Throwable th2) {
                th = th2;
                sQLiteDatabase = a2;
                if (sQLiteDatabase != null) {
                    try {
                        sQLiteDatabase.endTransaction();
                    } catch (Throwable unused5) {
                    }
                }
                c.a(this.mContext).b(str);
                throw th;
            }
        } catch (Exception unused6) {
        } catch (Throwable th3) {
            th = th3;
        }
    }

    private boolean processIsService(Context context) {
        if (context.getPackageManager().getServiceInfo(new ComponentName(context, this.mContext.getClass()), 0) != null) {
            return true;
        }
        return false;
    }

    /* access modifiers changed from: private */
    public void processToMain(String str) {
        if (dbIsExists(str)) {
            List<a> readEventByProcess = readEventByProcess(str);
            if (!readEventByProcess.isEmpty() && insertEvents_(a.f2888h, readEventByProcess)) {
                deleteEventDatas(str, null, readEventByProcess);
            }
        }
    }

    /*  JADX ERROR: JadxRuntimeException in pass: SSATransform
        jadx.core.utils.exceptions.JadxRuntimeException: Not initialized variable reg: 0, insn: 0x00b3: MOVE  (r2 I:??[OBJECT, ARRAY]) = (r0 I:??[OBJECT, ARRAY]), block:B:27:0x00b3
        	at jadx.core.dex.visitors.ssa.SSATransform.renameVarsInBlock(SSATransform.java:171)
        	at jadx.core.dex.visitors.ssa.SSATransform.renameVariables(SSATransform.java:143)
        	at jadx.core.dex.visitors.ssa.SSATransform.process(SSATransform.java:60)
        	at jadx.core.dex.visitors.ssa.SSATransform.visit(SSATransform.java:41)
        */
    private java.util.List<com.umeng.analytics.process.UMProcessDBHelper.a> readEventByProcess(
/*
[200] Method generation error in method: com.umeng.analytics.process.UMProcessDBHelper.readEventByProcess(java.lang.String):java.util.List<com.umeng.analytics.process.UMProcessDBHelper$a>, file: classes.dex
    jadx.core.utils.exceptions.JadxRuntimeException: Code variable not set in r8v0 ??
    	at jadx.core.dex.instructions.args.SSAVar.getCodeVar(SSAVar.java:228)
    	at jadx.core.codegen.MethodGen.addMethodArguments(MethodGen.java:195)
    	at jadx.core.codegen.MethodGen.addDefinition(MethodGen.java:151)
    	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:344)
    	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:302)
    	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$2(ClassGen.java:271)
    	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:183)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
    	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
    	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:258)
    
*/

    public void createDBByProcess(String str) {
        try {
            c.a(this.mContext).a(str);
            c.a(this.mContext).b(str);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void deleteEventDatas(String str, String str2, List<a> list) {
        Throwable th;
        SQLiteDatabase sQLiteDatabase;
        if (!TextUtils.isEmpty(str)) {
            SQLiteDatabase sQLiteDatabase2 = null;
            try {
                sQLiteDatabase = c.a(this.mContext).a(str);
            } catch (Exception unused) {
            } catch (Throwable th2) {
                th = th2;
                sQLiteDatabase = null;
            }
            try {
                sQLiteDatabase.beginTransaction();
                int size = list.size();
                if (size > 0) {
                    for (int i2 = 0; i2 < size; i2++) {
                        sQLiteDatabase.execSQL("delete from __et_p where rowid=" + list.get(i2).a);
                    }
                } else {
                    sQLiteDatabase.delete(a.AbstractC0014a.a, null, null);
                }
                sQLiteDatabase.setTransactionSuccessful();
                sQLiteDatabase.endTransaction();
            } catch (Exception unused2) {
                sQLiteDatabase2 = sQLiteDatabase;
                if (sQLiteDatabase2 != null) {
                    sQLiteDatabase2.endTransaction();
                }
                c.a(this.mContext).b(str);
            } catch (Throwable th3) {
                th = th3;
                if (sQLiteDatabase != null) {
                    sQLiteDatabase.endTransaction();
                }
                c.a(this.mContext).b(str);
                throw th;
            }
            c.a(this.mContext).b(str);
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:14:0x0047, code lost:
        if (r1 == null) goto L_0x004c;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void deleteMainProcessEventDatasByIds(java.util.List<java.lang.Integer> r8) {
        /*
            r7 = this;
            java.lang.String r0 = "_main_"
            r1 = 0
            android.content.Context r2 = r7.mContext     // Catch: Exception -> 0x0046, all -> 0x0036
            com.umeng.analytics.process.c r2 = com.umeng.analytics.process.c.a(r2)     // Catch: Exception -> 0x0046, all -> 0x0036
            android.database.sqlite.SQLiteDatabase r1 = r2.a(r0)     // Catch: Exception -> 0x0046, all -> 0x0036
            r1.beginTransaction()     // Catch: Exception -> 0x0046, all -> 0x0036
            java.util.Iterator r8 = r8.iterator()     // Catch: Exception -> 0x0046, all -> 0x0036
        L_0x0014:
            boolean r2 = r8.hasNext()     // Catch: Exception -> 0x0046, all -> 0x0036
            if (r2 == 0) goto L_0x0032
            java.lang.Object r2 = r8.next()     // Catch: Exception -> 0x0046, all -> 0x0036
            java.lang.Integer r2 = (java.lang.Integer) r2     // Catch: Exception -> 0x0046, all -> 0x0036
            java.lang.String r3 = "__et_p"
            java.lang.String r4 = "id=?"
            r5 = 1
            java.lang.String[] r5 = new java.lang.String[r5]     // Catch: Exception -> 0x0046, all -> 0x0036
            r6 = 0
            java.lang.String r2 = java.lang.String.valueOf(r2)     // Catch: Exception -> 0x0046, all -> 0x0036
            r5[r6] = r2     // Catch: Exception -> 0x0046, all -> 0x0036
            r1.delete(r3, r4, r5)     // Catch: Exception -> 0x0046, all -> 0x0036
            goto L_0x0014
        L_0x0032:
            r1.setTransactionSuccessful()     // Catch: Exception -> 0x0046, all -> 0x0036
            goto L_0x0049
        L_0x0036:
            r8 = move-exception
            if (r1 == 0) goto L_0x003c
            r1.endTransaction()
        L_0x003c:
            android.content.Context r1 = r7.mContext
            com.umeng.analytics.process.c r1 = com.umeng.analytics.process.c.a(r1)
            r1.b(r0)
            throw r8
        L_0x0046:
            if (r1 == 0) goto L_0x004c
        L_0x0049:
            r1.endTransaction()
        L_0x004c:
            android.content.Context r8 = r7.mContext
            com.umeng.analytics.process.c r8 = com.umeng.analytics.process.c.a(r8)
            r8.b(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.process.UMProcessDBHelper.deleteMainProcessEventDatasByIds(java.util.List):void");
    }

    public void insertEvents(String str, JSONArray jSONArray) {
        if (AnalyticsConstants.SUB_PROCESS_EVENT && !TextUtils.isEmpty(str)) {
            insertEvents_(str, datasAdapter(str, jSONArray));
        }
    }

    public void insertEventsInSubProcess(String str, JSONArray jSONArray) {
        if (AnalyticsConstants.SUB_PROCESS_EVENT && !TextUtils.isEmpty(str)) {
            File file = new File(b.b(this.mContext, str));
            if (file.exists()) {
                this.mFileLock.doFileOperateion(file, this.ekvCallBack, jSONArray);
            } else {
                insertEvents(str, jSONArray);
            }
        }
    }

    public void processDBToMain() {
        try {
            DBFileTraversalUtil.traverseDBFiles(b.a(this.mContext), new ProcessToMainCallback(), new DBFileTraversalUtil.a() { // from class: com.umeng.analytics.process.UMProcessDBHelper.1
                @Override // com.umeng.analytics.process.DBFileTraversalUtil.a
                public void a() {
                    if (AnalyticsConstants.SUB_PROCESS_EVENT) {
                        UMWorkDispatch.sendEvent(UMProcessDBHelper.this.mContext, UMProcessDBDatasSender.UM_PROCESS_CONSTRUCTMESSAGE, UMProcessDBDatasSender.getInstance(UMProcessDBHelper.this.mContext), null);
                    }
                }
            });
        } catch (Exception unused) {
        }
    }

    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:77:0x0016 */
    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:51:0x0143 */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v2, types: [org.json.JSONObject] */
    /* JADX WARN: Type inference failed for: r4v1, types: [android.database.sqlite.SQLiteDatabase, android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r4v2, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v4, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r6v1, types: [org.json.JSONObject] */
    /* JADX WARN: Type inference failed for: r0v10, types: [java.lang.Object, org.json.JSONArray] */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARNING: Code restructure failed: missing block: B:59:0x0152, code lost:
        if (r5 != null) goto L_0x0154;
     */
    /* JADX WARNING: Unknown variable types count: 4 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public org.json.JSONObject readMainEvents(long r19, java.util.List<java.lang.Integer> r21) {
        /*
        // Method dump skipped, instructions count: 374
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.process.UMProcessDBHelper.readMainEvents(long, java.util.List):org.json.JSONObject");
    }

    public JSONObject readVersionInfoFromColumId(Integer num) {
        SQLiteDatabase sQLiteDatabase;
        Throwable th;
        JSONObject jSONObject;
        Exception e2;
        String str = "select *  from __et_p where rowid=" + num;
        Cursor cursor = null;
        r3 = null;
        JSONObject jSONObject2 = null;
        cursor = null;
        cursor = null;
        cursor = null;
        try {
            sQLiteDatabase = c.a(this.mContext).a(a.f2888h);
            try {
                try {
                    sQLiteDatabase.beginTransaction();
                    Cursor rawQuery = sQLiteDatabase.rawQuery(str, null);
                    if (rawQuery != null) {
                        try {
                            try {
                                if (rawQuery.moveToNext()) {
                                    jSONObject = new JSONObject();
                                    try {
                                        String string = rawQuery.getString(rawQuery.getColumnIndex("__av"));
                                        String string2 = rawQuery.getString(rawQuery.getColumnIndex("__vc"));
                                        if (!TextUtils.isEmpty(string)) {
                                            jSONObject.put("__av", string);
                                        }
                                        if (!TextUtils.isEmpty(string2)) {
                                            jSONObject.put("__vc", string2);
                                        }
                                        jSONObject2 = jSONObject;
                                    } catch (Exception e3) {
                                        e2 = e3;
                                        cursor = rawQuery;
                                        e2.printStackTrace();
                                        if (cursor != null) {
                                            try {
                                                cursor.close();
                                            } catch (Exception unused) {
                                                c.a(this.mContext).b(a.f2888h);
                                                return jSONObject;
                                            }
                                        }
                                        if (sQLiteDatabase != null) {
                                            sQLiteDatabase.endTransaction();
                                        }
                                        c.a(this.mContext).b(a.f2888h);
                                        return jSONObject;
                                    }
                                }
                            } catch (Exception e4) {
                                e2 = e4;
                                jSONObject = null;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            cursor = rawQuery;
                            if (cursor != null) {
                                try {
                                    cursor.close();
                                } catch (Exception unused2) {
                                    c.a(this.mContext).b(a.f2888h);
                                    throw th;
                                }
                            }
                            if (sQLiteDatabase != null) {
                                sQLiteDatabase.endTransaction();
                            }
                            c.a(this.mContext).b(a.f2888h);
                            throw th;
                        }
                    }
                    if (rawQuery != null) {
                        try {
                            rawQuery.close();
                        } catch (Exception unused3) {
                        }
                    }
                    sQLiteDatabase.endTransaction();
                    c.a(this.mContext).b(a.f2888h);
                    return jSONObject2;
                } catch (Throwable th3) {
                    th = th3;
                }
            } catch (Exception e5) {
                e2 = e5;
                jSONObject = null;
            }
        } catch (Exception e6) {
            e2 = e6;
            sQLiteDatabase = null;
            jSONObject = null;
        } catch (Throwable th4) {
            th = th4;
            sQLiteDatabase = null;
        }
    }

    public UMProcessDBHelper(Context context) {
        w.a().a(context);
    }
}
