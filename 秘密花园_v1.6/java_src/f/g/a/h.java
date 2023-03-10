package f.g.a;
/* compiled from: SystemLibraryLoader.java */
/* loaded from: classes.dex */
public final class h implements d {
    public String a(String str) {
        return (str.startsWith("lib") && str.endsWith(".so")) ? str : System.mapLibraryName(str);
    }
}
