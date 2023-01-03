package com.umeng.commonsdk.statistics.proto;

import androidx.core.app.NotificationCompat;
import com.umeng.commonsdk.proguard.aa;
import com.umeng.commonsdk.proguard.ac;
import com.umeng.commonsdk.proguard.ad;
import com.umeng.commonsdk.proguard.ai;
import com.umeng.commonsdk.proguard.aj;
import com.umeng.commonsdk.proguard.al;
import com.umeng.commonsdk.proguard.an;
import com.umeng.commonsdk.proguard.ao;
import com.umeng.commonsdk.proguard.aq;
import com.umeng.commonsdk.proguard.ar;
import com.umeng.commonsdk.proguard.as;
import com.umeng.commonsdk.proguard.at;
import com.umeng.commonsdk.proguard.au;
import com.umeng.commonsdk.proguard.g;
import com.umeng.commonsdk.proguard.j;
import com.umeng.commonsdk.proguard.p;
import com.umeng.commonsdk.proguard.q;
import com.umeng.commonsdk.proguard.v;
import com.umeng.commonsdk.proguard.w;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.BitSet;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public class Response implements j<Response, e>, Serializable, Cloneable {
    public static final int __RESP_CODE_ISSET_ID = 0;
    public static final Map<e, v> metaDataMap;
    public static final Map<Class<? extends aq>, ar> schemes;
    public static final long serialVersionUID = -4549277923241195391L;
    public byte __isset_bitfield;
    public d imprint;
    public String msg;
    public e[] optionals;
    public int resp_code;
    public static final an STRUCT_DESC = new an("Response");
    public static final ad RESP_CODE_FIELD_DESC = new ad("resp_code", (byte) 8, 1);
    public static final ad MSG_FIELD_DESC = new ad(NotificationCompat.CATEGORY_MESSAGE, (byte) 11, 2);
    public static final ad IMPRINT_FIELD_DESC = new ad(com.umeng.commonsdk.proguard.e.U, (byte) 12, 3);

    /* loaded from: classes.dex */
    public static class a extends as<Response> {
        public a() {
        }

        /* renamed from: a */
        public void b(ai aiVar, Response response) throws p {
            aiVar.j();
            while (true) {
                ad l2 = aiVar.l();
                byte b = l2.b;
                if (b == 0) {
                    break;
                }
                short s = l2.f3019c;
                if (s != 1) {
                    if (s != 2) {
                        if (s != 3) {
                            al.a(aiVar, b);
                        } else if (b == 12) {
                            d dVar = new d();
                            response.imprint = dVar;
                            dVar.read(aiVar);
                            response.setImprintIsSet(true);
                        } else {
                            al.a(aiVar, b);
                        }
                    } else if (b == 11) {
                        response.msg = aiVar.z();
                        response.setMsgIsSet(true);
                    } else {
                        al.a(aiVar, b);
                    }
                } else if (b == 8) {
                    response.resp_code = aiVar.w();
                    response.setResp_codeIsSet(true);
                } else {
                    al.a(aiVar, b);
                }
                aiVar.m();
            }
            aiVar.k();
            if (response.isSetResp_code()) {
                response.validate();
                return;
            }
            StringBuilder o = f.b.a.a.a.o("Required field 'resp_code' was not found in serialized data! Struct: ");
            o.append(toString());
            throw new aj(o.toString());
        }

        /* renamed from: b */
        public void a(ai aiVar, Response response) throws p {
            response.validate();
            aiVar.a(Response.STRUCT_DESC);
            aiVar.a(Response.RESP_CODE_FIELD_DESC);
            aiVar.a(response.resp_code);
            aiVar.c();
            if (response.msg != null && response.isSetMsg()) {
                aiVar.a(Response.MSG_FIELD_DESC);
                aiVar.a(response.msg);
                aiVar.c();
            }
            if (response.imprint != null && response.isSetImprint()) {
                aiVar.a(Response.IMPRINT_FIELD_DESC);
                response.imprint.write(aiVar);
                aiVar.c();
            }
            aiVar.d();
            aiVar.b();
        }
    }

    /* loaded from: classes.dex */
    public static class b implements ar {
        public b() {
        }

        /* renamed from: a */
        public a b() {
            return new a();
        }
    }

    /* loaded from: classes.dex */
    public static class c extends at<Response> {
        public c() {
        }

        public void a(ai aiVar, Response response) throws p {
            ao aoVar = (ao) aiVar;
            aoVar.a(response.resp_code);
            BitSet bitSet = new BitSet();
            if (response.isSetMsg()) {
                bitSet.set(0);
            }
            if (response.isSetImprint()) {
                bitSet.set(1);
            }
            aoVar.a(bitSet, 2);
            if (response.isSetMsg()) {
                aoVar.a(response.msg);
            }
            if (response.isSetImprint()) {
                response.imprint.write(aoVar);
            }
        }

        public void b(ai aiVar, Response response) throws p {
            ao aoVar = (ao) aiVar;
            response.resp_code = aoVar.w();
            response.setResp_codeIsSet(true);
            BitSet b = aoVar.b(2);
            if (b.get(0)) {
                response.msg = aoVar.z();
                response.setMsgIsSet(true);
            }
            if (b.get(1)) {
                d dVar = new d();
                response.imprint = dVar;
                dVar.read(aoVar);
                response.setImprintIsSet(true);
            }
        }
    }

    /* loaded from: classes.dex */
    public static class d implements ar {
        public d() {
        }

        /* renamed from: a */
        public c b() {
            return new c();
        }
    }

    static {
        HashMap hashMap = new HashMap();
        schemes = hashMap;
        hashMap.put(as.class, new b());
        schemes.put(at.class, new d());
        EnumMap enumMap = new EnumMap(e.class);
        enumMap.put((EnumMap) e.RESP_CODE, (e) new v("resp_code", (byte) 1, new w((byte) 8)));
        enumMap.put((EnumMap) e.MSG, (e) new v(NotificationCompat.CATEGORY_MESSAGE, (byte) 2, new w((byte) 11)));
        enumMap.put((EnumMap) e.IMPRINT, (e) new v(com.umeng.commonsdk.proguard.e.U, (byte) 2, new aa((byte) 12, d.class)));
        Map<e, v> unmodifiableMap = Collections.unmodifiableMap(enumMap);
        metaDataMap = unmodifiableMap;
        v.a(Response.class, unmodifiableMap);
    }

    public Response() {
        this.__isset_bitfield = 0;
        this.optionals = new e[]{e.MSG, e.IMPRINT};
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        try {
            this.__isset_bitfield = 0;
            read(new ac(new au(objectInputStream)));
        } catch (p e2) {
            throw new IOException(e2.getMessage());
        }
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        try {
            write(new ac(new au(objectOutputStream)));
        } catch (p e2) {
            throw new IOException(e2.getMessage());
        }
    }

    @Override // com.umeng.commonsdk.proguard.j
    public void clear() {
        setResp_codeIsSet(false);
        this.resp_code = 0;
        this.msg = null;
        this.imprint = null;
    }

    public d getImprint() {
        return this.imprint;
    }

    public String getMsg() {
        return this.msg;
    }

    public int getResp_code() {
        return this.resp_code;
    }

    public boolean isSetImprint() {
        return this.imprint != null;
    }

    public boolean isSetMsg() {
        return this.msg != null;
    }

    public boolean isSetResp_code() {
        return g.a(this.__isset_bitfield, 0);
    }

    @Override // com.umeng.commonsdk.proguard.j
    public void read(ai aiVar) throws p {
        schemes.get(aiVar.D()).b().b(aiVar, this);
    }

    public Response setImprint(d dVar) {
        this.imprint = dVar;
        return this;
    }

    public void setImprintIsSet(boolean z) {
        if (!z) {
            this.imprint = null;
        }
    }

    public Response setMsg(String str) {
        this.msg = str;
        return this;
    }

    public void setMsgIsSet(boolean z) {
        if (!z) {
            this.msg = null;
        }
    }

    public Response setResp_code(int i2) {
        this.resp_code = i2;
        setResp_codeIsSet(true);
        return this;
    }

    public void setResp_codeIsSet(boolean z) {
        this.__isset_bitfield = g.a(this.__isset_bitfield, 0, z);
    }

    @Override // java.lang.Object
    public String toString() {
        StringBuilder q = f.b.a.a.a.q("Response(", "resp_code:");
        q.append(this.resp_code);
        if (isSetMsg()) {
            q.append(", ");
            q.append("msg:");
            String str = this.msg;
            if (str == null) {
                q.append("null");
            } else {
                q.append(str);
            }
        }
        if (isSetImprint()) {
            q.append(", ");
            q.append("imprint:");
            d dVar = this.imprint;
            if (dVar == null) {
                q.append("null");
            } else {
                q.append(dVar);
            }
        }
        q.append(")");
        return q.toString();
    }

    public void unsetImprint() {
        this.imprint = null;
    }

    public void unsetMsg() {
        this.msg = null;
    }

    public void unsetResp_code() {
        this.__isset_bitfield = g.b(this.__isset_bitfield, 0);
    }

    public void validate() throws p {
        d dVar = this.imprint;
        if (dVar != null) {
            dVar.l();
        }
    }

    @Override // com.umeng.commonsdk.proguard.j
    public void write(ai aiVar) throws p {
        schemes.get(aiVar.D()).b().a(aiVar, this);
    }

    /* loaded from: classes.dex */
    public enum e implements q {
        RESP_CODE(1, "resp_code"),
        MSG(2, NotificationCompat.CATEGORY_MESSAGE),
        IMPRINT(3, com.umeng.commonsdk.proguard.e.U);
        

        /* renamed from: d  reason: collision with root package name */
        public static final Map<String, e> f3223d = new HashMap();

        /* renamed from: e  reason: collision with root package name */
        public final short f3225e;

        /* renamed from: f  reason: collision with root package name */
        public final String f3226f;

        static {
            Iterator it = EnumSet.allOf(e.class).iterator();
            while (it.hasNext()) {
                e eVar = (e) it.next();
                f3223d.put(eVar.b(), eVar);
            }
        }

        e(short s, String str) {
            this.f3225e = s;
            this.f3226f = str;
        }

        public static e a(int i2) {
            if (i2 == 1) {
                return RESP_CODE;
            }
            if (i2 == 2) {
                return MSG;
            }
            if (i2 != 3) {
                return null;
            }
            return IMPRINT;
        }

        public static e b(int i2) {
            e a = a(i2);
            if (a != null) {
                return a;
            }
            throw new IllegalArgumentException(f.b.a.a.a.K("Field ", i2, " doesn't exist!"));
        }

        @Override // com.umeng.commonsdk.proguard.q
        public String b() {
            return this.f3226f;
        }

        public static e a(String str) {
            return f3223d.get(str);
        }

        @Override // com.umeng.commonsdk.proguard.q
        public short a() {
            return this.f3225e;
        }
    }

    /* Return type fixed from 'com.umeng.commonsdk.statistics.proto.Response' to match base method */
    @Override // com.umeng.commonsdk.proguard.j
    public j<Response, e> deepCopy() {
        return new Response(this);
    }

    @Override // com.umeng.commonsdk.proguard.j
    public e fieldForId(int i2) {
        return e.a(i2);
    }

    public Response(int i2) {
        this();
        this.resp_code = i2;
        setResp_codeIsSet(true);
    }

    public Response(Response response) {
        this.__isset_bitfield = 0;
        this.optionals = new e[]{e.MSG, e.IMPRINT};
        this.__isset_bitfield = response.__isset_bitfield;
        this.resp_code = response.resp_code;
        if (response.isSetMsg()) {
            this.msg = response.msg;
        }
        if (response.isSetImprint()) {
            this.imprint = new d(response.imprint);
        }
    }
}
