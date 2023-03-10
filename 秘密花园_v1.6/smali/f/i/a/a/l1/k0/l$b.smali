.class public final Lf/i/a/a/l1/k0/l$b;
.super Ljava/lang/Object;
.source "CacheUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/i/a/a/l1/k0/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lf/i/a/a/l1/k0/l$a;

.field public b:J

.field public c:J


# direct methods
.method public constructor <init>(Lf/i/a/a/l1/k0/l$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf/i/a/a/l1/k0/l$b;->a:Lf/i/a/a/l1/k0/l$a;

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 8

    .line 1
    iget-wide v0, p0, Lf/i/a/a/l1/k0/l$b;->b:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    cmp-long v0, p1, v2

    if-eqz v0, :cond_0

    .line 2
    iput-wide p1, p0, Lf/i/a/a/l1/k0/l$b;->b:J

    .line 3
    iget-object v1, p0, Lf/i/a/a/l1/k0/l$b;->a:Lf/i/a/a/l1/k0/l$a;

    iget-wide v4, p0, Lf/i/a/a/l1/k0/l$b;->c:J

    const-wide/16 v6, 0x0

    move-wide v2, p1

    invoke-interface/range {v1 .. v7}, Lf/i/a/a/l1/k0/l$a;->a(JJJ)V

    :cond_0
    return-void
.end method
