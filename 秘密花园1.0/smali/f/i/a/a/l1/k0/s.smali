.class public final Lf/i/a/a/l1/k0/s;
.super Ljava/lang/Object;
.source "LeastRecentlyUsedCacheEvictor.java"

# interfaces
.implements Lf/i/a/a/l1/k0/g;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf/i/a/a/l1/k0/g;",
        "Ljava/util/Comparator<",
        "Lf/i/a/a/l1/k0/k;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:J

.field public final b:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Lf/i/a/a/l1/k0/k;",
            ">;"
        }
    .end annotation
.end field

.field public c:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lf/i/a/a/l1/k0/s;->a:J

    .line 3
    new-instance p1, Ljava/util/TreeSet;

    invoke-direct {p1, p0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object p1, p0, Lf/i/a/a/l1/k0/s;->b:Ljava/util/TreeSet;

    return-void
.end method


# virtual methods
.method public a(Lf/i/a/a/l1/k0/b;Lf/i/a/a/l1/k0/k;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lf/i/a/a/l1/k0/s;->b:Ljava/util/TreeSet;

    invoke-virtual {p1, p2}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 2
    iget-wide v0, p0, Lf/i/a/a/l1/k0/s;->c:J

    iget-wide p1, p2, Lf/i/a/a/l1/k0/k;->c:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lf/i/a/a/l1/k0/s;->c:J

    return-void
.end method

.method public b(Lf/i/a/a/l1/k0/b;Lf/i/a/a/l1/k0/k;Lf/i/a/a/l1/k0/k;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lf/i/a/a/l1/k0/s;->b:Ljava/util/TreeSet;

    invoke-virtual {v0, p2}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 2
    iget-wide v0, p0, Lf/i/a/a/l1/k0/s;->c:J

    iget-wide v2, p2, Lf/i/a/a/l1/k0/k;->c:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lf/i/a/a/l1/k0/s;->c:J

    .line 3
    invoke-virtual {p0, p1, p3}, Lf/i/a/a/l1/k0/s;->c(Lf/i/a/a/l1/k0/b;Lf/i/a/a/l1/k0/k;)V

    return-void
.end method

.method public c(Lf/i/a/a/l1/k0/b;Lf/i/a/a/l1/k0/k;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lf/i/a/a/l1/k0/s;->b:Ljava/util/TreeSet;

    invoke-virtual {v0, p2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 2
    iget-wide v0, p0, Lf/i/a/a/l1/k0/s;->c:J

    iget-wide v2, p2, Lf/i/a/a/l1/k0/k;->c:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lf/i/a/a/l1/k0/s;->c:J

    const-wide/16 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, v0, v1}, Lf/i/a/a/l1/k0/s;->g(Lf/i/a/a/l1/k0/b;J)V

    return-void
.end method

.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 9

    .line 1
    check-cast p1, Lf/i/a/a/l1/k0/k;

    check-cast p2, Lf/i/a/a/l1/k0/k;

    .line 2
    iget-wide v0, p1, Lf/i/a/a/l1/k0/k;->f:J

    iget-wide v2, p2, Lf/i/a/a/l1/k0/k;->f:J

    sub-long v4, v0, v2

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-nez v8, :cond_0

    .line 3
    invoke-virtual {p1, p2}, Lf/i/a/a/l1/k0/k;->a(Lf/i/a/a/l1/k0/k;)I

    move-result p1

    goto :goto_0

    :cond_0
    cmp-long p1, v0, v2

    if-gez p1, :cond_1

    const/4 p1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public f(Lf/i/a/a/l1/k0/b;Ljava/lang/String;JJ)V
    .locals 0

    const-wide/16 p2, -0x1

    cmp-long p4, p5, p2

    if-eqz p4, :cond_0

    .line 1
    invoke-virtual {p0, p1, p5, p6}, Lf/i/a/a/l1/k0/s;->g(Lf/i/a/a/l1/k0/b;J)V

    :cond_0
    return-void
.end method

.method public final g(Lf/i/a/a/l1/k0/b;J)V
    .locals 5

    .line 1
    :goto_0
    iget-wide v0, p0, Lf/i/a/a/l1/k0/s;->c:J

    add-long/2addr v0, p2

    iget-wide v2, p0, Lf/i/a/a/l1/k0/s;->a:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-object v0, p0, Lf/i/a/a/l1/k0/s;->b:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lf/i/a/a/l1/k0/s;->b:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/i/a/a/l1/k0/k;

    invoke-interface {p1, v0}, Lf/i/a/a/l1/k0/b;->e(Lf/i/a/a/l1/k0/k;)V
    :try_end_0
    .catch Lf/i/a/a/l1/k0/b$a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :cond_0
    return-void
.end method
