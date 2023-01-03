.class public final Lf/i/a/a/l1/h0;
.super Ljava/lang/Object;
.source "TeeDataSource.java"

# interfaces
.implements Lf/i/a/a/l1/m;


# instance fields
.field public final a:Lf/i/a/a/l1/m;

.field public final b:Lf/i/a/a/l1/k;

.field public c:Z

.field public d:J


# direct methods
.method public constructor <init>(Lf/i/a/a/l1/m;Lf/i/a/a/l1/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    iput-object p1, p0, Lf/i/a/a/l1/h0;->a:Lf/i/a/a/l1/m;

    .line 3
    iput-object p2, p0, Lf/i/a/a/l1/h0;->b:Lf/i/a/a/l1/k;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 4
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
    iget-object v0, p0, Lf/i/a/a/l1/h0;->a:Lf/i/a/a/l1/m;

    invoke-interface {v0}, Lf/i/a/a/l1/m;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public b(Lf/i/a/a/l1/p;)J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/a/a/l1/h0;->a:Lf/i/a/a/l1/m;

    invoke-interface {v0, p1}, Lf/i/a/a/l1/m;->b(Lf/i/a/a/l1/p;)J

    move-result-wide v0

    iput-wide v0, p0, Lf/i/a/a/l1/h0;->d:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-wide v2

    .line 2
    :cond_0
    iget-wide v4, p1, Lf/i/a/a/l1/p;->f:J

    const-wide/16 v6, -0x1

    cmp-long v8, v4, v6

    if-nez v8, :cond_1

    cmp-long v4, v0, v6

    if-eqz v4, :cond_1

    .line 3
    invoke-virtual {p1, v2, v3, v0, v1}, Lf/i/a/a/l1/p;->d(JJ)Lf/i/a/a/l1/p;

    move-result-object p1

    :cond_1
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lf/i/a/a/l1/h0;->c:Z

    .line 5
    iget-object v0, p0, Lf/i/a/a/l1/h0;->b:Lf/i/a/a/l1/k;

    invoke-interface {v0, p1}, Lf/i/a/a/l1/k;->b(Lf/i/a/a/l1/p;)V

    .line 6
    iget-wide v0, p0, Lf/i/a/a/l1/h0;->d:J

    return-wide v0
.end method

.method public c(Lf/i/a/a/l1/i0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/l1/h0;->a:Lf/i/a/a/l1/m;

    invoke-interface {v0, p1}, Lf/i/a/a/l1/m;->c(Lf/i/a/a/l1/i0;)V

    return-void
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lf/i/a/a/l1/h0;->a:Lf/i/a/a/l1/m;

    invoke-interface {v1}, Lf/i/a/a/l1/m;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iget-boolean v1, p0, Lf/i/a/a/l1/h0;->c:Z

    if-eqz v1, :cond_0

    .line 3
    iput-boolean v0, p0, Lf/i/a/a/l1/h0;->c:Z

    .line 4
    iget-object v0, p0, Lf/i/a/a/l1/h0;->b:Lf/i/a/a/l1/k;

    invoke-interface {v0}, Lf/i/a/a/l1/k;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 5
    iget-boolean v2, p0, Lf/i/a/a/l1/h0;->c:Z

    if-eqz v2, :cond_1

    .line 6
    iput-boolean v0, p0, Lf/i/a/a/l1/h0;->c:Z

    .line 7
    iget-object v0, p0, Lf/i/a/a/l1/h0;->b:Lf/i/a/a/l1/k;

    invoke-interface {v0}, Lf/i/a/a/l1/k;->close()V

    .line 8
    :cond_1
    throw v1
.end method

.method public d()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/a/a/l1/h0;->a:Lf/i/a/a/l1/m;

    invoke-interface {v0}, Lf/i/a/a/l1/m;->d()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public read([BII)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lf/i/a/a/l1/h0;->d:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p1, -0x1

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Lf/i/a/a/l1/h0;->a:Lf/i/a/a/l1/m;

    invoke-interface {v0, p1, p2, p3}, Lf/i/a/a/l1/m;->read([BII)I

    move-result p3

    if-lez p3, :cond_1

    .line 3
    iget-object v0, p0, Lf/i/a/a/l1/h0;->b:Lf/i/a/a/l1/k;

    invoke-interface {v0, p1, p2, p3}, Lf/i/a/a/l1/k;->a([BII)V

    .line 4
    iget-wide p1, p0, Lf/i/a/a/l1/h0;->d:J

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1

    int-to-long v0, p3

    sub-long/2addr p1, v0

    .line 5
    iput-wide p1, p0, Lf/i/a/a/l1/h0;->d:J

    :cond_1
    return p3
.end method
