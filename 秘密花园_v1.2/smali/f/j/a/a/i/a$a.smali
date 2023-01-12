.class public Lf/j/a/a/i/a$a;
.super Ljava/lang/Object;
.source "BezierRadarHeader.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/j/a/a/i/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:B

.field public final synthetic b:Lf/j/a/a/i/a;


# direct methods
.method public constructor <init>(Lf/j/a/a/i/a;B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/j/a/a/i/a$a;->b:Lf/j/a/a/i/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-byte p2, p0, Lf/j/a/a/i/a$a;->a:B

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1
    iget-byte v0, p0, Lf/j/a/a/i/a$a;->a:B

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lf/j/a/a/i/a$a;->b:Lf/j/a/a/i/a;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v0, Lf/j/a/a/i/a;->w:F

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v1, v0, :cond_2

    .line 3
    iget-object v0, p0, Lf/j/a/a/i/a$a;->b:Lf/j/a/a/i/a;

    iget-boolean v1, v0, Lf/j/a/a/i/a;->h:Z

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    return-void

    .line 5
    :cond_1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    div-int/2addr p1, v2

    iput p1, v0, Lf/j/a/a/i/a;->m:I

    goto :goto_0

    :cond_2
    if-ne v2, v0, :cond_3

    .line 6
    iget-object v0, p0, Lf/j/a/a/i/a$a;->b:Lf/j/a/a/i/a;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v0, Lf/j/a/a/i/a;->p:F

    goto :goto_0

    :cond_3
    const/4 v1, 0x3

    if-ne v1, v0, :cond_4

    .line 7
    iget-object v0, p0, Lf/j/a/a/i/a$a;->b:Lf/j/a/a/i/a;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v0, Lf/j/a/a/i/a;->s:F

    goto :goto_0

    :cond_4
    const/4 v1, 0x4

    if-ne v1, v0, :cond_5

    .line 8
    iget-object v0, p0, Lf/j/a/a/i/a$a;->b:Lf/j/a/a/i/a;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Lf/j/a/a/i/a;->t:I

    .line 9
    :cond_5
    :goto_0
    iget-object p1, p0, Lf/j/a/a/i/a$a;->b:Lf/j/a/a/i/a;

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
