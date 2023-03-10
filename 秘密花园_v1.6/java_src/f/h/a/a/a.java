package f.h.a.a;

import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.StringTokenizer;
/* compiled from: Logger.java */
/* loaded from: classes.dex */
public final class a {
    public static final String a = System.getProperty("line.separator");
    public static boolean b = false;

    /* renamed from: c  reason: collision with root package name */
    public static List<Object> f4076c = new ArrayList();

    public static List<String> a(Throwable th) {
        StringWriter stringWriter = new StringWriter();
        th.printStackTrace(new PrintWriter((Writer) stringWriter, true));
        StringTokenizer stringTokenizer = new StringTokenizer(stringWriter.toString(), a);
        ArrayList arrayList = new ArrayList();
        boolean z = false;
        while (stringTokenizer.hasMoreTokens()) {
            String nextToken = stringTokenizer.nextToken();
            int indexOf = nextToken.indexOf("at");
            if (indexOf != -1 && nextToken.substring(0, indexOf).trim().isEmpty()) {
                arrayList.add(nextToken);
                z = true;
            } else if (z) {
                break;
            }
        }
        return arrayList;
    }

    public static String b(Throwable th) {
        List<String> list;
        ArrayList arrayList = new ArrayList();
        while (th != null && !arrayList.contains(th)) {
            arrayList.add(th);
            th = th.getCause();
        }
        int size = arrayList.size();
        ArrayList arrayList2 = new ArrayList();
        int i2 = size - 1;
        List<String> a2 = a((Throwable) arrayList.get(i2));
        while (true) {
            size--;
            if (size < 0) {
                break;
            }
            if (size != 0) {
                list = a((Throwable) arrayList.get(size - 1));
                int size2 = a2.size() - 1;
                ArrayList arrayList3 = (ArrayList) list;
                int size3 = arrayList3.size();
                while (true) {
                    size3--;
                    if (size2 < 0 || size3 < 0) {
                        break;
                    }
                    if (a2.get(size2).equals((String) arrayList3.get(size3))) {
                        a2.remove(size2);
                    }
                    size2--;
                }
            } else {
                list = a2;
            }
            if (size == i2) {
                arrayList2.add(((Throwable) arrayList.get(size)).toString());
            } else {
                StringBuilder o = f.b.a.a.a.o(" Caused by: ");
                o.append(((Throwable) arrayList.get(size)).toString());
                arrayList2.add(o.toString());
            }
            arrayList2.addAll(a2);
            a2 = list;
        }
        StringBuilder sb = new StringBuilder();
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            sb.append((String) it.next());
            sb.append(a);
        }
        return sb.toString();
    }

    public static synchronized void c(Object obj) {
        synchronized (a.class) {
            if (b) {
                if (obj instanceof Throwable) {
                    b((Throwable) obj);
                } else {
                    obj.toString();
                }
                throw null;
            }
        }
    }
}
