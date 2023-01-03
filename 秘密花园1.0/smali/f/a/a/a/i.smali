.class public abstract Lf/a/a/a/i;
.super Ljava/lang/Object;
.source "OrientationHelperEx.java"


# instance fields
.field public final a:Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;

.field public b:I


# direct methods
.method public constructor <init>(Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;Lf/a/a/a/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 p2, -0x80000000

    .line 2
    iput p2, p0, Lf/a/a/a/i;->b:I

    .line 3
    iput-object p1, p0, Lf/a/a/a/i;->a:Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;

    return-void
.end method

.method public static a(Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;I)Lf/a/a/a/i;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    new-instance p1, Lf/a/a/a/h;

    invoke-direct {p1, p0}, Lf/a/a/a/h;-><init>(Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;)V

    return-object p1

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid orientation"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_1
    new-instance p1, Lf/a/a/a/g;

    invoke-direct {p1, p0}, Lf/a/a/a/g;-><init>(Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;)V

    return-object p1
.end method


# virtual methods
.method public abstract b(Landroid/view/View;)I
.end method

.method public abstract c(Landroid/view/View;)I
.end method

.method public abstract d(Landroid/view/View;)I
.end method

.method public abstract e(Landroid/view/View;)I
.end method

.method public abstract f()I
.end method

.method public abstract g()I
.end method

.method public abstract h()I
.end method

.method public abstract i()I
.end method

.method public abstract j()I
.end method

.method public abstract k(I)V
.end method
