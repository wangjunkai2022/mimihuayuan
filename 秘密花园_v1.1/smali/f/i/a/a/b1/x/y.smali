.class public final Lf/i/a/a/b1/x/y;
.super Ljava/lang/Object;
.source "SpliceInfoSectionReader.java"

# interfaces
.implements Lf/i/a/a/b1/x/v;


# instance fields
.field public a:Lf/i/a/a/m1/e0;

.field public b:Lf/i/a/a/b1/p;

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lf/i/a/a/m1/e0;Lf/i/a/a/b1/h;Lf/i/a/a/b1/x/c0$d;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lf/i/a/a/b1/x/y;->a:Lf/i/a/a/m1/e0;

    .line 2
    invoke-virtual {p3}, Lf/i/a/a/b1/x/c0$d;->a()V

    .line 3
    invoke-virtual {p3}, Lf/i/a/a/b1/x/c0$d;->c()I

    move-result p1

    const/4 v0, 0x4

    invoke-interface {p2, p1, v0}, Lf/i/a/a/b1/h;->q(II)Lf/i/a/a/b1/p;

    move-result-object p1

    iput-object p1, p0, Lf/i/a/a/b1/x/y;->b:Lf/i/a/a/b1/p;

    .line 4
    invoke-virtual {p3}, Lf/i/a/a/b1/x/c0$d;->b()Ljava/lang/String;

    move-result-object p2

    const-string p3, "application/x-scte35"

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-static {p2, p3, v0, v1, v0}, Lf/i/a/a/b0;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILf/i/a/a/z0/e;)Lf/i/a/a/b0;

    move-result-object p2

    invoke-interface {p1, p2}, Lf/i/a/a/b1/p;->d(Lf/i/a/a/b0;)V

    return-void
.end method

.method public c(Lf/i/a/a/m1/u;)V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lf/i/a/a/b1/x/y;->c:Z

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lf/i/a/a/b1/x/y;->a:Lf/i/a/a/m1/e0;

    invoke-virtual {v0}, Lf/i/a/a/m1/e0;->c()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lf/i/a/a/b1/x/y;->b:Lf/i/a/a/b1/p;

    const/4 v3, 0x0

    iget-object v4, p0, Lf/i/a/a/b1/x/y;->a:Lf/i/a/a/m1/e0;

    .line 4
    invoke-virtual {v4}, Lf/i/a/a/m1/e0;->c()J

    move-result-wide v4

    const-string v6, "application/x-scte35"

    .line 5
    invoke-static {v3, v6, v4, v5}, Lf/i/a/a/b0;->m(Ljava/lang/String;Ljava/lang/String;J)Lf/i/a/a/b0;

    move-result-object v3

    invoke-interface {v0, v3}, Lf/i/a/a/b1/p;->d(Lf/i/a/a/b0;)V

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lf/i/a/a/b1/x/y;->c:Z

    .line 7
    :cond_1
    invoke-virtual {p1}, Lf/i/a/a/m1/u;->a()I

    move-result v7

    .line 8
    iget-object v0, p0, Lf/i/a/a/b1/x/y;->b:Lf/i/a/a/b1/p;

    invoke-interface {v0, p1, v7}, Lf/i/a/a/b1/p;->a(Lf/i/a/a/m1/u;I)V

    .line 9
    iget-object v3, p0, Lf/i/a/a/b1/x/y;->b:Lf/i/a/a/b1/p;

    iget-object p1, p0, Lf/i/a/a/b1/x/y;->a:Lf/i/a/a/m1/e0;

    .line 10
    iget-wide v4, p1, Lf/i/a/a/m1/e0;->c:J

    cmp-long v0, v4, v1

    if-eqz v0, :cond_2

    iget-wide v0, p1, Lf/i/a/a/m1/e0;->c:J

    iget-wide v4, p1, Lf/i/a/a/m1/e0;->b:J

    add-long v1, v4, v0

    goto :goto_0

    :cond_2
    iget-wide v4, p1, Lf/i/a/a/m1/e0;->a:J

    const-wide v8, 0x7fffffffffffffffL

    cmp-long p1, v4, v8

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    move-wide v4, v1

    :goto_1
    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 11
    invoke-interface/range {v3 .. v9}, Lf/i/a/a/b1/p;->c(JIIILf/i/a/a/b1/p$a;)V

    return-void
.end method
