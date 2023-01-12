package com.google.android.material.animation;

import android.animation.TypeEvaluator;
import android.graphics.Matrix;

/* loaded from: classes.dex */
public class MatrixEvaluator implements TypeEvaluator<Matrix> {
    public final float[] tempStartValues = new float[9];
    public final float[] tempEndValues = new float[9];
    public final Matrix tempMatrix = new Matrix();

    @Override // android.animation.TypeEvaluator
    public Matrix evaluate(float f2, Matrix matrix, Matrix matrix2) {
        matrix.getValues(this.tempStartValues);
        matrix2.getValues(this.tempEndValues);
        for (int i2 = 0; i2 < 9; i2++) {
            float[] fArr = this.tempEndValues;
            float f3 = fArr[i2];
            float[] fArr2 = this.tempStartValues;
            fArr[i2] = ((f3 - fArr2[i2]) * f2) + fArr2[i2];
        }
        this.tempMatrix.setValues(this.tempEndValues);
        return this.tempMatrix;
    }
}
