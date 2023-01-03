.class public Lf/a/a/a/l/e;
.super Ljava/lang/Object;
.source "FixAreaAdjuster.java"


# static fields
.field public static final e:Lf/a/a/a/l/e;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lf/a/a/a/l/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Lf/a/a/a/l/e;-><init>(IIII)V

    sput-object v0, Lf/a/a/a/l/e;->e:Lf/a/a/a/l/e;

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lf/a/a/a/l/e;->a:I

    .line 3
    iput p2, p0, Lf/a/a/a/l/e;->b:I

    .line 4
    iput p3, p0, Lf/a/a/a/l/e;->c:I

    .line 5
    iput p4, p0, Lf/a/a/a/l/e;->d:I

    return-void
.end method
