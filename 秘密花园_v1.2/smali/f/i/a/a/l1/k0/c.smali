.class public final Lf/i/a/a/l1/k0/c;
.super Ljava/lang/Object;
.source "CacheDataSink.java"

# interfaces
.implements Lf/i/a/a/l1/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/i/a/a/l1/k0/c$a;
    }
.end annotation


# instance fields
.field public final a:Lf/i/a/a/l1/k0/b;

.field public final b:J

.field public final c:I

.field public d:Lf/i/a/a/l1/p;

.field public e:J

.field public f:Ljava/io/File;

.field public g:Ljava/io/OutputStream;

.field public h:Ljava/io/FileOutputStream;

.field public i:J

.field public j:J

.field public k:Lf/i/a/a/m1/y;


# direct methods
.method public constructor <init>(Lf/i/a/a/l1/k0/b;JI)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    const-wide/16 v2, 0x0

    cmp-long v4, p2, v2

    if-gtz v4, :cond_1

    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    const-string v3, "fragmentSize must be positive or C.LENGTH_UNSET."

    .line 2
    invoke-static {v2, v3}, Lc/a/a/b/g/h;->w(ZLjava/lang/Object;)V

    cmp-long v2, p2, v0

    if-eqz v2, :cond_2

    const-wide/32 v0, 0x200000

    cmp-long v3, p2, v0

    :cond_2
    if-eqz p1, :cond_4

    .line 3
    iput-object p1, p0, Lf/i/a/a/l1/k0/c;->a:Lf/i/a/a/l1/k0/b;

    if-nez v2, :cond_3

    const-wide p2, 0x7fffffffffffffffL

    .line 4
    :cond_3
    iput-wide p2, p0, Lf/i/a/a/l1/k0/c;->b:J

    .line 5
    iput p4, p0, Lf/i/a/a/l1/k0/c;->c:I

    return-void

    :cond_4
    const/4 p1, 0x0

    .line 6
    throw p1
.end method


# virtual methods
.method public a([BII)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/l1/k0/c$a;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/a/a/l1/k0/c;->d:Lf/i/a/a/l1/p;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_2

    .line 2
    :try_start_0
    iget-wide v1, p0, Lf/i/a/a/l1/k0/c;->i:J

    iget-wide v3, p0, Lf/i/a/a/l1/k0/c;->e:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    .line 3
    invoke-virtual {p0}, Lf/i/a/a/l1/k0/c;->c()V

    .line 4
    invoke-virtual {p0}, Lf/i/a/a/l1/k0/c;->d()V

    :cond_1
    sub-int v1, p3, v0

    int-to-long v1, v1

    .line 5
    iget-wide v3, p0, Lf/i/a/a/l1/k0/c;->e:J

    iget-wide v5, p0, Lf/i/a/a/l1/k0/c;->i:J

    sub-long/2addr v3, v5

    .line 6
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v2, v1

    .line 7
    iget-object v1, p0, Lf/i/a/a/l1/k0/c;->g:Ljava/io/OutputStream;

    add-int v3, p2, v0

    invoke-virtual {v1, p1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    add-int/2addr v0, v2

    .line 8
    iget-wide v3, p0, Lf/i/a/a/l1/k0/c;->i:J

    int-to-long v1, v2

    add-long/2addr v3, v1

    iput-wide v3, p0, Lf/i/a/a/l1/k0/c;->i:J

    .line 9
    iget-wide v3, p0, Lf/i/a/a/l1/k0/c;->j:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lf/i/a/a/l1/k0/c;->j:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    new-instance p2, Lf/i/a/a/l1/k0/c$a;

    invoke-direct {p2, p1}, Lf/i/a/a/l1/k0/c$a;-><init>(Ljava/io/IOException;)V

    throw p2

    :cond_2
    return-void
.end method

.method public b(Lf/i/a/a/l1/p;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/l1/k0/c$a;
        }
    .end annotation

    .line 1
    iget-wide v0, p1, Lf/i/a/a/l1/p;->f:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x4

    .line 2
    invoke-virtual {p1, v0}, Lf/i/a/a/l1/p;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lf/i/a/a/l1/k0/c;->d:Lf/i/a/a/l1/p;

    return-void

    .line 4
    :cond_0
    iput-object p1, p0, Lf/i/a/a/l1/k0/c;->d:Lf/i/a/a/l1/p;

    const/16 v0, 0x10

    .line 5
    invoke-virtual {p1, v0}, Lf/i/a/a/l1/p;->b(I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-wide v0, p0, Lf/i/a/a/l1/k0/c;->b:J

    goto :goto_0

    :cond_1
    const-wide v0, 0x7fffffffffffffffL

    :goto_0
    iput-wide v0, p0, Lf/i/a/a/l1/k0/c;->e:J

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lf/i/a/a/l1/k0/c;->j:J

    .line 7
    :try_start_0
    invoke-virtual {p0}, Lf/i/a/a/l1/k0/c;->d()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 8
    new-instance v0, Lf/i/a/a/l1/k0/c$a;

    invoke-direct {v0, p1}, Lf/i/a/a/l1/k0/c$a;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public final c()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/a/a/l1/k0/c;->g:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iget-object v0, p0, Lf/i/a/a/l1/k0/c;->g:Ljava/io/OutputStream;

    invoke-static {v0}, Lf/i/a/a/m1/h0;->l(Ljava/io/Closeable;)V

    .line 4
    iput-object v1, p0, Lf/i/a/a/l1/k0/c;->g:Ljava/io/OutputStream;

    .line 5
    iget-object v0, p0, Lf/i/a/a/l1/k0/c;->f:Ljava/io/File;

    .line 6
    iput-object v1, p0, Lf/i/a/a/l1/k0/c;->f:Ljava/io/File;

    .line 7
    iget-object v1, p0, Lf/i/a/a/l1/k0/c;->a:Lf/i/a/a/l1/k0/b;

    iget-wide v2, p0, Lf/i/a/a/l1/k0/c;->i:J

    invoke-interface {v1, v0, v2, v3}, Lf/i/a/a/l1/k0/b;->b(Ljava/io/File;J)V

    return-void

    :catchall_0
    move-exception v0

    .line 8
    iget-object v2, p0, Lf/i/a/a/l1/k0/c;->g:Ljava/io/OutputStream;

    invoke-static {v2}, Lf/i/a/a/m1/h0;->l(Ljava/io/Closeable;)V

    .line 9
    iput-object v1, p0, Lf/i/a/a/l1/k0/c;->g:Ljava/io/OutputStream;

    .line 10
    iget-object v2, p0, Lf/i/a/a/l1/k0/c;->f:Ljava/io/File;

    .line 11
    iput-object v1, p0, Lf/i/a/a/l1/k0/c;->f:Ljava/io/File;

    .line 12
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 13
    throw v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/l1/k0/c$a;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/a/a/l1/k0/c;->d:Lf/i/a/a/l1/p;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lf/i/a/a/l1/k0/c;->c()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 3
    new-instance v1, Lf/i/a/a/l1/k0/c$a;

    invoke-direct {v1, v0}, Lf/i/a/a/l1/k0/c$a;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public final d()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/a/a/l1/k0/c;->d:Lf/i/a/a/l1/p;

    iget-wide v0, v0, Lf/i/a/a/l1/p;->f:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lf/i/a/a/l1/k0/c;->j:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lf/i/a/a/l1/k0/c;->e:J

    .line 2
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    :goto_0
    move-wide v8, v2

    .line 3
    iget-object v4, p0, Lf/i/a/a/l1/k0/c;->a:Lf/i/a/a/l1/k0/b;

    iget-object v0, p0, Lf/i/a/a/l1/k0/c;->d:Lf/i/a/a/l1/p;

    iget-object v5, v0, Lf/i/a/a/l1/p;->g:Ljava/lang/String;

    iget-wide v0, v0, Lf/i/a/a/l1/p;->d:J

    iget-wide v2, p0, Lf/i/a/a/l1/k0/c;->j:J

    add-long v6, v0, v2

    .line 4
    invoke-interface/range {v4 .. v9}, Lf/i/a/a/l1/k0/b;->a(Ljava/lang/String;JJ)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lf/i/a/a/l1/k0/c;->f:Ljava/io/File;

    .line 5
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lf/i/a/a/l1/k0/c;->f:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lf/i/a/a/l1/k0/c;->h:Ljava/io/FileOutputStream;

    .line 6
    iget v1, p0, Lf/i/a/a/l1/k0/c;->c:I

    if-lez v1, :cond_2

    .line 7
    iget-object v1, p0, Lf/i/a/a/l1/k0/c;->k:Lf/i/a/a/m1/y;

    if-nez v1, :cond_1

    .line 8
    new-instance v0, Lf/i/a/a/m1/y;

    iget-object v1, p0, Lf/i/a/a/l1/k0/c;->h:Ljava/io/FileOutputStream;

    iget v2, p0, Lf/i/a/a/l1/k0/c;->c:I

    invoke-direct {v0, v1, v2}, Lf/i/a/a/m1/y;-><init>(Ljava/io/OutputStream;I)V

    iput-object v0, p0, Lf/i/a/a/l1/k0/c;->k:Lf/i/a/a/m1/y;

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {v1, v0}, Lf/i/a/a/m1/y;->d(Ljava/io/OutputStream;)V

    .line 10
    :goto_1
    iget-object v0, p0, Lf/i/a/a/l1/k0/c;->k:Lf/i/a/a/m1/y;

    iput-object v0, p0, Lf/i/a/a/l1/k0/c;->g:Ljava/io/OutputStream;

    goto :goto_2

    .line 11
    :cond_2
    iput-object v0, p0, Lf/i/a/a/l1/k0/c;->g:Ljava/io/OutputStream;

    :goto_2
    const-wide/16 v0, 0x0

    .line 12
    iput-wide v0, p0, Lf/i/a/a/l1/k0/c;->i:J

    return-void
.end method
