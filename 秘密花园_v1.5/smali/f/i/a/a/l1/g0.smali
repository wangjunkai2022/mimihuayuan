.class public final Lf/i/a/a/l1/g0;
.super Ljava/lang/Object;
.source "StatsDataSource.java"

# interfaces
.implements Lf/i/a/a/l1/m;


# instance fields
.field public final a:Lf/i/a/a/l1/m;

.field public b:J

.field public c:Landroid/net/Uri;

.field public d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lf/i/a/a/l1/m;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    iput-object p1, p0, Lf/i/a/a/l1/g0;->a:Lf/i/a/a/l1/m;

    .line 3
    sget-object p1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object p1, p0, Lf/i/a/a/l1/g0;->c:Landroid/net/Uri;

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lf/i/a/a/l1/g0;->d:Ljava/util/Map;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 5
    throw p1
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/a/a/l1/g0;->a:Lf/i/a/a/l1/m;

    invoke-interface {v0}, Lf/i/a/a/l1/m;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public b(Lf/i/a/a/l1/p;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lf/i/a/a/l1/p;->a:Landroid/net/Uri;

    iput-object v0, p0, Lf/i/a/a/l1/g0;->c:Landroid/net/Uri;

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lf/i/a/a/l1/g0;->d:Ljava/util/Map;

    .line 3
    iget-object v0, p0, Lf/i/a/a/l1/g0;->a:Lf/i/a/a/l1/m;

    invoke-interface {v0, p1}, Lf/i/a/a/l1/m;->b(Lf/i/a/a/l1/p;)J

    move-result-wide v0

    .line 4
    invoke-virtual {p0}, Lf/i/a/a/l1/g0;->d()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Lc/a/a/b/g/h;->t(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroid/net/Uri;

    iput-object p1, p0, Lf/i/a/a/l1/g0;->c:Landroid/net/Uri;

    .line 5
    invoke-virtual {p0}, Lf/i/a/a/l1/g0;->a()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lf/i/a/a/l1/g0;->d:Ljava/util/Map;

    return-wide v0
.end method

.method public c(Lf/i/a/a/l1/i0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/l1/g0;->a:Lf/i/a/a/l1/m;

    invoke-interface {v0, p1}, Lf/i/a/a/l1/m;->c(Lf/i/a/a/l1/i0;)V

    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/a/a/l1/g0;->a:Lf/i/a/a/l1/m;

    invoke-interface {v0}, Lf/i/a/a/l1/m;->close()V

    return-void
.end method

.method public d()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/a/a/l1/g0;->a:Lf/i/a/a/l1/m;

    invoke-interface {v0}, Lf/i/a/a/l1/m;->d()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/a/a/l1/g0;->a:Lf/i/a/a/l1/m;

    invoke-interface {v0, p1, p2, p3}, Lf/i/a/a/l1/m;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    .line 2
    iget-wide p2, p0, Lf/i/a/a/l1/g0;->b:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lf/i/a/a/l1/g0;->b:J

    :cond_0
    return p1
.end method
