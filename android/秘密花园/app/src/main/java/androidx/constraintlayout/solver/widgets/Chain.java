package androidx.constraintlayout.solver.widgets;

import androidx.constraintlayout.solver.LinearSystem;

/* loaded from: classes.dex */
public class Chain {
    public static final boolean DEBUG = false;

    public static void applyChainConstraints(ConstraintWidgetContainer constraintWidgetContainer, LinearSystem linearSystem, int i2) {
        ChainHead[] chainHeadArr;
        int i3;
        int i4;
        if (i2 == 0) {
            int i5 = constraintWidgetContainer.mHorizontalChainsSize;
            chainHeadArr = constraintWidgetContainer.mHorizontalChainsArray;
            i3 = i5;
            i4 = 0;
        } else {
            i4 = 2;
            i3 = constraintWidgetContainer.mVerticalChainsSize;
            chainHeadArr = constraintWidgetContainer.mVerticalChainsArray;
        }
        for (int i6 = 0; i6 < i3; i6++) {
            ChainHead chainHead = chainHeadArr[i6];
            chainHead.define();
            if (!constraintWidgetContainer.optimizeFor(4)) {
                applyChainConstraints(constraintWidgetContainer, linearSystem, i2, i4, chainHead);
            } else if (!Optimizer.applyChainOptimized(constraintWidgetContainer, linearSystem, i2, i4, chainHead)) {
                applyChainConstraints(constraintWidgetContainer, linearSystem, i2, i4, chainHead);
            }
        }
    }

    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:284:0x0118 */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v32 */
    /* JADX WARN: Type inference failed for: r2v52, types: [androidx.constraintlayout.solver.widgets.ConstraintWidget] */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x0031, code lost:
        if (r2.mHorizontalChainStyle == 2) goto L_0x0046;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:27:0x0044, code lost:
        if (r2.mVerticalChainStyle == 2) goto L_0x0046;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:28:0x0046, code lost:
        r5 = true;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:29:0x0048, code lost:
        r5 = false;
     */
    /* JADX WARNING: Removed duplicated region for block: B:192:0x036b  */
    /* JADX WARNING: Removed duplicated region for block: B:205:0x038b  */
    /* JADX WARNING: Removed duplicated region for block: B:251:0x0459  */
    /* JADX WARNING: Removed duplicated region for block: B:256:0x048e  */
    /* JADX WARNING: Removed duplicated region for block: B:265:0x04b3  */
    /* JADX WARNING: Removed duplicated region for block: B:266:0x04b6  */
    /* JADX WARNING: Removed duplicated region for block: B:269:0x04bc  */
    /* JADX WARNING: Removed duplicated region for block: B:270:0x04bf  */
    /* JADX WARNING: Removed duplicated region for block: B:272:0x04c3  */
    /* JADX WARNING: Removed duplicated region for block: B:276:0x04d2  */
    /* JADX WARNING: Removed duplicated region for block: B:278:0x04d5  */
    /* JADX WARNING: Removed duplicated region for block: B:291:0x036c A[SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:84:0x014f  */
    /* JADX WARNING: Removed duplicated region for block: B:97:0x0188  */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static void applyChainConstraints(androidx.constraintlayout.solver.widgets.ConstraintWidgetContainer r37, androidx.constraintlayout.solver.LinearSystem r38, int r39, int r40, androidx.constraintlayout.solver.widgets.ChainHead r41) {
        /*
        // Method dump skipped, instructions count: 1282
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.solver.widgets.Chain.applyChainConstraints(androidx.constraintlayout.solver.widgets.ConstraintWidgetContainer, androidx.constraintlayout.solver.LinearSystem, int, int, androidx.constraintlayout.solver.widgets.ChainHead):void");
    }
}
