.class public final Lf/i/b/c0/a0/o$u;
.super Lf/i/b/z;
.source "TypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/i/b/c0/a0/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lf/i/b/z<",
        "Lf/i/b/o;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/i/b/z;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lf/i/b/e0/a;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lf/i/b/c0/a0/o$u;->c(Lf/i/b/e0/a;)Lf/i/b/o;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(Lf/i/b/e0/c;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p2, Lf/i/b/o;

    invoke-virtual {p0, p1, p2}, Lf/i/b/c0/a0/o$u;->d(Lf/i/b/e0/c;Lf/i/b/o;)V

    return-void
.end method

.method public c(Lf/i/b/e0/a;)Lf/i/b/o;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lf/i/b/e0/a;->V()Lf/i/b/e0/b;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p1}, Lf/i/b/e0/a;->R()V

    .line 3
    sget-object p1, Lf/i/b/q;->a:Lf/i/b/q;

    return-object p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 5
    :cond_1
    new-instance v0, Lf/i/b/t;

    invoke-virtual {p1}, Lf/i/b/e0/a;->L()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {v0, p1}, Lf/i/b/t;-><init>(Ljava/lang/Boolean;)V

    return-object v0

    .line 6
    :cond_2
    invoke-virtual {p1}, Lf/i/b/e0/a;->T()Ljava/lang/String;

    move-result-object p1

    .line 7
    new-instance v0, Lf/i/b/t;

    new-instance v1, Lf/i/b/c0/r;

    invoke-direct {v1, p1}, Lf/i/b/c0/r;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lf/i/b/t;-><init>(Ljava/lang/Number;)V

    return-object v0

    .line 8
    :cond_3
    new-instance v0, Lf/i/b/t;

    invoke-virtual {p1}, Lf/i/b/e0/a;->T()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lf/i/b/t;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 9
    :cond_4
    new-instance v0, Lf/i/b/r;

    invoke-direct {v0}, Lf/i/b/r;-><init>()V

    .line 10
    invoke-virtual {p1}, Lf/i/b/e0/a;->e()V

    .line 11
    :goto_0
    invoke-virtual {p1}, Lf/i/b/e0/a;->I()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 12
    invoke-virtual {p1}, Lf/i/b/e0/a;->P()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lf/i/b/c0/a0/o$u;->c(Lf/i/b/e0/a;)Lf/i/b/o;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lf/i/b/r;->c(Ljava/lang/String;Lf/i/b/o;)V

    goto :goto_0

    .line 13
    :cond_5
    invoke-virtual {p1}, Lf/i/b/e0/a;->F()V

    return-object v0

    .line 14
    :cond_6
    new-instance v0, Lf/i/b/l;

    invoke-direct {v0}, Lf/i/b/l;-><init>()V

    .line 15
    invoke-virtual {p1}, Lf/i/b/e0/a;->d()V

    .line 16
    :goto_1
    invoke-virtual {p1}, Lf/i/b/e0/a;->I()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 17
    invoke-virtual {p0, p1}, Lf/i/b/c0/a0/o$u;->c(Lf/i/b/e0/a;)Lf/i/b/o;

    move-result-object v1

    .line 18
    iget-object v2, v0, Lf/i/b/l;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 19
    :cond_7
    invoke-virtual {p1}, Lf/i/b/e0/a;->E()V

    return-object v0
.end method

.method public d(Lf/i/b/e0/c;Lf/i/b/o;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_a

    .line 1
    instance-of v0, p2, Lf/i/b/q;

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    instance-of v0, p2, Lf/i/b/t;

    if-eqz v0, :cond_3

    .line 3
    invoke-virtual {p2}, Lf/i/b/o;->b()Lf/i/b/t;

    move-result-object p2

    .line 4
    iget-object v0, p2, Lf/i/b/t;->a:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p2}, Lf/i/b/t;->d()Ljava/lang/Number;

    move-result-object p2

    invoke-virtual {p1, p2}, Lf/i/b/e0/c;->P(Ljava/lang/Number;)Lf/i/b/e0/c;

    goto/16 :goto_3

    .line 6
    :cond_1
    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p2}, Lf/i/b/t;->c()Z

    move-result p2

    invoke-virtual {p1, p2}, Lf/i/b/e0/c;->R(Z)Lf/i/b/e0/c;

    goto/16 :goto_3

    .line 8
    :cond_2
    invoke-virtual {p2}, Lf/i/b/t;->e()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lf/i/b/e0/c;->Q(Ljava/lang/String;)Lf/i/b/e0/c;

    goto/16 :goto_3

    .line 9
    :cond_3
    instance-of v0, p2, Lf/i/b/l;

    if-eqz v0, :cond_6

    .line 10
    invoke-virtual {p1}, Lf/i/b/e0/c;->e()Lf/i/b/e0/c;

    if-eqz v0, :cond_5

    .line 11
    check-cast p2, Lf/i/b/l;

    .line 12
    invoke-virtual {p2}, Lf/i/b/l;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/i/b/o;

    .line 13
    invoke-virtual {p0, p1, v0}, Lf/i/b/c0/a0/o$u;->d(Lf/i/b/e0/c;Lf/i/b/o;)V

    goto :goto_0

    .line 14
    :cond_4
    invoke-virtual {p1}, Lf/i/b/e0/c;->E()Lf/i/b/e0/c;

    goto/16 :goto_3

    .line 15
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not a JSON Array: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_6
    instance-of v0, p2, Lf/i/b/r;

    if-eqz v0, :cond_9

    .line 17
    invoke-virtual {p1}, Lf/i/b/e0/c;->f()Lf/i/b/e0/c;

    if-eqz v0, :cond_8

    .line 18
    check-cast p2, Lf/i/b/r;

    .line 19
    iget-object p2, p2, Lf/i/b/r;->a:Lf/i/b/c0/s;

    invoke-virtual {p2}, Lf/i/b/c0/s;->entrySet()Ljava/util/Set;

    move-result-object p2

    .line 20
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 21
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lf/i/b/e0/c;->G(Ljava/lang/String;)Lf/i/b/e0/c;

    .line 22
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/i/b/o;

    invoke-virtual {p0, p1, v0}, Lf/i/b/c0/a0/o$u;->d(Lf/i/b/e0/c;Lf/i/b/o;)V

    goto :goto_1

    .line 23
    :cond_7
    invoke-virtual {p1}, Lf/i/b/e0/c;->F()Lf/i/b/e0/c;

    goto :goto_3

    .line 24
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not a JSON Object: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Couldn\'t write "

    invoke-static {v0}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 26
    :cond_a
    :goto_2
    invoke-virtual {p1}, Lf/i/b/e0/c;->I()Lf/i/b/e0/c;

    :goto_3
    return-void
.end method
