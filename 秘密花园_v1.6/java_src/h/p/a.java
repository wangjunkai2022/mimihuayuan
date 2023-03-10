package h.p;

import c.a.a.b.g.h;
import java.util.Iterator;
/* compiled from: Progressions.kt */
/* loaded from: classes.dex */
public class a implements Iterable<Integer>, h.o.c.o.a {
    public final int a;
    public final int b;

    /* renamed from: c  reason: collision with root package name */
    public final int f6418c;

    public a(int i2, int i3, int i4) {
        if (i4 == 0) {
            throw new IllegalArgumentException("Step must be non-zero.");
        }
        if (i4 != Integer.MIN_VALUE) {
            this.a = i2;
            if (i4 > 0) {
                if (i2 < i3) {
                    i3 -= h.U0(h.U0(i3, i4) - h.U0(i2, i4), i4);
                }
            } else if (i4 >= 0) {
                throw new IllegalArgumentException("Step is zero.");
            } else {
                if (i2 > i3) {
                    int i5 = -i4;
                    i3 += h.U0(h.U0(i2, i5) - h.U0(i3, i5), i5);
                }
            }
            this.b = i3;
            this.f6418c = i4;
            return;
        }
        throw new IllegalArgumentException("Step must be greater than Int.MIN_VALUE to avoid overflow on negation.");
    }

    public boolean equals(Object obj) {
        if (obj instanceof a) {
            if (!isEmpty() || !((a) obj).isEmpty()) {
                a aVar = (a) obj;
                if (this.a != aVar.a || this.b != aVar.b || this.f6418c != aVar.f6418c) {
                }
            }
            return true;
        }
        return false;
    }

    public int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return (((this.a * 31) + this.b) * 31) + this.f6418c;
    }

    public boolean isEmpty() {
        if (this.f6418c > 0) {
            if (this.a > this.b) {
                return true;
            }
        } else if (this.a < this.b) {
            return true;
        }
        return false;
    }

    @Override // java.lang.Iterable
    public Iterator<Integer> iterator() {
        return new b(this.a, this.b, this.f6418c);
    }

    public String toString() {
        StringBuilder sb;
        int i2;
        if (this.f6418c > 0) {
            sb = new StringBuilder();
            sb.append(this.a);
            sb.append("..");
            sb.append(this.b);
            sb.append(" step ");
            i2 = this.f6418c;
        } else {
            sb = new StringBuilder();
            sb.append(this.a);
            sb.append(" downTo ");
            sb.append(this.b);
            sb.append(" step ");
            i2 = -this.f6418c;
        }
        sb.append(i2);
        return sb.toString();
    }
}
