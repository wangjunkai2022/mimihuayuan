package androidx.constraintlayout.solver;

import f.b.a.a.a;
import java.util.Arrays;

/* loaded from: classes.dex */
public class SolverVariable {
    public static final boolean INTERNAL_DEBUG = false;
    public static final int MAX_STRENGTH = 7;
    public static final int STRENGTH_BARRIER = 7;
    public static final int STRENGTH_EQUALITY = 5;
    public static final int STRENGTH_FIXED = 6;
    public static final int STRENGTH_HIGH = 3;
    public static final int STRENGTH_HIGHEST = 4;
    public static final int STRENGTH_LOW = 1;
    public static final int STRENGTH_MEDIUM = 2;
    public static final int STRENGTH_NONE = 0;
    public static int uniqueConstantId = 1;
    public static int uniqueErrorId = 1;
    public static int uniqueId = 1;
    public static int uniqueSlackId = 1;
    public static int uniqueUnrestrictedId = 1;
    public float computedValue;
    public int definitionId;
    public int id;
    public ArrayRow[] mClientEquations;
    public int mClientEquationsCount;
    public String mName;
    public Type mType;
    public int strength;
    public float[] strengthVector;
    public int usageInRowCount;

    /* renamed from: androidx.constraintlayout.solver.SolverVariable$1  reason: invalid class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$androidx$constraintlayout$solver$SolverVariable$Type;

        static {
            int[] iArr = new int[Type.values().length];
            $SwitchMap$androidx$constraintlayout$solver$SolverVariable$Type = iArr;
            try {
                Type type = Type.UNRESTRICTED;
                iArr[0] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                int[] iArr2 = $SwitchMap$androidx$constraintlayout$solver$SolverVariable$Type;
                Type type2 = Type.CONSTANT;
                iArr2[1] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                int[] iArr3 = $SwitchMap$androidx$constraintlayout$solver$SolverVariable$Type;
                Type type3 = Type.SLACK;
                iArr3[2] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                int[] iArr4 = $SwitchMap$androidx$constraintlayout$solver$SolverVariable$Type;
                Type type4 = Type.ERROR;
                iArr4[3] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                int[] iArr5 = $SwitchMap$androidx$constraintlayout$solver$SolverVariable$Type;
                Type type5 = Type.UNKNOWN;
                iArr5[4] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* loaded from: classes.dex */
    public enum Type {
        UNRESTRICTED,
        CONSTANT,
        SLACK,
        ERROR,
        UNKNOWN
    }

    public SolverVariable(String str, Type type) {
        this.id = -1;
        this.definitionId = -1;
        this.strength = 0;
        this.strengthVector = new float[7];
        this.mClientEquations = new ArrayRow[8];
        this.mClientEquationsCount = 0;
        this.usageInRowCount = 0;
        this.mName = str;
        this.mType = type;
    }

    public static String getUniqueName(Type type, String str) {
        if (str != null) {
            StringBuilder o = a.o(str);
            o.append(uniqueErrorId);
            return o.toString();
        }
        int ordinal = type.ordinal();
        if (ordinal == 0) {
            StringBuilder o2 = a.o("U");
            int i2 = uniqueUnrestrictedId + 1;
            uniqueUnrestrictedId = i2;
            o2.append(i2);
            return o2.toString();
        } else if (ordinal == 1) {
            StringBuilder o3 = a.o("C");
            int i3 = uniqueConstantId + 1;
            uniqueConstantId = i3;
            o3.append(i3);
            return o3.toString();
        } else if (ordinal == 2) {
            StringBuilder o4 = a.o("S");
            int i4 = uniqueSlackId + 1;
            uniqueSlackId = i4;
            o4.append(i4);
            return o4.toString();
        } else if (ordinal == 3) {
            StringBuilder o5 = a.o("e");
            int i5 = uniqueErrorId + 1;
            uniqueErrorId = i5;
            o5.append(i5);
            return o5.toString();
        } else if (ordinal == 4) {
            StringBuilder o6 = a.o("V");
            int i6 = uniqueId + 1;
            uniqueId = i6;
            o6.append(i6);
            return o6.toString();
        } else {
            throw new AssertionError(type.name());
        }
    }

    public static void increaseErrorId() {
        uniqueErrorId++;
    }

    public final void addToRow(ArrayRow arrayRow) {
        int i2 = 0;
        while (true) {
            int i3 = this.mClientEquationsCount;
            if (i2 >= i3) {
                ArrayRow[] arrayRowArr = this.mClientEquations;
                if (i3 >= arrayRowArr.length) {
                    this.mClientEquations = (ArrayRow[]) Arrays.copyOf(arrayRowArr, arrayRowArr.length * 2);
                }
                ArrayRow[] arrayRowArr2 = this.mClientEquations;
                int i4 = this.mClientEquationsCount;
                arrayRowArr2[i4] = arrayRow;
                this.mClientEquationsCount = i4 + 1;
                return;
            } else if (this.mClientEquations[i2] != arrayRow) {
                i2++;
            } else {
                return;
            }
        }
    }

    public void clearStrengths() {
        for (int i2 = 0; i2 < 7; i2++) {
            this.strengthVector[i2] = 0.0f;
        }
    }

    public String getName() {
        return this.mName;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:10:0x0025, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:7:0x0010, code lost:
        if (r1 >= ((r0 - r2) - 1)) goto L_0x001f;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:8:0x0012, code lost:
        r6 = r5.mClientEquations;
        r3 = r2 + r1;
        r6[r3] = r6[r3 + 1];
        r1 = r1 + 1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:0x001f, code lost:
        r5.mClientEquationsCount--;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void removeFromRow(androidx.constraintlayout.solver.ArrayRow r6) {
        /*
            r5 = this;
            int r0 = r5.mClientEquationsCount
            r1 = 0
            r2 = 0
        L_0x0004:
            if (r2 >= r0) goto L_0x0029
            androidx.constraintlayout.solver.ArrayRow[] r3 = r5.mClientEquations
            r3 = r3[r2]
            if (r3 != r6) goto L_0x0026
        L_0x000c:
            int r6 = r0 - r2
            int r6 = r6 + -1
            if (r1 >= r6) goto L_0x001f
            androidx.constraintlayout.solver.ArrayRow[] r6 = r5.mClientEquations
            int r3 = r2 + r1
            int r4 = r3 + 1
            r4 = r6[r4]
            r6[r3] = r4
            int r1 = r1 + 1
            goto L_0x000c
        L_0x001f:
            int r6 = r5.mClientEquationsCount
            int r6 = r6 + -1
            r5.mClientEquationsCount = r6
            return
        L_0x0026:
            int r2 = r2 + 1
            goto L_0x0004
        L_0x0029:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.solver.SolverVariable.removeFromRow(androidx.constraintlayout.solver.ArrayRow):void");
    }

    public void reset() {
        this.mName = null;
        this.mType = Type.UNKNOWN;
        this.strength = 0;
        this.id = -1;
        this.definitionId = -1;
        this.computedValue = 0.0f;
        this.mClientEquationsCount = 0;
        this.usageInRowCount = 0;
    }

    public void setName(String str) {
        this.mName = str;
    }

    public void setType(Type type, String str) {
        this.mType = type;
    }

    public String strengthsToString() {
        String str = this + "[";
        boolean z = false;
        boolean z2 = true;
        for (int i2 = 0; i2 < this.strengthVector.length; i2++) {
            StringBuilder o = a.o(str);
            o.append(this.strengthVector[i2]);
            String sb = o.toString();
            float[] fArr = this.strengthVector;
            if (fArr[i2] > 0.0f) {
                z = false;
            } else if (fArr[i2] < 0.0f) {
                z = true;
            }
            if (this.strengthVector[i2] != 0.0f) {
                z2 = false;
            }
            if (i2 < this.strengthVector.length - 1) {
                str = a.f(sb, ", ");
            } else {
                str = a.f(sb, "] ");
            }
        }
        if (z) {
            str = a.f(str, " (-)");
        }
        return z2 ? a.f(str, " (*)") : str;
    }

    public String toString() {
        StringBuilder o = a.o("");
        o.append(this.mName);
        return o.toString();
    }

    public final void updateReferencesWithNewDefinition(ArrayRow arrayRow) {
        int i2 = this.mClientEquationsCount;
        for (int i3 = 0; i3 < i2; i3++) {
            ArrayRow[] arrayRowArr = this.mClientEquations;
            arrayRowArr[i3].variables.updateFromRow(arrayRowArr[i3], arrayRow, false);
        }
        this.mClientEquationsCount = 0;
    }

    public SolverVariable(Type type, String str) {
        this.id = -1;
        this.definitionId = -1;
        this.strength = 0;
        this.strengthVector = new float[7];
        this.mClientEquations = new ArrayRow[8];
        this.mClientEquationsCount = 0;
        this.usageInRowCount = 0;
        this.mType = type;
    }
}
