.class public final Lf/i/a/a/h1/j0$a;
.super Ljava/lang/Object;
.source "SampleQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/i/a/a/h1/j0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:J

.field public final b:J

.field public c:Z

.field public d:Lf/i/a/a/l1/d;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public e:Lf/i/a/a/h1/j0$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(JI)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lf/i/a/a/h1/j0$a;->a:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    .line 3
    iput-wide p1, p0, Lf/i/a/a/h1/j0$a;->b:J

    return-void
.end method


# virtual methods
.method public a(J)I
    .locals 2

    .line 1
    iget-wide v0, p0, Lf/i/a/a/h1/j0$a;->a:J

    sub-long/2addr p1, v0

    long-to-int p2, p1

    iget-object p1, p0, Lf/i/a/a/h1/j0$a;->d:Lf/i/a/a/l1/d;

    iget p1, p1, Lf/i/a/a/l1/d;->b:I

    add-int/2addr p2, p1

    return p2
.end method
