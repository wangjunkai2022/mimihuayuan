package f.i.b.c0.a0;

import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.net.InetAddress;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Calendar;
import java.util.Currency;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.StringTokenizer;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicIntegerArray;

/* compiled from: TypeAdapters.java */
/* loaded from: classes.dex */
public final class o {
    public static final f.i.b.z<String> A;
    public static final f.i.b.z<BigDecimal> B;
    public static final f.i.b.z<BigInteger> C;
    public static final f.i.b.a0 D;
    public static final f.i.b.z<StringBuilder> E;
    public static final f.i.b.a0 F;
    public static final f.i.b.z<StringBuffer> G;
    public static final f.i.b.a0 H;
    public static final f.i.b.z<URL> I;
    public static final f.i.b.a0 J;
    public static final f.i.b.z<URI> K;
    public static final f.i.b.a0 L;
    public static final f.i.b.z<InetAddress> M;
    public static final f.i.b.a0 N;
    public static final f.i.b.z<UUID> O;
    public static final f.i.b.a0 P;
    public static final f.i.b.z<Currency> Q;
    public static final f.i.b.a0 R;
    public static final f.i.b.a0 S;
    public static final f.i.b.z<Calendar> T;
    public static final f.i.b.a0 U;
    public static final f.i.b.z<Locale> V;
    public static final f.i.b.a0 W;
    public static final f.i.b.z<f.i.b.o> X;
    public static final f.i.b.a0 Y;
    public static final f.i.b.a0 Z;
    public static final f.i.b.z<Class> a;
    public static final f.i.b.a0 b;

    /* renamed from: c  reason: collision with root package name */
    public static final f.i.b.z<BitSet> f6105c;

    /* renamed from: d  reason: collision with root package name */
    public static final f.i.b.a0 f6106d;

    /* renamed from: e  reason: collision with root package name */
    public static final f.i.b.z<Boolean> f6107e;

    /* renamed from: f  reason: collision with root package name */
    public static final f.i.b.z<Boolean> f6108f;

    /* renamed from: g  reason: collision with root package name */
    public static final f.i.b.a0 f6109g;

    /* renamed from: h  reason: collision with root package name */
    public static final f.i.b.z<Number> f6110h;

    /* renamed from: i  reason: collision with root package name */
    public static final f.i.b.a0 f6111i;

    /* renamed from: j  reason: collision with root package name */
    public static final f.i.b.z<Number> f6112j;

    /* renamed from: k  reason: collision with root package name */
    public static final f.i.b.a0 f6113k;

    /* renamed from: l  reason: collision with root package name */
    public static final f.i.b.z<Number> f6114l;

    /* renamed from: m  reason: collision with root package name */
    public static final f.i.b.a0 f6115m;
    public static final f.i.b.z<AtomicInteger> n;
    public static final f.i.b.a0 o;
    public static final f.i.b.z<AtomicBoolean> p;
    public static final f.i.b.a0 q;
    public static final f.i.b.z<AtomicIntegerArray> r;
    public static final f.i.b.a0 s;
    public static final f.i.b.z<Number> t;
    public static final f.i.b.z<Number> u;
    public static final f.i.b.z<Number> v;
    public static final f.i.b.z<Number> w;
    public static final f.i.b.a0 x;
    public static final f.i.b.z<Character> y;
    public static final f.i.b.a0 z;

    /* compiled from: TypeAdapters.java */
    /* loaded from: classes.dex */
    public static class a extends f.i.b.z<AtomicIntegerArray> {
        @Override // f.i.b.z
        public AtomicIntegerArray a(f.i.b.e0.a aVar) throws IOException {
            ArrayList arrayList = new ArrayList();
            aVar.d();
            while (aVar.I()) {
                try {
                    arrayList.add(Integer.valueOf(aVar.N()));
                } catch (NumberFormatException e2) {
                    throw new f.i.b.w(e2);
                }
            }
            aVar.E();
            int size = arrayList.size();
            AtomicIntegerArray atomicIntegerArray = new AtomicIntegerArray(size);
            for (int i2 = 0; i2 < size; i2++) {
                atomicIntegerArray.set(i2, ((Integer) arrayList.get(i2)).intValue());
            }
            return atomicIntegerArray;
        }

        @Override // f.i.b.z
        public void b(f.i.b.e0.c cVar, AtomicIntegerArray atomicIntegerArray) throws IOException {
            AtomicIntegerArray atomicIntegerArray2 = atomicIntegerArray;
            cVar.e();
            int length = atomicIntegerArray2.length();
            for (int i2 = 0; i2 < length; i2++) {
                cVar.N(atomicIntegerArray2.get(i2));
            }
            cVar.E();
        }
    }

    /* compiled from: TypeAdapters.java */
    /* loaded from: classes.dex */
    public static class a0 extends f.i.b.z<Number> {
        @Override // f.i.b.z
        public Number a(f.i.b.e0.a aVar) throws IOException {
            if (aVar.V() == f.i.b.e0.b.NULL) {
                aVar.R();
                return null;
            }
            try {
                return Short.valueOf((short) aVar.N());
            } catch (NumberFormatException e2) {
                throw new f.i.b.w(e2);
            }
        }

        @Override // f.i.b.z
        public void b(f.i.b.e0.c cVar, Number number) throws IOException {
            cVar.P(number);
        }
    }

    /* compiled from: TypeAdapters.java */
    /* loaded from: classes.dex */
    public static class b extends f.i.b.z<Number> {
        @Override // f.i.b.z
        public Number a(f.i.b.e0.a aVar) throws IOException {
            if (aVar.V() == f.i.b.e0.b.NULL) {
                aVar.R();
                return null;
            }
            try {
                return Long.valueOf(aVar.O());
            } catch (NumberFormatException e2) {
                throw new f.i.b.w(e2);
            }
        }

        @Override // f.i.b.z
        public void b(f.i.b.e0.c cVar, Number number) throws IOException {
            cVar.P(number);
        }
    }

    /* compiled from: TypeAdapters.java */
    /* loaded from: classes.dex */
    public static class b0 extends f.i.b.z<Number> {
        @Override // f.i.b.z
        public Number a(f.i.b.e0.a aVar) throws IOException {
            if (aVar.V() == f.i.b.e0.b.NULL) {
                aVar.R();
                return null;
            }
            try {
                return Integer.valueOf(aVar.N());
            } catch (NumberFormatException e2) {
                throw new f.i.b.w(e2);
            }
        }

        @Override // f.i.b.z
        public void b(f.i.b.e0.c cVar, Number number) throws IOException {
            cVar.P(number);
        }
    }

    /* compiled from: TypeAdapters.java */
    /* loaded from: classes.dex */
    public static class c extends f.i.b.z<Number> {
        @Override // f.i.b.z
        public Number a(f.i.b.e0.a aVar) throws IOException {
            if (aVar.V() == f.i.b.e0.b.NULL) {
                aVar.R();
                return null;
            }
            return Float.valueOf((float) aVar.M());
        }

        @Override // f.i.b.z
        public void b(f.i.b.e0.c cVar, Number number) throws IOException {
            cVar.P(number);
        }
    }

    /* compiled from: TypeAdapters.java */
    /* loaded from: classes.dex */
    public static class c0 extends f.i.b.z<AtomicInteger> {
        @Override // f.i.b.z
        public AtomicInteger a(f.i.b.e0.a aVar) throws IOException {
            try {
                return new AtomicInteger(aVar.N());
            } catch (NumberFormatException e2) {
                throw new f.i.b.w(e2);
            }
        }

        @Override // f.i.b.z
        public void b(f.i.b.e0.c cVar, AtomicInteger atomicInteger) throws IOException {
            cVar.N(atomicInteger.get());
        }
    }

    /* compiled from: TypeAdapters.java */
    /* loaded from: classes.dex */
    public static class d extends f.i.b.z<Number> {
        @Override // f.i.b.z
        public Number a(f.i.b.e0.a aVar) throws IOException {
            if (aVar.V() == f.i.b.e0.b.NULL) {
                aVar.R();
                return null;
            }
            return Double.valueOf(aVar.M());
        }

        @Override // f.i.b.z
        public void b(f.i.b.e0.c cVar, Number number) throws IOException {
            cVar.P(number);
        }
    }

    /* compiled from: TypeAdapters.java */
    /* loaded from: classes.dex */
    public static class d0 extends f.i.b.z<AtomicBoolean> {
        @Override // f.i.b.z
        public AtomicBoolean a(f.i.b.e0.a aVar) throws IOException {
            return new AtomicBoolean(aVar.L());
        }

        @Override // f.i.b.z
        public void b(f.i.b.e0.c cVar, AtomicBoolean atomicBoolean) throws IOException {
            cVar.R(atomicBoolean.get());
        }
    }

    /* compiled from: TypeAdapters.java */
    /* loaded from: classes.dex */
    public static class e extends f.i.b.z<Number> {
        @Override // f.i.b.z
        public Number a(f.i.b.e0.a aVar) throws IOException {
            f.i.b.e0.b V = aVar.V();
            int ordinal = V.ordinal();
            if (ordinal == 5 || ordinal == 6) {
                return new f.i.b.c0.r(aVar.T());
            }
            if (ordinal == 8) {
                aVar.R();
                return null;
            }
            throw new f.i.b.w("Expecting number, got: " + V);
        }

        @Override // f.i.b.z
        public void b(f.i.b.e0.c cVar, Number number) throws IOException {
            cVar.P(number);
        }
    }

    /* compiled from: TypeAdapters.java */
    /* loaded from: classes.dex */
    public static final class e0<T extends Enum<T>> extends f.i.b.z<T> {
        public final Map<String, T> a = new HashMap();
        public final Map<T, String> b = new HashMap();

        public e0(Class<T> cls) {
            T[] enumConstants;
            try {
                for (T t : cls.getEnumConstants()) {
                    String name = t.name();
                    f.i.b.b0.b bVar = (f.i.b.b0.b) cls.getField(name).getAnnotation(f.i.b.b0.b.class);
                    if (bVar != null) {
                        name = bVar.value();
                        for (String str : bVar.alternate()) {
                            this.a.put(str, t);
                        }
                    }
                    this.a.put(name, t);
                    this.b.put(t, name);
                }
            } catch (NoSuchFieldException e2) {
                throw new AssertionError(e2);
            }
        }

        @Override // f.i.b.z
        public Object a(f.i.b.e0.a aVar) throws IOException {
            if (aVar.V() == f.i.b.e0.b.NULL) {
                aVar.R();
                return null;
            }
            return this.a.get(aVar.T());
        }

        @Override // f.i.b.z
        public void b(f.i.b.e0.c cVar, Object obj) throws IOException {
            Enum r3 = (Enum) obj;
            cVar.Q(r3 == null ? null : this.b.get(r3));
        }
    }

    /* compiled from: TypeAdapters.java */
    /* loaded from: classes.dex */
    public static class f extends f.i.b.z<Character> {
        @Override // f.i.b.z
        public Character a(f.i.b.e0.a aVar) throws IOException {
            if (aVar.V() == f.i.b.e0.b.NULL) {
                aVar.R();
                return null;
            }
            String T = aVar.T();
            if (T.length() == 1) {
                return Character.valueOf(T.charAt(0));
            }
            throw new f.i.b.w(f.b.a.a.a.f("Expecting character, got: ", T));
        }

        @Override // f.i.b.z
        public void b(f.i.b.e0.c cVar, Character ch) throws IOException {
            Character ch2 = ch;
            cVar.Q(ch2 == null ? null : String.valueOf(ch2));
        }
    }

    /* compiled from: TypeAdapters.java */
    /* loaded from: classes.dex */
    public static class g extends f.i.b.z<String> {
        @Override // f.i.b.z
        public String a(f.i.b.e0.a aVar) throws IOException {
            f.i.b.e0.b V = aVar.V();
            if (V == f.i.b.e0.b.NULL) {
                aVar.R();
                return null;
            } else if (V == f.i.b.e0.b.BOOLEAN) {
                return Boolean.toString(aVar.L());
            } else {
                return aVar.T();
            }
        }

        @Override // f.i.b.z
        public void b(f.i.b.e0.c cVar, String str) throws IOException {
            cVar.Q(str);
        }
    }

    /* compiled from: TypeAdapters.java */
    /* loaded from: classes.dex */
    public static class h extends f.i.b.z<BigDecimal> {
        @Override // f.i.b.z
        public BigDecimal a(f.i.b.e0.a aVar) throws IOException {
            if (aVar.V() == f.i.b.e0.b.NULL) {
                aVar.R();
                return null;
            }
            try {
                return new BigDecimal(aVar.T());
            } catch (NumberFormatException e2) {
                throw new f.i.b.w(e2);
            }
        }

        @Override // f.i.b.z
        public void b(f.i.b.e0.c cVar, BigDecimal bigDecimal) throws IOException {
            cVar.P(bigDecimal);
        }
    }

    /* compiled from: TypeAdapters.java */
    /* loaded from: classes.dex */
    public static class i extends f.i.b.z<BigInteger> {
        @Override // f.i.b.z
        public BigInteger a(f.i.b.e0.a aVar) throws IOException {
            if (aVar.V() == f.i.b.e0.b.NULL) {
                aVar.R();
                return null;
            }
            try {
                return new BigInteger(aVar.T());
            } catch (NumberFormatException e2) {
                throw new f.i.b.w(e2);
            }
        }

        @Override // f.i.b.z
        public void b(f.i.b.e0.c cVar, BigInteger bigInteger) throws IOException {
            cVar.P(bigInteger);
        }
    }

    /* compiled from: TypeAdapters.java */
    /* loaded from: classes.dex */
    public static class j extends f.i.b.z<StringBuilder> {
        @Override // f.i.b.z
        public StringBuilder a(f.i.b.e0.a aVar) throws IOException {
            if (aVar.V() == f.i.b.e0.b.NULL) {
                aVar.R();
                return null;
            }
            return new StringBuilder(aVar.T());
        }

        @Override // f.i.b.z
        public void b(f.i.b.e0.c cVar, StringBuilder sb) throws IOException {
            StringBuilder sb2 = sb;
            cVar.Q(sb2 == null ? null : sb2.toString());
        }
    }

    /* compiled from: TypeAdapters.java */
    /* loaded from: classes.dex */
    public static class k extends f.i.b.z<Class> {
        @Override // f.i.b.z
        public Class a(f.i.b.e0.a aVar) throws IOException {
            throw new UnsupportedOperationException("Attempted to deserialize a java.lang.Class. Forgot to register a type adapter?");
        }

        @Override // f.i.b.z
        public void b(f.i.b.e0.c cVar, Class cls) throws IOException {
            StringBuilder o = f.b.a.a.a.o("Attempted to serialize java.lang.Class: ");
            o.append(cls.getName());
            o.append(". Forgot to register a type adapter?");
            throw new UnsupportedOperationException(o.toString());
        }
    }

    /* compiled from: TypeAdapters.java */
    /* loaded from: classes.dex */
    public static class l extends f.i.b.z<StringBuffer> {
        @Override // f.i.b.z
        public StringBuffer a(f.i.b.e0.a aVar) throws IOException {
            if (aVar.V() == f.i.b.e0.b.NULL) {
                aVar.R();
                return null;
            }
            return new StringBuffer(aVar.T());
        }

        @Override // f.i.b.z
        public void b(f.i.b.e0.c cVar, StringBuffer stringBuffer) throws IOException {
            StringBuffer stringBuffer2 = stringBuffer;
            cVar.Q(stringBuffer2 == null ? null : stringBuffer2.toString());
        }
    }

    /* compiled from: TypeAdapters.java */
    /* loaded from: classes.dex */
    public static class m extends f.i.b.z<URL> {
        @Override // f.i.b.z
        public URL a(f.i.b.e0.a aVar) throws IOException {
            if (aVar.V() == f.i.b.e0.b.NULL) {
                aVar.R();
                return null;
            }
            String T = aVar.T();
            if ("null".equals(T)) {
                return null;
            }
            return new URL(T);
        }

        @Override // f.i.b.z
        public void b(f.i.b.e0.c cVar, URL url) throws IOException {
            URL url2 = url;
            cVar.Q(url2 == null ? null : url2.toExternalForm());
        }
    }

    /* compiled from: TypeAdapters.java */
    /* loaded from: classes.dex */
    public static class n extends f.i.b.z<URI> {
        @Override // f.i.b.z
        public URI a(f.i.b.e0.a aVar) throws IOException {
            if (aVar.V() == f.i.b.e0.b.NULL) {
                aVar.R();
                return null;
            }
            try {
                String T = aVar.T();
                if ("null".equals(T)) {
                    return null;
                }
                return new URI(T);
            } catch (URISyntaxException e2) {
                throw new f.i.b.p(e2);
            }
        }

        @Override // f.i.b.z
        public void b(f.i.b.e0.c cVar, URI uri) throws IOException {
            URI uri2 = uri;
            cVar.Q(uri2 == null ? null : uri2.toASCIIString());
        }
    }

    /* compiled from: TypeAdapters.java */
    /* renamed from: f.i.b.c0.a0.o$o  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0095o extends f.i.b.z<InetAddress> {
        @Override // f.i.b.z
        public InetAddress a(f.i.b.e0.a aVar) throws IOException {
            if (aVar.V() == f.i.b.e0.b.NULL) {
                aVar.R();
                return null;
            }
            return InetAddress.getByName(aVar.T());
        }

        @Override // f.i.b.z
        public void b(f.i.b.e0.c cVar, InetAddress inetAddress) throws IOException {
            InetAddress inetAddress2 = inetAddress;
            cVar.Q(inetAddress2 == null ? null : inetAddress2.getHostAddress());
        }
    }

    /* compiled from: TypeAdapters.java */
    /* loaded from: classes.dex */
    public static class p extends f.i.b.z<UUID> {
        @Override // f.i.b.z
        public UUID a(f.i.b.e0.a aVar) throws IOException {
            if (aVar.V() == f.i.b.e0.b.NULL) {
                aVar.R();
                return null;
            }
            return UUID.fromString(aVar.T());
        }

        @Override // f.i.b.z
        public void b(f.i.b.e0.c cVar, UUID uuid) throws IOException {
            UUID uuid2 = uuid;
            cVar.Q(uuid2 == null ? null : uuid2.toString());
        }
    }

    /* compiled from: TypeAdapters.java */
    /* loaded from: classes.dex */
    public static class q extends f.i.b.z<Currency> {
        @Override // f.i.b.z
        public Currency a(f.i.b.e0.a aVar) throws IOException {
            return Currency.getInstance(aVar.T());
        }

        @Override // f.i.b.z
        public void b(f.i.b.e0.c cVar, Currency currency) throws IOException {
            cVar.Q(currency.getCurrencyCode());
        }
    }

    /* compiled from: TypeAdapters.java */
    /* loaded from: classes.dex */
    public static class r implements f.i.b.a0 {

        /* compiled from: TypeAdapters.java */
        /* loaded from: classes.dex */
        public class a extends f.i.b.z<Timestamp> {
            public final /* synthetic */ f.i.b.z a;

            public a(r rVar, f.i.b.z zVar) {
                this.a = zVar;
            }

            @Override // f.i.b.z
            public Timestamp a(f.i.b.e0.a aVar) throws IOException {
                Date date = (Date) this.a.a(aVar);
                if (date != null) {
                    return new Timestamp(date.getTime());
                }
                return null;
            }

            @Override // f.i.b.z
            public void b(f.i.b.e0.c cVar, Timestamp timestamp) throws IOException {
                this.a.b(cVar, timestamp);
            }
        }

        @Override // f.i.b.a0
        public <T> f.i.b.z<T> a(f.i.b.j jVar, f.i.b.d0.a<T> aVar) {
            if (aVar.a != Timestamp.class) {
                return null;
            }
            if (jVar != null) {
                return new a(this, jVar.f(new f.i.b.d0.a<>(Date.class)));
            }
            throw null;
        }
    }

    /* compiled from: TypeAdapters.java */
    /* loaded from: classes.dex */
    public static class s extends f.i.b.z<Calendar> {
        @Override // f.i.b.z
        public Calendar a(f.i.b.e0.a aVar) throws IOException {
            if (aVar.V() == f.i.b.e0.b.NULL) {
                aVar.R();
                return null;
            }
            aVar.e();
            int i2 = 0;
            int i3 = 0;
            int i4 = 0;
            int i5 = 0;
            int i6 = 0;
            int i7 = 0;
            while (aVar.V() != f.i.b.e0.b.END_OBJECT) {
                String P = aVar.P();
                int N = aVar.N();
                if ("year".equals(P)) {
                    i2 = N;
                } else if ("month".equals(P)) {
                    i3 = N;
                } else if ("dayOfMonth".equals(P)) {
                    i4 = N;
                } else if ("hourOfDay".equals(P)) {
                    i5 = N;
                } else if ("minute".equals(P)) {
                    i6 = N;
                } else if ("second".equals(P)) {
                    i7 = N;
                }
            }
            aVar.F();
            return new GregorianCalendar(i2, i3, i4, i5, i6, i7);
        }

        @Override // f.i.b.z
        public void b(f.i.b.e0.c cVar, Calendar calendar) throws IOException {
            Calendar calendar2 = calendar;
            if (calendar2 == null) {
                cVar.I();
                return;
            }
            cVar.f();
            cVar.G("year");
            cVar.N(calendar2.get(1));
            cVar.G("month");
            cVar.N(calendar2.get(2));
            cVar.G("dayOfMonth");
            cVar.N(calendar2.get(5));
            cVar.G("hourOfDay");
            cVar.N(calendar2.get(11));
            cVar.G("minute");
            cVar.N(calendar2.get(12));
            cVar.G("second");
            cVar.N(calendar2.get(13));
            cVar.F();
        }
    }

    /* compiled from: TypeAdapters.java */
    /* loaded from: classes.dex */
    public static class t extends f.i.b.z<Locale> {
        @Override // f.i.b.z
        public Locale a(f.i.b.e0.a aVar) throws IOException {
            if (aVar.V() == f.i.b.e0.b.NULL) {
                aVar.R();
                return null;
            }
            StringTokenizer stringTokenizer = new StringTokenizer(aVar.T(), "_");
            String nextToken = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
            String nextToken2 = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
            String nextToken3 = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
            if (nextToken2 == null && nextToken3 == null) {
                return new Locale(nextToken);
            }
            if (nextToken3 == null) {
                return new Locale(nextToken, nextToken2);
            }
            return new Locale(nextToken, nextToken2, nextToken3);
        }

        @Override // f.i.b.z
        public void b(f.i.b.e0.c cVar, Locale locale) throws IOException {
            Locale locale2 = locale;
            cVar.Q(locale2 == null ? null : locale2.toString());
        }
    }

    /* compiled from: TypeAdapters.java */
    /* loaded from: classes.dex */
    public static class u extends f.i.b.z<f.i.b.o> {
        @Override // f.i.b.z
        /* renamed from: c */
        public f.i.b.o a(f.i.b.e0.a aVar) throws IOException {
            int ordinal = aVar.V().ordinal();
            if (ordinal == 0) {
                f.i.b.l lVar = new f.i.b.l();
                aVar.d();
                while (aVar.I()) {
                    lVar.a.add(a(aVar));
                }
                aVar.E();
                return lVar;
            } else if (ordinal == 2) {
                f.i.b.r rVar = new f.i.b.r();
                aVar.e();
                while (aVar.I()) {
                    rVar.c(aVar.P(), a(aVar));
                }
                aVar.F();
                return rVar;
            } else if (ordinal != 5) {
                if (ordinal != 6) {
                    if (ordinal != 7) {
                        if (ordinal == 8) {
                            aVar.R();
                            return f.i.b.q.a;
                        }
                        throw new IllegalArgumentException();
                    }
                    return new f.i.b.t(Boolean.valueOf(aVar.L()));
                }
                return new f.i.b.t((Number) new f.i.b.c0.r(aVar.T()));
            } else {
                return new f.i.b.t(aVar.T());
            }
        }

        @Override // f.i.b.z
        /* renamed from: d */
        public void b(f.i.b.e0.c cVar, f.i.b.o oVar) throws IOException {
            if (oVar != null && !(oVar instanceof f.i.b.q)) {
                if (oVar instanceof f.i.b.t) {
                    f.i.b.t b = oVar.b();
                    Object obj = b.a;
                    if (obj instanceof Number) {
                        cVar.P(b.d());
                        return;
                    } else if (obj instanceof Boolean) {
                        cVar.R(b.c());
                        return;
                    } else {
                        cVar.Q(b.e());
                        return;
                    }
                }
                boolean z = oVar instanceof f.i.b.l;
                if (z) {
                    cVar.e();
                    if (z) {
                        Iterator<f.i.b.o> it = ((f.i.b.l) oVar).iterator();
                        while (it.hasNext()) {
                            b(cVar, it.next());
                        }
                        cVar.E();
                        return;
                    }
                    throw new IllegalStateException("Not a JSON Array: " + oVar);
                }
                boolean z2 = oVar instanceof f.i.b.r;
                if (z2) {
                    cVar.f();
                    if (z2) {
                        for (Map.Entry<String, f.i.b.o> entry : ((f.i.b.r) oVar).a.entrySet()) {
                            cVar.G(entry.getKey());
                            b(cVar, entry.getValue());
                        }
                        cVar.F();
                        return;
                    }
                    throw new IllegalStateException("Not a JSON Object: " + oVar);
                }
                StringBuilder o = f.b.a.a.a.o("Couldn't write ");
                o.append(oVar.getClass());
                throw new IllegalArgumentException(o.toString());
            }
            cVar.I();
        }
    }

    /* compiled from: TypeAdapters.java */
    /* loaded from: classes.dex */
    public static class v extends f.i.b.z<BitSet> {
        /* JADX WARN: Code restructure failed: missing block: B:15:0x003e, code lost:
            if (r6.N() != 0) goto L23;
         */
        /* JADX WARN: Code restructure failed: missing block: B:19:0x0049, code lost:
            if (java.lang.Integer.parseInt(r1) != 0) goto L23;
         */
        /* JADX WARN: Code restructure failed: missing block: B:20:0x004b, code lost:
            r1 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:21:0x004d, code lost:
            r1 = false;
         */
        @Override // f.i.b.z
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public java.util.BitSet a(f.i.b.e0.a r6) throws java.io.IOException {
            /*
                r5 = this;
                java.util.BitSet r0 = new java.util.BitSet
                r0.<init>()
                r6.d()
                f.i.b.e0.b r1 = r6.V()
                r2 = 0
            Ld:
                f.i.b.e0.b r3 = f.i.b.e0.b.END_ARRAY
                if (r1 == r3) goto L66
                int r3 = r1.ordinal()
                r4 = 5
                if (r3 == r4) goto L41
                r4 = 6
                if (r3 == r4) goto L3a
                r4 = 7
                if (r3 != r4) goto L23
                boolean r1 = r6.L()
                goto L4e
            L23:
                f.i.b.w r6 = new f.i.b.w
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r0.<init>()
                java.lang.String r2 = "Invalid bitset value type: "
                r0.append(r2)
                r0.append(r1)
                java.lang.String r0 = r0.toString()
                r6.<init>(r0)
                throw r6
            L3a:
                int r1 = r6.N()
                if (r1 == 0) goto L4d
                goto L4b
            L41:
                java.lang.String r1 = r6.T()
                int r1 = java.lang.Integer.parseInt(r1)     // Catch: java.lang.NumberFormatException -> L5a
                if (r1 == 0) goto L4d
            L4b:
                r1 = 1
                goto L4e
            L4d:
                r1 = 0
            L4e:
                if (r1 == 0) goto L53
                r0.set(r2)
            L53:
                int r2 = r2 + 1
                f.i.b.e0.b r1 = r6.V()
                goto Ld
            L5a:
                f.i.b.w r6 = new f.i.b.w
                java.lang.String r0 = "Error: Expecting: bitset number value (1, 0), Found: "
                java.lang.String r0 = f.b.a.a.a.f(r0, r1)
                r6.<init>(r0)
                throw r6
            L66:
                r6.E()
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: f.i.b.c0.a0.o.v.a(f.i.b.e0.a):java.lang.Object");
        }

        @Override // f.i.b.z
        public void b(f.i.b.e0.c cVar, BitSet bitSet) throws IOException {
            BitSet bitSet2 = bitSet;
            cVar.e();
            int length = bitSet2.length();
            for (int i2 = 0; i2 < length; i2++) {
                cVar.N(bitSet2.get(i2) ? 1L : 0L);
            }
            cVar.E();
        }
    }

    /* compiled from: TypeAdapters.java */
    /* loaded from: classes.dex */
    public static class w implements f.i.b.a0 {
        @Override // f.i.b.a0
        public <T> f.i.b.z<T> a(f.i.b.j jVar, f.i.b.d0.a<T> aVar) {
            Class<? super T> cls = aVar.a;
            if (!Enum.class.isAssignableFrom(cls) || cls == Enum.class) {
                return null;
            }
            if (!cls.isEnum()) {
                cls = cls.getSuperclass();
            }
            return new e0(cls);
        }
    }

    /* compiled from: TypeAdapters.java */
    /* loaded from: classes.dex */
    public static class x extends f.i.b.z<Boolean> {
        @Override // f.i.b.z
        public Boolean a(f.i.b.e0.a aVar) throws IOException {
            f.i.b.e0.b V = aVar.V();
            if (V == f.i.b.e0.b.NULL) {
                aVar.R();
                return null;
            } else if (V == f.i.b.e0.b.STRING) {
                return Boolean.valueOf(Boolean.parseBoolean(aVar.T()));
            } else {
                return Boolean.valueOf(aVar.L());
            }
        }

        @Override // f.i.b.z
        public void b(f.i.b.e0.c cVar, Boolean bool) throws IOException {
            cVar.O(bool);
        }
    }

    /* compiled from: TypeAdapters.java */
    /* loaded from: classes.dex */
    public static class y extends f.i.b.z<Boolean> {
        @Override // f.i.b.z
        public Boolean a(f.i.b.e0.a aVar) throws IOException {
            if (aVar.V() == f.i.b.e0.b.NULL) {
                aVar.R();
                return null;
            }
            return Boolean.valueOf(aVar.T());
        }

        @Override // f.i.b.z
        public void b(f.i.b.e0.c cVar, Boolean bool) throws IOException {
            Boolean bool2 = bool;
            cVar.Q(bool2 == null ? "null" : bool2.toString());
        }
    }

    /* compiled from: TypeAdapters.java */
    /* loaded from: classes.dex */
    public static class z extends f.i.b.z<Number> {
        @Override // f.i.b.z
        public Number a(f.i.b.e0.a aVar) throws IOException {
            if (aVar.V() == f.i.b.e0.b.NULL) {
                aVar.R();
                return null;
            }
            try {
                return Byte.valueOf((byte) aVar.N());
            } catch (NumberFormatException e2) {
                throw new f.i.b.w(e2);
            }
        }

        @Override // f.i.b.z
        public void b(f.i.b.e0.c cVar, Number number) throws IOException {
            cVar.P(number);
        }
    }

    static {
        f.i.b.y yVar = new f.i.b.y(new k());
        a = yVar;
        b = new f.i.b.c0.a0.p(Class.class, yVar);
        f.i.b.y yVar2 = new f.i.b.y(new v());
        f6105c = yVar2;
        f6106d = new f.i.b.c0.a0.p(BitSet.class, yVar2);
        f6107e = new x();
        f6108f = new y();
        f6109g = new f.i.b.c0.a0.q(Boolean.TYPE, Boolean.class, f6107e);
        f6110h = new z();
        f6111i = new f.i.b.c0.a0.q(Byte.TYPE, Byte.class, f6110h);
        f6112j = new a0();
        f6113k = new f.i.b.c0.a0.q(Short.TYPE, Short.class, f6112j);
        f6114l = new b0();
        f6115m = new f.i.b.c0.a0.q(Integer.TYPE, Integer.class, f6114l);
        f.i.b.y yVar3 = new f.i.b.y(new c0());
        n = yVar3;
        o = new f.i.b.c0.a0.p(AtomicInteger.class, yVar3);
        f.i.b.y yVar4 = new f.i.b.y(new d0());
        p = yVar4;
        q = new f.i.b.c0.a0.p(AtomicBoolean.class, yVar4);
        f.i.b.y yVar5 = new f.i.b.y(new a());
        r = yVar5;
        s = new f.i.b.c0.a0.p(AtomicIntegerArray.class, yVar5);
        t = new b();
        u = new c();
        v = new d();
        e eVar = new e();
        w = eVar;
        x = new f.i.b.c0.a0.p(Number.class, eVar);
        y = new f();
        z = new f.i.b.c0.a0.q(Character.TYPE, Character.class, y);
        A = new g();
        B = new h();
        C = new i();
        D = new f.i.b.c0.a0.p(String.class, A);
        j jVar = new j();
        E = jVar;
        F = new f.i.b.c0.a0.p(StringBuilder.class, jVar);
        l lVar = new l();
        G = lVar;
        H = new f.i.b.c0.a0.p(StringBuffer.class, lVar);
        m mVar = new m();
        I = mVar;
        J = new f.i.b.c0.a0.p(URL.class, mVar);
        n nVar = new n();
        K = nVar;
        L = new f.i.b.c0.a0.p(URI.class, nVar);
        C0095o c0095o = new C0095o();
        M = c0095o;
        N = new f.i.b.c0.a0.s(InetAddress.class, c0095o);
        p pVar = new p();
        O = pVar;
        P = new f.i.b.c0.a0.p(UUID.class, pVar);
        f.i.b.y yVar6 = new f.i.b.y(new q());
        Q = yVar6;
        R = new f.i.b.c0.a0.p(Currency.class, yVar6);
        S = new r();
        s sVar = new s();
        T = sVar;
        U = new f.i.b.c0.a0.r(Calendar.class, GregorianCalendar.class, sVar);
        t tVar = new t();
        V = tVar;
        W = new f.i.b.c0.a0.p(Locale.class, tVar);
        u uVar = new u();
        X = uVar;
        Y = new f.i.b.c0.a0.s(f.i.b.o.class, uVar);
        Z = new w();
    }
}
