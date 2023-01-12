.class public final Lf/i/a/a/h1/s$a;
.super Ljava/lang/Object;
.source "CompositeMediaSource.java"

# interfaces
.implements Lf/i/a/a/h1/f0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/i/a/a/h1/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public b:Lf/i/a/a/h1/f0$a;

.field public final synthetic c:Lf/i/a/a/h1/s;


# direct methods
.method public constructor <init>(Lf/i/a/a/h1/s;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lf/i/a/a/h1/s$a;->c:Lf/i/a/a/h1/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Lf/i/a/a/h1/o;->j(Lf/i/a/a/h1/e0$a;)Lf/i/a/a/h1/f0$a;

    move-result-object p1

    iput-object p1, p0, Lf/i/a/a/h1/s$a;->b:Lf/i/a/a/h1/f0$a;

    .line 3
    iput-object p2, p0, Lf/i/a/a/h1/s$a;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(ILf/i/a/a/h1/e0$a;)Z
    .locals 3
    .param p2    # Lf/i/a/a/h1/e0$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_0

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/s$a;->c:Lf/i/a/a/h1/s;

    iget-object v1, p0, Lf/i/a/a/h1/s$a;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, p2}, Lf/i/a/a/h1/s;->o(Ljava/lang/Object;Lf/i/a/a/h1/e0$a;)Lf/i/a/a/h1/e0$a;

    move-result-object p2

    if-nez p2, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p2, 0x0

    .line 2
    :cond_1
    iget-object v0, p0, Lf/i/a/a/h1/s$a;->c:Lf/i/a/a/h1/s;

    iget-object v1, p0, Lf/i/a/a/h1/s$a;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lf/i/a/a/h1/s;->s(Ljava/lang/Object;I)I

    move-result p1

    .line 3
    iget-object v0, p0, Lf/i/a/a/h1/s$a;->b:Lf/i/a/a/h1/f0$a;

    iget v1, v0, Lf/i/a/a/h1/f0$a;->a:I

    if-ne v1, p1, :cond_2

    iget-object v0, v0, Lf/i/a/a/h1/f0$a;->b:Lf/i/a/a/h1/e0$a;

    .line 4
    invoke-static {v0, p2}, Lf/i/a/a/m1/h0;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 5
    :cond_2
    iget-object v0, p0, Lf/i/a/a/h1/s$a;->c:Lf/i/a/a/h1/s;

    const-wide/16 v1, 0x0

    .line 6
    iget-object v0, v0, Lf/i/a/a/h1/o;->b:Lf/i/a/a/h1/f0$a;

    invoke-virtual {v0, p1, p2, v1, v2}, Lf/i/a/a/h1/f0$a;->D(ILf/i/a/a/h1/e0$a;J)Lf/i/a/a/h1/f0$a;

    move-result-object p1

    .line 7
    iput-object p1, p0, Lf/i/a/a/h1/s$a;->b:Lf/i/a/a/h1/f0$a;

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public final b(Lf/i/a/a/h1/f0$c;)Lf/i/a/a/h1/f0$c;
    .locals 14

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/s$a;->c:Lf/i/a/a/h1/s;

    iget-object v1, p0, Lf/i/a/a/h1/s$a;->a:Ljava/lang/Object;

    iget-wide v2, p1, Lf/i/a/a/h1/f0$c;->f:J

    invoke-virtual {v0, v1, v2, v3}, Lf/i/a/a/h1/s;->q(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 2
    iget-object v0, p0, Lf/i/a/a/h1/s$a;->c:Lf/i/a/a/h1/s;

    iget-object v1, p0, Lf/i/a/a/h1/s$a;->a:Ljava/lang/Object;

    iget-wide v2, p1, Lf/i/a/a/h1/f0$c;->g:J

    invoke-virtual {v0, v1, v2, v3}, Lf/i/a/a/h1/s;->q(Ljava/lang/Object;J)J

    move-result-wide v12

    .line 3
    iget-wide v0, p1, Lf/i/a/a/h1/f0$c;->f:J

    cmp-long v2, v10, v0

    if-nez v2, :cond_0

    iget-wide v0, p1, Lf/i/a/a/h1/f0$c;->g:J

    cmp-long v2, v12, v0

    if-nez v2, :cond_0

    return-object p1

    .line 4
    :cond_0
    new-instance v0, Lf/i/a/a/h1/f0$c;

    iget v5, p1, Lf/i/a/a/h1/f0$c;->a:I

    iget v6, p1, Lf/i/a/a/h1/f0$c;->b:I

    iget-object v7, p1, Lf/i/a/a/h1/f0$c;->c:Lf/i/a/a/b0;

    iget v8, p1, Lf/i/a/a/h1/f0$c;->d:I

    iget-object v9, p1, Lf/i/a/a/h1/f0$c;->e:Ljava/lang/Object;

    move-object v4, v0

    invoke-direct/range {v4 .. v13}, Lf/i/a/a/h1/f0$c;-><init>(IILf/i/a/a/b0;ILjava/lang/Object;JJ)V

    return-object v0
.end method

.method public e(ILf/i/a/a/h1/e0$a;Lf/i/a/a/h1/f0$b;Lf/i/a/a/h1/f0$c;)V
    .locals 0
    .param p2    # Lf/i/a/a/h1/e0$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1, p2}, Lf/i/a/a/h1/s$a;->a(ILf/i/a/a/h1/e0$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lf/i/a/a/h1/s$a;->b:Lf/i/a/a/h1/f0$a;

    invoke-virtual {p0, p4}, Lf/i/a/a/h1/s$a;->b(Lf/i/a/a/h1/f0$c;)Lf/i/a/a/h1/f0$c;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lf/i/a/a/h1/f0$a;->v(Lf/i/a/a/h1/f0$b;Lf/i/a/a/h1/f0$c;)V

    :cond_0
    return-void
.end method

.method public f(ILf/i/a/a/h1/e0$a;Lf/i/a/a/h1/f0$b;Lf/i/a/a/h1/f0$c;Ljava/io/IOException;Z)V
    .locals 0
    .param p2    # Lf/i/a/a/h1/e0$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1, p2}, Lf/i/a/a/h1/s$a;->a(ILf/i/a/a/h1/e0$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lf/i/a/a/h1/s$a;->b:Lf/i/a/a/h1/f0$a;

    .line 3
    invoke-virtual {p0, p4}, Lf/i/a/a/h1/s$a;->b(Lf/i/a/a/h1/f0$c;)Lf/i/a/a/h1/f0$c;

    move-result-object p2

    .line 4
    invoke-virtual {p1, p3, p2, p5, p6}, Lf/i/a/a/h1/f0$a;->s(Lf/i/a/a/h1/f0$b;Lf/i/a/a/h1/f0$c;Ljava/io/IOException;Z)V

    :cond_0
    return-void
.end method

.method public i(ILf/i/a/a/h1/e0$a;Lf/i/a/a/h1/f0$b;Lf/i/a/a/h1/f0$c;)V
    .locals 0
    .param p2    # Lf/i/a/a/h1/e0$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1, p2}, Lf/i/a/a/h1/s$a;->a(ILf/i/a/a/h1/e0$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lf/i/a/a/h1/s$a;->b:Lf/i/a/a/h1/f0$a;

    invoke-virtual {p0, p4}, Lf/i/a/a/h1/s$a;->b(Lf/i/a/a/h1/f0$c;)Lf/i/a/a/h1/f0$c;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lf/i/a/a/h1/f0$a;->p(Lf/i/a/a/h1/f0$b;Lf/i/a/a/h1/f0$c;)V

    :cond_0
    return-void
.end method

.method public l(ILf/i/a/a/h1/e0$a;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lf/i/a/a/h1/s$a;->a(ILf/i/a/a/h1/e0$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lf/i/a/a/h1/s$a;->b:Lf/i/a/a/h1/f0$a;

    invoke-virtual {p1}, Lf/i/a/a/h1/f0$a;->z()V

    :cond_0
    return-void
.end method

.method public n(ILf/i/a/a/h1/e0$a;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lf/i/a/a/h1/s$a;->a(ILf/i/a/a/h1/e0$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lf/i/a/a/h1/s$a;->b:Lf/i/a/a/h1/f0$a;

    invoke-virtual {p1}, Lf/i/a/a/h1/f0$a;->B()V

    :cond_0
    return-void
.end method

.method public o(ILf/i/a/a/h1/e0$a;Lf/i/a/a/h1/f0$b;Lf/i/a/a/h1/f0$c;)V
    .locals 0
    .param p2    # Lf/i/a/a/h1/e0$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1, p2}, Lf/i/a/a/h1/s$a;->a(ILf/i/a/a/h1/e0$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lf/i/a/a/h1/s$a;->b:Lf/i/a/a/h1/f0$a;

    invoke-virtual {p0, p4}, Lf/i/a/a/h1/s$a;->b(Lf/i/a/a/h1/f0$c;)Lf/i/a/a/h1/f0$c;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lf/i/a/a/h1/f0$a;->m(Lf/i/a/a/h1/f0$b;Lf/i/a/a/h1/f0$c;)V

    :cond_0
    return-void
.end method

.method public p(ILf/i/a/a/h1/e0$a;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lf/i/a/a/h1/s$a;->a(ILf/i/a/a/h1/e0$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lf/i/a/a/h1/s$a;->b:Lf/i/a/a/h1/f0$a;

    invoke-virtual {p1}, Lf/i/a/a/h1/f0$a;->y()V

    :cond_0
    return-void
.end method

.method public x(ILf/i/a/a/h1/e0$a;Lf/i/a/a/h1/f0$c;)V
    .locals 0
    .param p2    # Lf/i/a/a/h1/e0$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1, p2}, Lf/i/a/a/h1/s$a;->a(ILf/i/a/a/h1/e0$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lf/i/a/a/h1/s$a;->b:Lf/i/a/a/h1/f0$a;

    invoke-virtual {p0, p3}, Lf/i/a/a/h1/s$a;->b(Lf/i/a/a/h1/f0$c;)Lf/i/a/a/h1/f0$c;

    move-result-object p2

    invoke-virtual {p1, p2}, Lf/i/a/a/h1/f0$a;->C(Lf/i/a/a/h1/f0$c;)V

    :cond_0
    return-void
.end method

.method public y(ILf/i/a/a/h1/e0$a;Lf/i/a/a/h1/f0$c;)V
    .locals 0
    .param p2    # Lf/i/a/a/h1/e0$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1, p2}, Lf/i/a/a/h1/s$a;->a(ILf/i/a/a/h1/e0$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lf/i/a/a/h1/s$a;->b:Lf/i/a/a/h1/f0$a;

    invoke-virtual {p0, p3}, Lf/i/a/a/h1/s$a;->b(Lf/i/a/a/h1/f0$c;)Lf/i/a/a/h1/f0$c;

    move-result-object p2

    invoke-virtual {p1, p2}, Lf/i/a/a/h1/f0$a;->c(Lf/i/a/a/h1/f0$c;)V

    :cond_0
    return-void
.end method
