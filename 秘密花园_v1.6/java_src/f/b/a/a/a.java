package f.b.a.a;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.util.JsonReader;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import com.comeback.data.widget.CustomViewPager;
import com.tencent.smtt.utils.TbsLog;
import com.umeng.commonsdk.debug.UMLogUtils;
import f.a.a.a.l.g;
import f.e.a.e;
import i.b0;
import i.e0;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import l.e;
import l.h0;
import l.m0.a.j;
/* compiled from: outline */
/* loaded from: classes.dex */
public class a {
    public static void A(String str, boolean z, String str2) {
        TbsLog.i(str2, str + z);
    }

    public static void B(StringBuilder sb, String str, String str2) {
        sb.append(str);
        sb.append(e.a(str2));
    }

    public static void C(StringBuilder sb, String str, String str2, String str3, String str4) {
        sb.append(str);
        sb.append(str2);
        sb.append(str3);
        sb.append(str4);
    }

    public static void D(ArrayList arrayList, int i2, CustomViewPager customViewPager) {
        customViewPager.setOffscreenPageLimit(arrayList.size() + i2);
    }

    public static void E(ArrayList arrayList, int i2, CustomViewPager customViewPager) {
        customViewPager.setOffscreenPageLimit(arrayList.size() - i2);
    }

    public static Object F(List list, e.a aVar, h0.b bVar, Class cls) {
        list.add(aVar);
        return bVar.b().b(cls);
    }

    public static String G(int i2, HashMap hashMap, String str, String str2) {
        hashMap.put(str, String.valueOf(i2));
        return f.e.a.e.a(str2);
    }

    public static String H(RecyclerView recyclerView, StringBuilder sb) {
        sb.append(recyclerView.exceptionLabel());
        return sb.toString();
    }

    public static String I(Class cls, StringBuilder sb, String str, String str2) {
        sb.append(cls.getSimpleName());
        sb.append(str);
        sb.append(cls.getSimpleName());
        sb.append(str2);
        return sb.toString();
    }

    public static String J(String str, int i2) {
        return str + i2;
    }

    public static String K(String str, int i2, String str2) {
        return str + i2 + str2;
    }

    public static float a(float f2, float f3, float f4, float f5) {
        return ((f2 - f3) * f4) + f5;
    }

    public static View b(ViewGroup viewGroup, int i2, ViewGroup viewGroup2, boolean z) {
        return LayoutInflater.from(viewGroup.getContext()).inflate(i2, viewGroup2, z);
    }

    public static String c(String str, long j2) {
        return str + j2;
    }

    public static String d(String str, Uri uri) {
        return str + uri;
    }

    public static String e(String str, Fragment fragment, String str2) {
        return str + fragment + str2;
    }

    public static String f(String str, String str2) {
        return str + str2;
    }

    public static String g(String str, String str2, String str3) {
        return str + str2 + str3;
    }

    public static String h(String str, StringBuilder sb) {
        sb.append(UMLogUtils.makeUrl(str));
        return sb.toString();
    }

    public static String i(String str, HashMap hashMap, String str2, String str3) {
        hashMap.put(str2, f.e.a.e.a(str));
        return f.e.a.e.a(str3);
    }

    public static String j(String str, Object[] objArr, HashMap hashMap, String str2, String str3) {
        hashMap.put(str2, String.format(str, objArr));
        return f.e.a.e.a(str3);
    }

    public static String k(StringBuilder sb, int i2, String str) {
        sb.append(i2);
        sb.append(str);
        return sb.toString();
    }

    public static String l(StringBuilder sb, String str, String str2) {
        sb.append(str);
        sb.append(str2);
        return sb.toString();
    }

    public static g m(int i2, int i3, int i4) {
        g gVar = new g(i2);
        if (i3 < 0) {
            i3 = 0;
        }
        gVar.u = i3;
        if (i4 < 0) {
            i4 = 0;
        }
        gVar.v = i4;
        return gVar;
    }

    public static String n(StringBuilder sb, String str, String str2) {
        sb.append(str);
        sb.append(f.e.a.e.a(str2));
        return sb.toString();
    }

    public static StringBuilder o(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        return sb;
    }

    public static StringBuilder p(String str, int i2, String str2) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(i2);
        sb.append(str2);
        return sb;
    }

    public static StringBuilder q(String str, String str2) {
        StringBuilder sb = new StringBuilder(str);
        sb.append(str2);
        return sb;
    }

    public static StringBuilder r(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(str2);
        return sb;
    }

    public static e0 s(String str, e0.a aVar, String str2) {
        aVar.a(str2, f.e.a.e.a(str));
        return aVar.b();
    }

    public static j t(h0.b bVar, String str, b0 b0Var) {
        bVar.a(str);
        bVar.c(b0Var);
        return j.b();
    }

    public static void u(Context context, Class cls) {
        context.startActivity(new Intent(context, cls));
    }

    public static void v(String str, Intent intent, String str2, Context context, Intent intent2) {
        intent.putExtra(f.e.a.e.a(str), str2);
        context.startActivity(intent2);
    }

    public static void w(String str, Fragment fragment) {
        String str2 = str + fragment;
    }

    public static IllegalArgumentException x(JsonReader jsonReader, String str) {
        jsonReader.skipValue();
        return new IllegalArgumentException(str);
    }

    public static void y(String str, Exception exc) {
        String str2 = str + exc;
    }

    public static void z(String str, Throwable th) {
        String str2 = str + th;
    }
}
