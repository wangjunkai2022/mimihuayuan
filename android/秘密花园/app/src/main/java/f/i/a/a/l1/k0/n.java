package f.i.a.a.l1.k0;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import androidx.annotation.Nullable;
import androidx.core.app.Person;
import c.a.a.b.g.h;
import f.i.a.a.m1.g;
import f.i.a.a.m1.h0;
import f.i.a.a.m1.y;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;
import java.util.Set;
import javax.crypto.Cipher;
import javax.crypto.CipherOutputStream;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* compiled from: CachedContentIndex.java */
/* loaded from: classes.dex */
public class n {
    public final HashMap<String, m> a;
    public final SparseArray<String> b;

    /* renamed from: c  reason: collision with root package name */
    public final SparseBooleanArray f5573c;

    /* renamed from: d  reason: collision with root package name */
    public final SparseBooleanArray f5574d;

    /* renamed from: e  reason: collision with root package name */
    public c f5575e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    public c f5576f;

    /* compiled from: CachedContentIndex.java */
    /* loaded from: classes.dex */
    public static final class a implements c {

        /* renamed from: e  reason: collision with root package name */
        public static final String[] f5577e = {"id", Person.KEY_KEY, "metadata"};
        public final f.i.a.a.x0.b a;
        public final SparseArray<m> b = new SparseArray<>();

        /* renamed from: c  reason: collision with root package name */
        public String f5578c;

        /* renamed from: d  reason: collision with root package name */
        public String f5579d;

        public a(f.i.a.a.x0.b bVar) {
            this.a = bVar;
        }

        @Override // f.i.a.a.l1.k0.n.c
        public void a(m mVar, boolean z) {
            if (z) {
                this.b.delete(mVar.a);
            } else {
                this.b.put(mVar.a, null);
            }
        }

        @Override // f.i.a.a.l1.k0.n.c
        public boolean b() throws f.i.a.a.x0.a {
            if (h.a0(((SQLiteOpenHelper) this.a).getReadableDatabase(), 1, this.f5578c) != -1) {
                return true;
            }
            return false;
        }

        @Override // f.i.a.a.l1.k0.n.c
        public void c(HashMap<String, m> hashMap) throws IOException {
            if (this.b.size() != 0) {
                try {
                    SQLiteDatabase writableDatabase = ((SQLiteOpenHelper) this.a).getWritableDatabase();
                    writableDatabase.beginTransaction();
                    for (int i2 = 0; i2 < this.b.size(); i2++) {
                        m valueAt = this.b.valueAt(i2);
                        if (valueAt == null) {
                            writableDatabase.delete(this.f5579d, "id = ?", new String[]{Integer.toString(this.b.keyAt(i2))});
                        } else {
                            i(writableDatabase, valueAt);
                        }
                    }
                    writableDatabase.setTransactionSuccessful();
                    this.b.clear();
                    writableDatabase.endTransaction();
                } catch (SQLException e2) {
                    throw new f.i.a.a.x0.a(e2);
                }
            }
        }

        @Override // f.i.a.a.l1.k0.n.c
        public void d(HashMap<String, m> hashMap) throws IOException {
            try {
                SQLiteDatabase writableDatabase = ((SQLiteOpenHelper) this.a).getWritableDatabase();
                writableDatabase.beginTransaction();
                j(writableDatabase);
                for (m mVar : hashMap.values()) {
                    i(writableDatabase, mVar);
                }
                writableDatabase.setTransactionSuccessful();
                this.b.clear();
                writableDatabase.endTransaction();
            } catch (SQLException e2) {
                throw new f.i.a.a.x0.a(e2);
            }
        }

        @Override // f.i.a.a.l1.k0.n.c
        public void e(long j2) {
            String hexString = Long.toHexString(j2);
            this.f5578c = hexString;
            this.f5579d = f.b.a.a.a.f("ExoPlayerCacheIndex", hexString);
        }

        @Override // f.i.a.a.l1.k0.n.c
        public void f(m mVar) {
            this.b.put(mVar.a, mVar);
        }

        @Override // f.i.a.a.l1.k0.n.c
        public void g(HashMap<String, m> hashMap, SparseArray<String> sparseArray) throws IOException {
            h.v(this.b.size() == 0);
            try {
                if (h.a0(((SQLiteOpenHelper) this.a).getReadableDatabase(), 1, this.f5578c) != 1) {
                    SQLiteDatabase writableDatabase = ((SQLiteOpenHelper) this.a).getWritableDatabase();
                    writableDatabase.beginTransaction();
                    j(writableDatabase);
                    writableDatabase.setTransactionSuccessful();
                    writableDatabase.endTransaction();
                }
                Cursor query = ((SQLiteOpenHelper) this.a).getReadableDatabase().query(this.f5579d, f5577e, null, null, null, null, null);
                while (query.moveToNext()) {
                    m mVar = new m(query.getInt(0), query.getString(1), n.a(new DataInputStream(new ByteArrayInputStream(query.getBlob(2)))));
                    hashMap.put(mVar.b, mVar);
                    sparseArray.put(mVar.a, mVar.b);
                }
                query.close();
            } catch (SQLiteException e2) {
                hashMap.clear();
                sparseArray.clear();
                throw new f.i.a.a.x0.a(e2);
            }
        }

        @Override // f.i.a.a.l1.k0.n.c
        public void h() throws f.i.a.a.x0.a {
            f.i.a.a.x0.b bVar = this.a;
            String str = this.f5578c;
            try {
                String str2 = "ExoPlayerCacheIndex" + str;
                SQLiteDatabase writableDatabase = ((SQLiteOpenHelper) bVar).getWritableDatabase();
                writableDatabase.beginTransaction();
                try {
                    if (h.p1(writableDatabase, "ExoPlayerVersions")) {
                        writableDatabase.delete("ExoPlayerVersions", "feature = ? AND instance_uid = ?", new String[]{Integer.toString(1), str});
                    }
                    writableDatabase.execSQL("DROP TABLE IF EXISTS " + str2);
                    writableDatabase.setTransactionSuccessful();
                    writableDatabase.endTransaction();
                } catch (SQLException e2) {
                    throw new f.i.a.a.x0.a(e2);
                }
            } catch (SQLException e3) {
                throw new f.i.a.a.x0.a(e3);
            }
        }

        public final void i(SQLiteDatabase sQLiteDatabase, m mVar) throws IOException {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            n.b(mVar.f5571d, new DataOutputStream(byteArrayOutputStream));
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            ContentValues contentValues = new ContentValues();
            contentValues.put("id", Integer.valueOf(mVar.a));
            contentValues.put(Person.KEY_KEY, mVar.b);
            contentValues.put("metadata", byteArray);
            sQLiteDatabase.replaceOrThrow(this.f5579d, null, contentValues);
        }

        public final void j(SQLiteDatabase sQLiteDatabase) throws f.i.a.a.x0.a {
            h.l1(sQLiteDatabase, 1, this.f5578c, 1);
            String str = this.f5579d;
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS " + str);
            sQLiteDatabase.execSQL("CREATE TABLE " + this.f5579d + " (id INTEGER PRIMARY KEY NOT NULL,key TEXT NOT NULL,metadata BLOB NOT NULL)");
        }
    }

    /* compiled from: CachedContentIndex.java */
    /* loaded from: classes.dex */
    public static class b implements c {
        public final boolean a;
        @Nullable
        public final Cipher b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        public final SecretKeySpec f5580c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        public final Random f5581d;

        /* renamed from: e  reason: collision with root package name */
        public final g f5582e;

        /* renamed from: f  reason: collision with root package name */
        public boolean f5583f;
        @Nullable

        /* renamed from: g  reason: collision with root package name */
        public y f5584g;

        public b(File file, @Nullable byte[] bArr, boolean z) {
            SecretKeySpec secretKeySpec;
            Cipher cipher;
            Random random = null;
            if (bArr != null) {
                h.m(bArr.length == 16);
                try {
                    if (h0.a == 18) {
                        try {
                            cipher = Cipher.getInstance("AES/CBC/PKCS5PADDING", "BC");
                        } catch (Throwable unused) {
                        }
                        secretKeySpec = new SecretKeySpec(bArr, "AES");
                    }
                    cipher = Cipher.getInstance("AES/CBC/PKCS5PADDING");
                    secretKeySpec = new SecretKeySpec(bArr, "AES");
                } catch (NoSuchAlgorithmException | NoSuchPaddingException e2) {
                    throw new IllegalStateException(e2);
                }
            } else {
                h.m(!z);
                cipher = null;
                secretKeySpec = null;
            }
            this.a = z;
            this.b = cipher;
            this.f5580c = secretKeySpec;
            this.f5581d = z ? new Random() : random;
            this.f5582e = new g(file);
        }

        @Override // f.i.a.a.l1.k0.n.c
        public void a(m mVar, boolean z) {
            this.f5583f = true;
        }

        @Override // f.i.a.a.l1.k0.n.c
        public boolean b() {
            return this.f5582e.b();
        }

        @Override // f.i.a.a.l1.k0.n.c
        public void c(HashMap<String, m> hashMap) throws IOException {
            if (this.f5583f) {
                d(hashMap);
            }
        }

        @Override // f.i.a.a.l1.k0.n.c
        public void d(HashMap<String, m> hashMap) throws IOException {
            Throwable th;
            DataOutputStream dataOutputStream;
            Throwable e2;
            DataOutputStream dataOutputStream2 = null;
            try {
                OutputStream d2 = this.f5582e.d();
                if (this.f5584g == null) {
                    this.f5584g = new y(d2);
                } else {
                    this.f5584g.d(d2);
                }
                dataOutputStream = new DataOutputStream(this.f5584g);
            } catch (Throwable th2) {
                th = th2;
            }
            try {
                dataOutputStream.writeInt(2);
                dataOutputStream.writeInt(this.a ? 1 : 0);
                if (this.a) {
                    byte[] bArr = new byte[16];
                    this.f5581d.nextBytes(bArr);
                    dataOutputStream.write(bArr);
                    try {
                        this.b.init(1, this.f5580c, new IvParameterSpec(bArr));
                        dataOutputStream.flush();
                        dataOutputStream = new DataOutputStream(new CipherOutputStream(this.f5584g, this.b));
                    } catch (InvalidAlgorithmParameterException e3) {
                        e2 = e3;
                        throw new IllegalStateException(e2);
                    } catch (InvalidKeyException e4) {
                        e2 = e4;
                        throw new IllegalStateException(e2);
                    }
                }
                dataOutputStream.writeInt(hashMap.size());
                int i2 = 0;
                for (m mVar : hashMap.values()) {
                    dataOutputStream.writeInt(mVar.a);
                    dataOutputStream.writeUTF(mVar.b);
                    n.b(mVar.f5571d, dataOutputStream);
                    i2 += i(mVar, 2);
                }
                dataOutputStream.writeInt(i2);
                g gVar = this.f5582e;
                if (gVar != null) {
                    dataOutputStream.close();
                    gVar.b.delete();
                    h0.l(null);
                    this.f5583f = false;
                    return;
                }
                throw null;
            } catch (Throwable th3) {
                th = th3;
                dataOutputStream2 = dataOutputStream;
                h0.l(dataOutputStream2);
                throw th;
            }
        }

        @Override // f.i.a.a.l1.k0.n.c
        public void e(long j2) {
        }

        @Override // f.i.a.a.l1.k0.n.c
        public void f(m mVar) {
            this.f5583f = true;
        }

        /* JADX WARNING: Removed duplicated region for block: B:51:0x00ba  */
        /* JADX WARNING: Removed duplicated region for block: B:59:? A[RETURN, SYNTHETIC] */
        @Override // f.i.a.a.l1.k0.n.c
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void g(java.util.HashMap<java.lang.String, f.i.a.a.l1.k0.m> r11, android.util.SparseArray<java.lang.String> r12) {
            /*
                r10 = this;
                boolean r0 = r10.f5583f
                r1 = 1
                r0 = r0 ^ r1
                c.a.a.b.g.h.v(r0)
                f.i.a.a.m1.g r0 = r10.f5582e
                boolean r0 = r0.b()
                r2 = 0
                if (r0 != 0) goto L_0x0012
                goto L_0x00b8
            L_0x0012:
                r0 = 0
                java.io.BufferedInputStream r3 = new java.io.BufferedInputStream     // Catch: IOException -> 0x00b1, all -> 0x00aa
                f.i.a.a.m1.g r4 = r10.f5582e     // Catch: IOException -> 0x00b1, all -> 0x00aa
                java.io.InputStream r4 = r4.c()     // Catch: IOException -> 0x00b1, all -> 0x00aa
                r3.<init>(r4)     // Catch: IOException -> 0x00b1, all -> 0x00aa
                java.io.DataInputStream r4 = new java.io.DataInputStream     // Catch: IOException -> 0x00b1, all -> 0x00aa
                r4.<init>(r3)     // Catch: IOException -> 0x00b1, all -> 0x00aa
                int r0 = r4.readInt()     // Catch: IOException -> 0x00a8, all -> 0x00a5
                if (r0 < 0) goto L_0x00a1
                r5 = 2
                if (r0 <= r5) goto L_0x002e
                goto L_0x00a1
            L_0x002e:
                int r6 = r4.readInt()     // Catch: IOException -> 0x00a8, all -> 0x00a5
                r6 = r6 & r1
                if (r6 == 0) goto L_0x0064
                javax.crypto.Cipher r6 = r10.b     // Catch: IOException -> 0x00a8, all -> 0x00a5
                if (r6 != 0) goto L_0x003a
                goto L_0x00a1
            L_0x003a:
                r6 = 16
                byte[] r6 = new byte[r6]     // Catch: IOException -> 0x00a8, all -> 0x00a5
                r4.readFully(r6)     // Catch: IOException -> 0x00a8, all -> 0x00a5
                javax.crypto.spec.IvParameterSpec r7 = new javax.crypto.spec.IvParameterSpec     // Catch: IOException -> 0x00a8, all -> 0x00a5
                r7.<init>(r6)     // Catch: IOException -> 0x00a8, all -> 0x00a5
                javax.crypto.Cipher r6 = r10.b     // Catch: InvalidKeyException -> 0x005d, InvalidAlgorithmParameterException -> 0x005b, IOException -> 0x00a8, all -> 0x00a5
                javax.crypto.spec.SecretKeySpec r8 = r10.f5580c     // Catch: InvalidKeyException -> 0x005d, InvalidAlgorithmParameterException -> 0x005b, IOException -> 0x00a8, all -> 0x00a5
                r6.init(r5, r8, r7)     // Catch: InvalidKeyException -> 0x005d, InvalidAlgorithmParameterException -> 0x005b, IOException -> 0x00a8, all -> 0x00a5
                java.io.DataInputStream r5 = new java.io.DataInputStream     // Catch: IOException -> 0x00a8, all -> 0x00a5
                javax.crypto.CipherInputStream r6 = new javax.crypto.CipherInputStream     // Catch: IOException -> 0x00a8, all -> 0x00a5
                javax.crypto.Cipher r7 = r10.b     // Catch: IOException -> 0x00a8, all -> 0x00a5
                r6.<init>(r3, r7)     // Catch: IOException -> 0x00a8, all -> 0x00a5
                r5.<init>(r6)     // Catch: IOException -> 0x00a8, all -> 0x00a5
                r4 = r5
                goto L_0x006a
            L_0x005b:
                r0 = move-exception
                goto L_0x005e
            L_0x005d:
                r0 = move-exception
            L_0x005e:
                java.lang.IllegalStateException r1 = new java.lang.IllegalStateException     // Catch: IOException -> 0x00a8, all -> 0x00a5
                r1.<init>(r0)     // Catch: IOException -> 0x00a8, all -> 0x00a5
                throw r1     // Catch: IOException -> 0x00a8, all -> 0x00a5
            L_0x0064:
                boolean r3 = r10.a     // Catch: IOException -> 0x00a8, all -> 0x00a5
                if (r3 == 0) goto L_0x006a
                r10.f5583f = r1     // Catch: IOException -> 0x00a8, all -> 0x00a5
            L_0x006a:
                int r3 = r4.readInt()     // Catch: IOException -> 0x00a8, all -> 0x00a5
                r5 = 0
                r6 = 0
            L_0x0070:
                if (r5 >= r3) goto L_0x008a
                f.i.a.a.l1.k0.m r7 = r10.j(r0, r4)     // Catch: IOException -> 0x00a8, all -> 0x00a5
                java.lang.String r8 = r7.b     // Catch: IOException -> 0x00a8, all -> 0x00a5
                r11.put(r8, r7)     // Catch: IOException -> 0x00a8, all -> 0x00a5
                int r8 = r7.a     // Catch: IOException -> 0x00a8, all -> 0x00a5
                java.lang.String r9 = r7.b     // Catch: IOException -> 0x00a8, all -> 0x00a5
                r12.put(r8, r9)     // Catch: IOException -> 0x00a8, all -> 0x00a5
                int r7 = r10.i(r7, r0)     // Catch: IOException -> 0x00a8, all -> 0x00a5
                int r6 = r6 + r7
                int r5 = r5 + 1
                goto L_0x0070
            L_0x008a:
                int r0 = r4.readInt()     // Catch: IOException -> 0x00a8, all -> 0x00a5
                int r3 = r4.read()     // Catch: IOException -> 0x00a8, all -> 0x00a5
                r5 = -1
                if (r3 != r5) goto L_0x0097
                r3 = 1
                goto L_0x0098
            L_0x0097:
                r3 = 0
            L_0x0098:
                if (r0 != r6) goto L_0x00a1
                if (r3 != 0) goto L_0x009d
                goto L_0x00a1
            L_0x009d:
                f.i.a.a.m1.h0.l(r4)
                goto L_0x00b8
            L_0x00a1:
                f.i.a.a.m1.h0.l(r4)
                goto L_0x00b7
            L_0x00a5:
                r11 = move-exception
                r0 = r4
                goto L_0x00ab
            L_0x00a8:
                r0 = r4
                goto L_0x00b2
            L_0x00aa:
                r11 = move-exception
            L_0x00ab:
                if (r0 == 0) goto L_0x00b0
                f.i.a.a.m1.h0.l(r0)
            L_0x00b0:
                throw r11
            L_0x00b1:
            L_0x00b2:
                if (r0 == 0) goto L_0x00b7
                f.i.a.a.m1.h0.l(r0)
            L_0x00b7:
                r1 = 0
            L_0x00b8:
                if (r1 != 0) goto L_0x00c5
                r11.clear()
                r12.clear()
                f.i.a.a.m1.g r11 = r10.f5582e
                r11.a()
            L_0x00c5:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.l1.k0.n.b.g(java.util.HashMap, android.util.SparseArray):void");
        }

        @Override // f.i.a.a.l1.k0.n.c
        public void h() {
            this.f5582e.a();
        }

        public final int i(m mVar, int i2) {
            int hashCode = mVar.b.hashCode() + (mVar.a * 31);
            if (i2 >= 2) {
                return (hashCode * 31) + mVar.f5571d.hashCode();
            }
            long a = o.a(mVar.f5571d);
            return (hashCode * 31) + ((int) (a ^ (a >>> 32)));
        }

        public final m j(int i2, DataInputStream dataInputStream) throws IOException {
            r rVar;
            int readInt = dataInputStream.readInt();
            String readUTF = dataInputStream.readUTF();
            if (i2 < 2) {
                long readLong = dataInputStream.readLong();
                q qVar = new q();
                q.a(qVar, readLong);
                rVar = r.f5585c.a(qVar);
            } else {
                rVar = n.a(dataInputStream);
            }
            return new m(readInt, readUTF, rVar);
        }
    }

    /* compiled from: CachedContentIndex.java */
    /* loaded from: classes.dex */
    public interface c {
        void a(m mVar, boolean z);

        boolean b() throws IOException;

        void c(HashMap<String, m> hashMap) throws IOException;

        void d(HashMap<String, m> hashMap) throws IOException;

        void e(long j2);

        void f(m mVar);

        void g(HashMap<String, m> hashMap, SparseArray<String> sparseArray) throws IOException;

        void h() throws IOException;
    }

    public n(@Nullable f.i.a.a.x0.b bVar, @Nullable File file, @Nullable byte[] bArr, boolean z, boolean z2) {
        h.v((bVar == null && file == null) ? false : true);
        this.a = new HashMap<>();
        this.b = new SparseArray<>();
        this.f5573c = new SparseBooleanArray();
        this.f5574d = new SparseBooleanArray();
        b bVar2 = null;
        a aVar = bVar != null ? new a(bVar) : null;
        bVar2 = file != null ? new b(new File(file, "cached_content_index.exi"), bArr, z) : bVar2;
        if (aVar == null || (bVar2 != null && z2)) {
            this.f5575e = bVar2;
            this.f5576f = aVar;
            return;
        }
        this.f5575e = aVar;
        this.f5576f = bVar2;
    }

    public static r a(DataInputStream dataInputStream) throws IOException {
        int readInt = dataInputStream.readInt();
        HashMap hashMap = new HashMap();
        for (int i2 = 0; i2 < readInt; i2++) {
            String readUTF = dataInputStream.readUTF();
            int readInt2 = dataInputStream.readInt();
            if (readInt2 >= 0) {
                int min = Math.min(readInt2, 10485760);
                byte[] bArr = h0.f5665f;
                int i3 = 0;
                while (i3 != readInt2) {
                    int i4 = i3 + min;
                    bArr = Arrays.copyOf(bArr, i4);
                    dataInputStream.readFully(bArr, i3, min);
                    min = Math.min(readInt2 - i4, 10485760);
                    i3 = i4;
                }
                hashMap.put(readUTF, bArr);
            } else {
                throw new IOException(f.b.a.a.a.J("Invalid value size: ", readInt2));
            }
        }
        return new r(hashMap);
    }

    public static void b(r rVar, DataOutputStream dataOutputStream) throws IOException {
        Set<Map.Entry<String, byte[]>> entrySet = rVar.b.entrySet();
        dataOutputStream.writeInt(entrySet.size());
        for (Map.Entry<String, byte[]> entry : entrySet) {
            dataOutputStream.writeUTF(entry.getKey());
            byte[] value = entry.getValue();
            dataOutputStream.writeInt(value.length);
            dataOutputStream.write(value);
        }
    }

    public m c(String str) {
        return this.a.get(str);
    }

    public m d(String str) {
        int i2;
        m mVar = this.a.get(str);
        if (mVar != null) {
            return mVar;
        }
        SparseArray<String> sparseArray = this.b;
        int size = sparseArray.size();
        int i3 = 0;
        if (size == 0) {
            i2 = 0;
        } else {
            i2 = sparseArray.keyAt(size - 1) + 1;
        }
        if (i2 < 0) {
            while (i3 < size && i3 == sparseArray.keyAt(i3)) {
                i3++;
            }
            i2 = i3;
        }
        m mVar2 = new m(i2, str, r.f5585c);
        this.a.put(str, mVar2);
        this.b.put(i2, str);
        this.f5574d.put(i2, true);
        this.f5575e.f(mVar2);
        return mVar2;
    }

    public void e(long j2) throws IOException {
        c cVar;
        this.f5575e.e(j2);
        c cVar2 = this.f5576f;
        if (cVar2 != null) {
            cVar2.e(j2);
        }
        if (this.f5575e.b() || (cVar = this.f5576f) == null || !cVar.b()) {
            this.f5575e.g(this.a, this.b);
        } else {
            this.f5576f.g(this.a, this.b);
            this.f5575e.d(this.a);
        }
        c cVar3 = this.f5576f;
        if (cVar3 != null) {
            cVar3.h();
            this.f5576f = null;
        }
    }

    public void f(String str) {
        m mVar = this.a.get(str);
        if (mVar != null && mVar.f5570c.isEmpty() && !mVar.f5572e) {
            this.a.remove(str);
            int i2 = mVar.a;
            boolean z = this.f5574d.get(i2);
            this.f5575e.a(mVar, z);
            if (z) {
                this.b.remove(i2);
                this.f5574d.delete(i2);
                return;
            }
            this.b.put(i2, null);
            this.f5573c.put(i2, true);
        }
    }

    public void g() throws IOException {
        this.f5575e.c(this.a);
        int size = this.f5573c.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.b.remove(this.f5573c.keyAt(i2));
        }
        this.f5573c.clear();
        this.f5574d.clear();
    }
}
