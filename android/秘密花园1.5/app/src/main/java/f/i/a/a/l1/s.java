package f.i.a.a.l1;

import android.content.Context;
import android.net.Uri;
import androidx.annotation.Nullable;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* compiled from: DefaultDataSource.java */
/* loaded from: classes.dex */
public final class s implements m {
    public final Context a;
    public final List<i0> b;

    /* renamed from: c  reason: collision with root package name */
    public final m f5704c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    public m f5705d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    public m f5706e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    public m f5707f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    public m f5708g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    public m f5709h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    public m f5710i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    public m f5711j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    public m f5712k;

    public s(Context context, m mVar) {
        this.a = context.getApplicationContext();
        if (mVar != null) {
            this.f5704c = mVar;
            this.b = new ArrayList();
            return;
        }
        throw null;
    }

    @Override // f.i.a.a.l1.m
    public Map<String, List<String>> a() {
        m mVar = this.f5712k;
        return mVar == null ? Collections.emptyMap() : mVar.a();
    }

    @Override // f.i.a.a.l1.m
    public long b(p pVar) throws IOException {
        c.a.a.b.g.h.v(this.f5712k == null);
        String scheme = pVar.a.getScheme();
        if (f.i.a.a.m1.h0.V(pVar.a)) {
            String path = pVar.a.getPath();
            if (path != null && path.startsWith("/android_asset/")) {
                if (this.f5706e == null) {
                    f fVar = new f(this.a);
                    this.f5706e = fVar;
                    e(fVar);
                }
                this.f5712k = this.f5706e;
            } else {
                if (this.f5705d == null) {
                    y yVar = new y();
                    this.f5705d = yVar;
                    e(yVar);
                }
                this.f5712k = this.f5705d;
            }
        } else if ("asset".equals(scheme)) {
            if (this.f5706e == null) {
                f fVar2 = new f(this.a);
                this.f5706e = fVar2;
                e(fVar2);
            }
            this.f5712k = this.f5706e;
        } else if ("content".equals(scheme)) {
            if (this.f5707f == null) {
                i iVar = new i(this.a);
                this.f5707f = iVar;
                e(iVar);
            }
            this.f5712k = this.f5707f;
        } else if ("rtmp".equals(scheme)) {
            if (this.f5708g == null) {
                try {
                    m mVar = (m) Class.forName("f.i.a.a.a1.b.a").getConstructor(new Class[0]).newInstance(new Object[0]);
                    this.f5708g = mVar;
                    e(mVar);
                } catch (ClassNotFoundException unused) {
                } catch (Exception e2) {
                    throw new RuntimeException("Error instantiating RTMP extension", e2);
                }
                if (this.f5708g == null) {
                    this.f5708g = this.f5704c;
                }
            }
            this.f5712k = this.f5708g;
        } else if ("udp".equals(scheme)) {
            if (this.f5709h == null) {
                j0 j0Var = new j0();
                this.f5709h = j0Var;
                e(j0Var);
            }
            this.f5712k = this.f5709h;
        } else if ("data".equals(scheme)) {
            if (this.f5710i == null) {
                j jVar = new j();
                this.f5710i = jVar;
                e(jVar);
            }
            this.f5712k = this.f5710i;
        } else if ("rawresource".equals(scheme)) {
            if (this.f5711j == null) {
                f0 f0Var = new f0(this.a);
                this.f5711j = f0Var;
                e(f0Var);
            }
            this.f5712k = this.f5711j;
        } else {
            this.f5712k = this.f5704c;
        }
        return this.f5712k.b(pVar);
    }

    @Override // f.i.a.a.l1.m
    public void c(i0 i0Var) {
        this.f5704c.c(i0Var);
        this.b.add(i0Var);
        m mVar = this.f5705d;
        if (mVar != null) {
            mVar.c(i0Var);
        }
        m mVar2 = this.f5706e;
        if (mVar2 != null) {
            mVar2.c(i0Var);
        }
        m mVar3 = this.f5707f;
        if (mVar3 != null) {
            mVar3.c(i0Var);
        }
        m mVar4 = this.f5708g;
        if (mVar4 != null) {
            mVar4.c(i0Var);
        }
        m mVar5 = this.f5709h;
        if (mVar5 != null) {
            mVar5.c(i0Var);
        }
        m mVar6 = this.f5710i;
        if (mVar6 != null) {
            mVar6.c(i0Var);
        }
        m mVar7 = this.f5711j;
        if (mVar7 != null) {
            mVar7.c(i0Var);
        }
    }

    @Override // f.i.a.a.l1.m
    public void close() throws IOException {
        m mVar = this.f5712k;
        if (mVar != null) {
            try {
                mVar.close();
            } finally {
                this.f5712k = null;
            }
        }
    }

    @Override // f.i.a.a.l1.m
    @Nullable
    public Uri d() {
        m mVar = this.f5712k;
        if (mVar == null) {
            return null;
        }
        return mVar.d();
    }

    public final void e(m mVar) {
        for (int i2 = 0; i2 < this.b.size(); i2++) {
            mVar.c(this.b.get(i2));
        }
    }

    @Override // f.i.a.a.l1.m
    public int read(byte[] bArr, int i2, int i3) throws IOException {
        m mVar = this.f5712k;
        c.a.a.b.g.h.t(mVar);
        return mVar.read(bArr, i2, i3);
    }
}
