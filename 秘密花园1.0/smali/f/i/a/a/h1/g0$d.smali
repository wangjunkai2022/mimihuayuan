.class public final Lf/i/a/a/h1/g0$d;
.super Ljava/lang/Object;
.source "ProgressiveMediaPeriod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/i/a/a/h1/g0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final a:Lf/i/a/a/b1/n;

.field public final b:Lf/i/a/a/h1/p0;

.field public final c:[Z

.field public final d:[Z

.field public final e:[Z


# direct methods
.method public constructor <init>(Lf/i/a/a/b1/n;Lf/i/a/a/h1/p0;[Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf/i/a/a/h1/g0$d;->a:Lf/i/a/a/b1/n;

    .line 3
    iput-object p2, p0, Lf/i/a/a/h1/g0$d;->b:Lf/i/a/a/h1/p0;

    .line 4
    iput-object p3, p0, Lf/i/a/a/h1/g0$d;->c:[Z

    .line 5
    iget p1, p2, Lf/i/a/a/h1/p0;->a:I

    new-array p2, p1, [Z

    iput-object p2, p0, Lf/i/a/a/h1/g0$d;->d:[Z

    .line 6
    new-array p1, p1, [Z

    iput-object p1, p0, Lf/i/a/a/h1/g0$d;->e:[Z

    return-void
.end method
