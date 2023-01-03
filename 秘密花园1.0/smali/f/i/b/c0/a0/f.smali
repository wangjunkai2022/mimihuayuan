.class public final Lf/i/b/c0/a0/f;
.super Lf/i/b/e0/c;
.source "JsonTreeWriter.java"


# static fields
.field public static final o:Ljava/io/Writer;

.field public static final p:Lf/i/b/t;


# instance fields
.field public final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf/i/b/o;",
            ">;"
        }
    .end annotation
.end field

.field public m:Ljava/lang/String;

.field public n:Lf/i/b/o;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lf/i/b/c0/a0/f$a;

    invoke-direct {v0}, Lf/i/b/c0/a0/f$a;-><init>()V

    sput-object v0, Lf/i/b/c0/a0/f;->o:Ljava/io/Writer;

    .line 2
    new-instance v0, Lf/i/b/t;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Lf/i/b/t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lf/i/b/c0/a0/f;->p:Lf/i/b/t;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lf/i/b/c0/a0/f;->o:Ljava/io/Writer;

    invoke-direct {p0, v0}, Lf/i/b/e0/c;-><init>(Ljava/io/Writer;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lf/i/b/c0/a0/f;->l:Ljava/util/List;

    .line 3
    sget-object v0, Lf/i/b/q;->a:Lf/i/b/q;

    iput-object v0, p0, Lf/i/b/c0/a0/f;->n:Lf/i/b/o;

    return-void
.end method


# virtual methods
.method public E()Lf/i/b/e0/c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/b/c0/a0/f;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lf/i/b/c0/a0/f;->m:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lf/i/b/c0/a0/f;->T()Lf/i/b/o;

    move-result-object v0

    .line 3
    instance-of v0, v0, Lf/i/b/l;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lf/i/b/c0/a0/f;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object p0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public F()Lf/i/b/e0/c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/b/c0/a0/f;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lf/i/b/c0/a0/f;->m:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lf/i/b/c0/a0/f;->T()Lf/i/b/o;

    move-result-object v0

    .line 3
    instance-of v0, v0, Lf/i/b/r;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lf/i/b/c0/a0/f;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object p0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public G(Ljava/lang/String;)Lf/i/b/e0/c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/b/c0/a0/f;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lf/i/b/c0/a0/f;->m:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lf/i/b/c0/a0/f;->T()Lf/i/b/o;

    move-result-object v0

    .line 3
    instance-of v0, v0, Lf/i/b/r;

    if-eqz v0, :cond_0

    .line 4
    iput-object p1, p0, Lf/i/b/c0/a0/f;->m:Ljava/lang/String;

    return-object p0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public I()Lf/i/b/e0/c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lf/i/b/q;->a:Lf/i/b/q;

    invoke-virtual {p0, v0}, Lf/i/b/c0/a0/f;->U(Lf/i/b/o;)V

    return-object p0
.end method

.method public N(J)Lf/i/b/e0/c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lf/i/b/t;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {v0, p1}, Lf/i/b/t;-><init>(Ljava/lang/Number;)V

    invoke-virtual {p0, v0}, Lf/i/b/c0/a0/f;->U(Lf/i/b/o;)V

    return-object p0
.end method

.method public O(Ljava/lang/Boolean;)Lf/i/b/e0/c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lf/i/b/q;->a:Lf/i/b/q;

    invoke-virtual {p0, p1}, Lf/i/b/c0/a0/f;->U(Lf/i/b/o;)V

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lf/i/b/t;

    invoke-direct {v0, p1}, Lf/i/b/t;-><init>(Ljava/lang/Boolean;)V

    invoke-virtual {p0, v0}, Lf/i/b/c0/a0/f;->U(Lf/i/b/o;)V

    return-object p0
.end method

.method public P(Ljava/lang/Number;)Lf/i/b/e0/c;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lf/i/b/q;->a:Lf/i/b/q;

    invoke-virtual {p0, p1}, Lf/i/b/c0/a0/f;->U(Lf/i/b/o;)V

    return-object p0

    .line 2
    :cond_0
    iget-boolean v0, p0, Lf/i/b/e0/c;->f:Z

    if-nez v0, :cond_2

    .line 3
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSON forbids NaN and infinities: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_2
    :goto_0
    new-instance v0, Lf/i/b/t;

    invoke-direct {v0, p1}, Lf/i/b/t;-><init>(Ljava/lang/Number;)V

    invoke-virtual {p0, v0}, Lf/i/b/c0/a0/f;->U(Lf/i/b/o;)V

    return-object p0
.end method

.method public Q(Ljava/lang/String;)Lf/i/b/e0/c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lf/i/b/q;->a:Lf/i/b/q;

    invoke-virtual {p0, p1}, Lf/i/b/c0/a0/f;->U(Lf/i/b/o;)V

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lf/i/b/t;

    invoke-direct {v0, p1}, Lf/i/b/t;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lf/i/b/c0/a0/f;->U(Lf/i/b/o;)V

    return-object p0
.end method

.method public R(Z)Lf/i/b/e0/c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lf/i/b/t;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {v0, p1}, Lf/i/b/t;-><init>(Ljava/lang/Boolean;)V

    invoke-virtual {p0, v0}, Lf/i/b/c0/a0/f;->U(Lf/i/b/o;)V

    return-object p0
.end method

.method public final T()Lf/i/b/o;
    .locals 2

    .line 1
    iget-object v0, p0, Lf/i/b/c0/a0/f;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/i/b/o;

    return-object v0
.end method

.method public final U(Lf/i/b/o;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lf/i/b/c0/a0/f;->m:Ljava/lang/String;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 2
    instance-of v1, p1, Lf/i/b/q;

    if-eqz v1, :cond_0

    .line 3
    iget-boolean v1, p0, Lf/i/b/e0/c;->i:Z

    if-eqz v1, :cond_1

    .line 4
    :cond_0
    invoke-virtual {p0}, Lf/i/b/c0/a0/f;->T()Lf/i/b/o;

    move-result-object v1

    check-cast v1, Lf/i/b/r;

    .line 5
    iget-object v2, p0, Lf/i/b/c0/a0/f;->m:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Lf/i/b/r;->c(Ljava/lang/String;Lf/i/b/o;)V

    .line 6
    :cond_1
    iput-object v0, p0, Lf/i/b/c0/a0/f;->m:Ljava/lang/String;

    goto :goto_0

    .line 7
    :cond_2
    iget-object v0, p0, Lf/i/b/c0/a0/f;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    iput-object p1, p0, Lf/i/b/c0/a0/f;->n:Lf/i/b/o;

    goto :goto_0

    .line 9
    :cond_3
    invoke-virtual {p0}, Lf/i/b/c0/a0/f;->T()Lf/i/b/o;

    move-result-object v0

    .line 10
    instance-of v1, v0, Lf/i/b/l;

    if-eqz v1, :cond_4

    .line 11
    check-cast v0, Lf/i/b/l;

    .line 12
    iget-object v0, v0, Lf/i/b/l;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    .line 13
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/b/c0/a0/f;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lf/i/b/c0/a0/f;->l:Ljava/util/List;

    sget-object v1, Lf/i/b/c0/a0/f;->p:Lf/i/b/t;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Incomplete document"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e()Lf/i/b/e0/c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lf/i/b/l;

    invoke-direct {v0}, Lf/i/b/l;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Lf/i/b/c0/a0/f;->U(Lf/i/b/o;)V

    .line 3
    iget-object v1, p0, Lf/i/b/c0/a0/f;->l:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public f()Lf/i/b/e0/c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lf/i/b/r;

    invoke-direct {v0}, Lf/i/b/r;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Lf/i/b/c0/a0/f;->U(Lf/i/b/o;)V

    .line 3
    iget-object v1, p0, Lf/i/b/c0/a0/f;->l:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method
