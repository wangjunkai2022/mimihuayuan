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
    public final SparseBooleanArray f5657c;

    /* renamed from: d  reason: collision with root package name */
    public final SparseBooleanArray f5658d;

    /* renamed from: e  reason: collision with root package name */
    public c f5659e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    public c f5660f;

    /* compiled from: CachedContentIndex.java */
    /* loaded from: classes.dex */
    public static final class a implements c {

        /* renamed from: e  reason: collision with root package name */
        public static final String[] f5661e = {"id", Person.KEY_KEY, "metadata"};
        public final f.i.a.a.x0.b a;
        public final SparseArray<m> b = new SparseArray<>();

        /* renamed from: c  reason: collision with root package name */
        public String f5662c;

        /* renamed from: d  reason: collision with root package name */
        public String f5663d;

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
            return c.a.a.b.g.h.a0(((SQLiteOpenHelper) this.a).getReadableDatabase(), 1, this.f5662c) != -1;
        }

        @Override // f.i.a.a.l1.k0.n.c
        public void c(HashMap<String, m> hashMap) throws IOException {
            if (this.b.size() == 0) {
                return;
            }
            try {
                SQLiteDatabase writableDatabase = ((SQLiteOpenHelper) this.a).getWritableDatabase();
                writableDatabase.beginTransaction();
                for (int i2 = 0; i2 < this.b.size(); i2++) {
                    m valueAt = this.b.valueAt(i2);
                    if (valueAt == null) {
                        writableDatabase.delete(this.f5663d, "id = ?", new String[]{Integer.toString(this.b.keyAt(i2))});
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
            this.f5662c = hexString;
            this.f5663d = f.b.a.a.a.f("ExoPlayerCacheIndex", hexString);
        }

        @Override // f.i.a.a.l1.k0.n.c
        public void f(m mVar) {
            this.b.put(mVar.a, mVar);
        }

        @Override // f.i.a.a.l1.k0.n.c
        public void g(HashMap<String, m> hashMap, SparseArray<String> sparseArray) throws IOException {
            c.a.a.b.g.h.v(this.b.size() == 0);
            try {
                if (c.a.a.b.g.h.a0(((SQLiteOpenHelper) this.a).getReadableDatabase(), 1, this.f5662c) != 1) {
                    SQLiteDatabase writableDatabase = ((SQLiteOpenHelper) this.a).getWritableDatabase();
                    writableDatabase.beginTransaction();
                    j(writableDatabase);
                    writableDatabase.setTransactionSuccessful();
                    writableDatabase.endTransaction();
                }
                Cursor query = ((SQLiteOpenHelper) this.a).getReadableDatabase().query(this.f5663d, f5661e, null, null, null, null, null);
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
            String str = this.f5662c;
            try {
                String str2 = "ExoPlayerCacheIndex" + str;
                SQLiteDatabase writableDatabase = ((SQLiteOpenHelper) bVar).getWritableDatabase();
                writableDatabase.beginTransaction();
                try {
                    if (c.a.a.b.g.h.r1(writableDatabase, "ExoPlayerVersions")) {
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
            n.b(mVar.f5655d, new DataOutputStream(byteArrayOutputStream));
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            ContentValues contentValues = new ContentValues();
            contentValues.put("id", Integer.valueOf(mVar.a));
            contentValues.put(Person.KEY_KEY, mVar.b);
            contentValues.put("metadata", byteArray);
            sQLiteDatabase.replaceOrThrow(this.f5663d, null, contentValues);
        }

        public final void j(SQLiteDatabase sQLiteDatabase) throws f.i.a.a.x0.a {
            c.a.a.b.g.h.n1(sQLiteDatabase, 1, this.f5662c, 1);
            String str = this.f5663d;
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS " + str);
            sQLiteDatabase.execSQL("CREATE TABLE " + this.f5663d + " (id INTEGER PRIMARY KEY NOT NULL,key TEXT NOT NULL,metadata BLOB NOT NULL)");
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
        public final SecretKeySpec f5664c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        public final Random f5665d;

        /* renamed from: e  reason: collision with root package name */
        public final f.i.a.a.m1.g f5666e;

        /* renamed from: f  reason: collision with root package name */
        public boolean f5667f;
        @Nullable

        /* renamed from: g  reason: collision with root package name */
        public y f5668g;

        public b(File file, @Nullable byte[] bArr, boolean z) {
            Cipher cipher;
            SecretKeySpec secretKeySpec;
            if (bArr != null) {
                c.a.a.b.g.h.m(bArr.length == 16);
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
                c.a.a.b.g.h.m(!z);
                cipher = null;
                secretKeySpec = null;
            }
            this.a = z;
            this.b = cipher;
            this.f5664c = secretKeySpec;
            this.f5665d = z ? new Random() : null;
            this.f5666e = new f.i.a.a.m1.g(file);
        }

        @Override // f.i.a.a.l1.k0.n.c
        public void a(m mVar, boolean z) {
            this.f5667f = true;
        }

        @Override // f.i.a.a.l1.k0.n.c
        public boolean b() {
            return this.f5666e.b();
        }

        @Override // f.i.a.a.l1.k0.n.c
        public void c(HashMap<String, m> hashMap) throws IOException {
            if (this.f5667f) {
                d(hashMap);
            }
        }

        @Override // f.i.a.a.l1.k0.n.c
        public void d(HashMap<String, m> hashMap) throws IOException {
            DataOutputStream dataOutputStream;
            DataOutputStream dataOutputStream2 = null;
            try {
                OutputStream d2 = this.f5666e.d();
                if (this.f5668g == null) {
                    this.f5668g = new y(d2);
                } else {
                    this.f5668g.d(d2);
                }
                dataOutputStream = new DataOutputStream(this.f5668g);
            } catch (Throwable th) {
                th = th;
            }
            try {
                dataOutputStream.writeInt(2);
                dataOutputStream.writeInt(this.a ? 1 : 0);
                if (this.a) {
                    byte[] bArr = new byte[16];
                    this.f5665d.nextBytes(bArr);
                    dataOutputStream.write(bArr);
                    try {
                        this.b.init(1, this.f5664c, new IvParameterSpec(bArr));
                        dataOutputStream.flush();
                        dataOutputStream = new DataOutputStream(new CipherOutputStream(this.f5668g, this.b));
                    } catch (InvalidAlgorithmParameterException e2) {
                        e = e2;
                        throw new IllegalStateException(e);
                    } catch (InvalidKeyException e3) {
                        e = e3;
                        throw new IllegalStateException(e);
                    }
                }
                dataOutputStream.writeInt(hashMap.size());
                int i2 = 0;
                for (m mVar : hashMap.values()) {
                    dataOutputStream.writeInt(mVar.a);
                    dataOutputStream.writeUTF(mVar.b);
                    n.b(mVar.f5655d, dataOutputStream);
                    i2 += i(mVar, 2);
                }
                dataOutputStream.writeInt(i2);
                f.i.a.a.m1.g gVar = this.f5666e;
                if (gVar != null) {
                    dataOutputStream.close();
                    gVar.b.delete();
                    h0.l(null);
                    this.f5667f = false;
                    return;
                }
                throw null;
            } catch (Throwable th2) {
                th = th2;
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
            this.f5667f = true;
        }

        /* JADX WARN: Removed duplicated region for block: B:53:0x00ba  */
        /* JADX WARN: Removed duplicated region for block: B:61:? A[RETURN, SYNTHETIC] */
        @Override // f.i.a.a.l1.k0.n.c
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void g(java.util.HashMap<java.lang.String, f.i.a.a.l1.k0.m> r11, android.util.SparseArray<java.lang.String> r12) {
            /*
                r10 = this;
                boolean r0 = r10.f5667f
                r1 = 1
                r0 = r0 ^ r1
                c.a.a.b.g.h.v(r0)
                f.i.a.a.m1.g r0 = r10.f5666e
                boolean r0 = r0.b()
                r2 = 0
                if (r0 != 0) goto L12
                goto Lb8
            L12:
                r0 = 0
                java.io.BufferedInputStream r3 = new java.io.BufferedInputStream     // Catch: java.lang.Throwable -> Laa java.io.IOException -> Lb1
                f.i.a.a.m1.g r4 = r10.f5666e     // Catch: java.lang.Throwable -> Laa java.io.IOException -> Lb1
                java.io.InputStream r4 = r4.c()     // Catch: java.lang.Throwable -> Laa java.io.IOException -> Lb1
                r3.<init>(r4)     // Catch: java.lang.Throwable -> Laa java.io.IOException -> Lb1
                java.io.DataInputStream r4 = new java.io.DataInputStream     // Catch: java.lang.Throwable -> Laa java.io.IOException -> Lb1
                r4.<init>(r3)     // Catch: java.lang.Throwable -> Laa java.io.IOException -> Lb1
                int r0 = r4.readInt()     // Catch: java.lang.Throwable -> La5 java.io.IOException -> La8
                if (r0 < 0) goto La1
                r5 = 2
                if (r0 <= r5) goto L2e
                goto La1
            L2e:
                int r6 = r4.readInt()     // Catch: java.lang.Throwable -> La5 java.io.IOException -> La8
                r6 = r6 & r1
                if (r6 == 0) goto L64
                javax.crypto.Cipher r6 = r10.b     // Catch: java.lang.Throwable -> La5 java.io.IOException -> La8
                if (r6 != 0) goto L3a
                goto La1
            L3a:
                r6 = 16
                byte[] r6 = new byte[r6]     // Catch: java.lang.Throwable -> La5 java.io.IOException -> La8
                r4.readFully(r6)     // Catch: java.lang.Throwable -> La5 java.io.IOException -> La8
                javax.crypto.spec.IvParameterSpec r7 = new javax.crypto.spec.IvParameterSpec     // Catch: java.lang.Throwable -> La5 java.io.IOException -> La8
                r7.<init>(r6)     // Catch: java.lang.Throwable -> La5 java.io.IOException -> La8
                javax.crypto.Cipher r6 = r10.b     // Catch: java.security.InvalidAlgorithmParameterException -> L5b java.security.InvalidKeyException -> L5d java.lang.Throwable -> La5 java.io.IOException -> La8
                javax.crypto.spec.SecretKeySpec r8 = r10.f5664c     // Catch: java.security.InvalidAlgorithmParameterException -> L5b java.security.InvalidKeyException -> L5d java.lang.Throwable -> La5 java.io.IOException -> La8
                r6.init(r5, r8, r7)     // Catch: java.security.InvalidAlgorithmParameterException -> L5b java.security.InvalidKeyException -> L5d java.lang.Throwable -> La5 java.io.IOException -> La8
                java.io.DataInputStream r5 = new java.io.DataInputStream     // Catch: java.lang.Throwable -> La5 java.io.IOException -> La8
                javax.crypto.CipherInputStream r6 = new javax.crypto.CipherInputStream     // Catch: java.lang.Throwable -> La5 java.io.IOException -> La8
                javax.crypto.Cipher r7 = r10.b     // Catch: java.lang.Throwable -> La5 java.io.IOException -> La8
                r6.<init>(r3, r7)     // Catch: java.lang.Throwable -> La5 java.io.IOException -> La8
                r5.<init>(r6)     // Catch: java.lang.Throwable -> La5 java.io.IOException -> La8
                r4 = r5
                goto L6a
            L5b:
                r0 = move-exception
                goto L5e
            L5d:
                r0 = move-exception
            L5e:
                java.lang.IllegalStateException r1 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> La5 java.io.IOException -> La8
                r1.<init>(r0)     // Catch: java.lang.Throwable -> La5 java.io.IOException -> La8
                throw r1     // Catch: java.lang.Throwable -> La5 java.io.IOException -> La8
            L64:
                boolean r3 = r10.a     // Catch: java.lang.Throwable -> La5 java.io.IOException -> La8
                if (r3 == 0) goto L6a
                r10.f5667f = r1     // Catch: java.lang.Throwable -> La5 java.io.IOException -> La8
            L6a:
                int r3 = r4.readInt()     // Catch: java.lang.Throwable -> La5 java.io.IOException -> La8
                r5 = 0
                r6 = 0
            L70:
                if (r5 >= r3) goto L8a
                f.i.a.a.l1.k0.m r7 = r10.j(r0, r4)     // Catch: java.lang.Throwable -> La5 java.io.IOException -> La8
                java.lang.String r8 = r7.b     // Catch: java.lang.Throwable -> La5 java.io.IOException -> La8
                r11.put(r8, r7)     // Catch: java.lang.Throwable -> La5 java.io.IOException -> La8
                int r8 = r7.a     // Catch: java.lang.Throwable -> La5 java.io.IOException -> La8
                java.lang.String r9 = r7.b     // Catch: java.lang.Throwable -> La5 java.io.IOException -> La8
                r12.put(r8, r9)     // Catch: java.lang.Throwable -> La5 java.io.IOException -> La8
                int r7 = r10.i(r7, r0)     // Catch: java.lang.Throwable -> La5 java.io.IOException -> La8
                int r6 = r6 + r7
                int r5 = r5 + 1
                goto L70
            L8a:
                int r0 = r4.readInt()     // Catch: java.lang.Throwable -> La5 java.io.IOException -> La8
                int r3 = r4.read()     // Catch: java.lang.Throwable -> La5 java.io.IOException -> La8
                r5 = -1
                if (r3 != r5) goto L97
                r3 = 1
                goto L98
            L97:
                r3 = 0
            L98:
                if (r0 != r6) goto La1
                if (r3 != 0) goto L9d
                goto La1
            L9d:
                f.i.a.a.m1.h0.l(r4)
                goto Lb8
            La1:
                f.i.a.a.m1.h0.l(r4)
                goto Lb7
            La5:
                r11 = move-exception
                r0 = r4
                goto Lab
            La8:
                r0 = r4
                goto Lb2
            Laa:
                r11 = move-exception
            Lab:
                if (r0 == 0) goto Lb0
                f.i.a.a.m1.h0.l(r0)
            Lb0:
                throw r11
            Lb1:
            Lb2:
                if (r0 == 0) goto Lb7
                f.i.a.a.m1.h0.l(r0)
            Lb7:
                r1 = 0
            Lb8:
                if (r1 != 0) goto Lc5
                r11.clear()
                r12.clear()
                f.i.a.a.m1.g r11 = r10.f5666e
                r11.a()
            Lc5:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.l1.k0.n.b.g(java.util.HashMap, android.util.SparseArray):void");
        }

        @Override // f.i.a.a.l1.k0.n.c
        public void h() {
            this.f5666e.a();
        }

        public final int i(m mVar, int i2) {
            int hashCode = mVar.b.hashCode() + (mVar.a * 31);
            if (i2 < 2) {
                long a = o.a(mVar.f5655d);
                return (hashCode * 31) + ((int) (a ^ (a >>> 32)));
            }
            return (hashCode * 31) + mVar.f5655d.hashCode();
        }

        public final m j(int i2, DataInputStream dataInputStream) throws IOException {
            r a;
            int readInt = dataInputStream.readInt();
            String readUTF = dataInputStream.readUTF();
            if (i2 < 2) {
                long readLong = dataInputStream.readLong();
                q qVar = new q();
                q.a(qVar, readLong);
                a = r.f5669c.a(qVar);
            } else {
                a = n.a(dataInputStream);
            }
            return new m(readInt, readUTF, a);
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
        c.a.a.b.g.h.v((bVar == null && file == null) ? false : true);
        this.a = new HashMap<>();
        this.b = new SparseArray<>();
        this.f5657c = new SparseBooleanArray();
        this.f5658d = new SparseBooleanArray();
        a aVar = bVar != null ? new a(bVar) : null;
        b bVar2 = file != null ? new b(new File(file, "cached_content_index.exi"), bArr, z) : null;
        if (aVar != null && (bVar2 == null || !z2)) {
            this.f5659e = aVar;
            this.f5660f = bVar2;
            return;
        }
        this.f5659e = bVar2;
        this.f5660f = aVar;
    }

    public static r a(DataInputStream dataInputStream) throws IOException {
        int readInt = dataInputStream.readInt();
        HashMap hashMap = new HashMap();
        for (int i2 = 0; i2 < readInt; i2++) {
            String readUTF = dataInputStream.readUTF();
            int readInt2 = dataInputStream.readInt();
            if (readInt2 >= 0) {
                int min = Math.min(readInt2, 10485760);
                byte[] bArr = h0.f5749f;
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
        m mVar = this.a.get(str);
        if (mVar == null) {
            SparseArray<String> sparseArray = this.b;
            int size = sparseArray.size();
            int i2 = 0;
            int keyAt = size == 0 ? 0 : sparseArray.keyAt(size - 1) + 1;
            if (keyAt < 0) {
                while (i2 < size && i2 == sparseArray.keyAt(i2)) {
                    i2++;
                }
                keyAt = i2;
            }
            m mVar2 = new m(keyAt, str, r.f5669c);
            this.a.put(str, mVar2);
            this.b.put(keyAt, str);
            this.f5658d.put(keyAt, true);
            this.f5659e.f(mVar2);
            return mVar2;
        }
        return mVar;
    }

    public void e(long j2) throws IOException {
        c cVar;
        this.f5659e.e(j2);
        c cVar2 = this.f5660f;
        if (cVar2 != null) {
            cVar2.e(j2);
        }
        if (!this.f5659e.b() && (cVar = this.f5660f) != null && cVar.b()) {
            this.f5660f.g(this.a, this.b);
            this.f5659e.d(this.a);
        } else {
            this.f5659e.g(this.a, this.b);
        }
        c cVar3 = this.f5660f;
        if (cVar3 != null) {
            cVar3.h();
            this.f5660f = null;
        }
    }

    public void f(String str) {
        m mVar = this.a.get(str);
        if (mVar == null || !mVar.f5654c.isEmpty() || mVar.f5656e) {
            return;
        }
        this.a.remove(str);
        int i2 = mVar.a;
        boolean z = this.f5658d.get(i2);
        this.f5659e.a(mVar, z);
        if (z) {
            this.b.remove(i2);
            this.f5658d.delete(i2);
            return;
        }
        this.b.put(i2, null);
        this.f5657c.put(i2, true);
    }

    public void g() throws IOException {
        this.f5659e.c(this.a);
        int size = this.f5657c.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.b.remove(this.f5657c.keyAt(i2));
        }
        this.f5657c.clear();
        this.f5658d.clear();
    }
}
