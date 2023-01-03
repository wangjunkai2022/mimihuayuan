.class public final Lf/i/a/a/h1/s0/e$a;
.super Ljava/lang/Object;
.source "ChunkExtractorWrapper.java"

# interfaces
.implements Lf/i/a/a/b1/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/i/a/a/h1/s0/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Lf/i/a/a/b0;

.field public final d:Lf/i/a/a/b1/f;

.field public e:Lf/i/a/a/b0;

.field public f:Lf/i/a/a/b1/p;

.field public g:J


# direct methods
.method public constructor <init>(IILf/i/a/a/b0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lf/i/a/a/h1/s0/e$a;->a:I

    .line 3
    iput p2, p0, Lf/i/a/a/h1/s0/e$a;->b:I

    .line 4
    iput-object p3, p0, Lf/i/a/a/h1/s0/e$a;->c:Lf/i/a/a/b0;

    .line 5
    new-instance p1, Lf/i/a/a/b1/f;

    invoke-direct {p1}, Lf/i/a/a/b1/f;-><init>()V

    iput-object p1, p0, Lf/i/a/a/h1/s0/e$a;->d:Lf/i/a/a/b1/f;

    return-void
.end method


# virtual methods
.method public a(Lf/i/a/a/m1/u;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/s0/e$a;->f:Lf/i/a/a/b1/p;

    invoke-interface {v0, p1, p2}, Lf/i/a/a/b1/p;->a(Lf/i/a/a/m1/u;I)V

    return-void
.end method

.method public b(Lf/i/a/a/b1/d;IZ)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/s0/e$a;->f:Lf/i/a/a/b1/p;

    invoke-interface {v0, p1, p2, p3}, Lf/i/a/a/b1/p;->b(Lf/i/a/a/b1/d;IZ)I

    move-result p1

    return p1
.end method

.method public c(JIIILf/i/a/a/b1/p$a;)V
    .locals 8

    .line 1
    iget-wide v0, p0, Lf/i/a/a/h1/s0/e$a;->g:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 2
    iget-object v0, p0, Lf/i/a/a/h1/s0/e$a;->d:Lf/i/a/a/b1/f;

    iput-object v0, p0, Lf/i/a/a/h1/s0/e$a;->f:Lf/i/a/a/b1/p;

    .line 3
    :cond_0
    iget-object v1, p0, Lf/i/a/a/h1/s0/e$a;->f:Lf/i/a/a/b1/p;

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Lf/i/a/a/b1/p;->c(JIIILf/i/a/a/b1/p$a;)V

    return-void
.end method

.method public d(Lf/i/a/a/b0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/s0/e$a;->c:Lf/i/a/a/b0;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lf/i/a/a/b0;->d(Lf/i/a/a/b0;)Lf/i/a/a/b0;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lf/i/a/a/h1/s0/e$a;->e:Lf/i/a/a/b0;

    .line 2
    iget-object v0, p0, Lf/i/a/a/h1/s0/e$a;->f:Lf/i/a/a/b1/p;

    invoke-interface {v0, p1}, Lf/i/a/a/b1/p;->d(Lf/i/a/a/b0;)V

    return-void
.end method

.method public e(Lf/i/a/a/h1/s0/e$b;J)V
    .locals 0

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lf/i/a/a/h1/s0/e$a;->d:Lf/i/a/a/b1/f;

    iput-object p1, p0, Lf/i/a/a/h1/s0/e$a;->f:Lf/i/a/a/b1/p;

    return-void

    .line 2
    :cond_0
    iput-wide p2, p0, Lf/i/a/a/h1/s0/e$a;->g:J

    .line 3
    iget p2, p0, Lf/i/a/a/h1/s0/e$a;->a:I

    iget p3, p0, Lf/i/a/a/h1/s0/e$a;->b:I

    check-cast p1, Lf/i/a/a/h1/s0/c;

    invoke-virtual {p1, p2, p3}, Lf/i/a/a/h1/s0/c;->b(II)Lf/i/a/a/b1/p;

    move-result-object p1

    iput-object p1, p0, Lf/i/a/a/h1/s0/e$a;->f:Lf/i/a/a/b1/p;

    .line 4
    iget-object p2, p0, Lf/i/a/a/h1/s0/e$a;->e:Lf/i/a/a/b0;

    if-eqz p2, :cond_1

    .line 5
    invoke-interface {p1, p2}, Lf/i/a/a/b1/p;->d(Lf/i/a/a/b0;)V

    :cond_1
    return-void
.end method
