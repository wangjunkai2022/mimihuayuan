.class public final Lf/i/b/c0/a0/g$a;
.super Lf/i/b/z;
.source "MapTypeAdapterFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/i/b/c0/a0/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lf/i/b/z<",
        "Ljava/util/Map<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public final a:Lf/i/b/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/i/b/z<",
            "TK;>;"
        }
    .end annotation
.end field

.field public final b:Lf/i/b/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/i/b/z<",
            "TV;>;"
        }
    .end annotation
.end field

.field public final c:Lf/i/b/c0/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/i/b/c0/t<",
            "+",
            "Ljava/util/Map<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field public final synthetic d:Lf/i/b/c0/a0/g;


# direct methods
.method public constructor <init>(Lf/i/b/c0/a0/g;Lf/i/b/j;Ljava/lang/reflect/Type;Lf/i/b/z;Ljava/lang/reflect/Type;Lf/i/b/z;Lf/i/b/c0/t;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/i/b/j;",
            "Ljava/lang/reflect/Type;",
            "Lf/i/b/z<",
            "TK;>;",
            "Ljava/lang/reflect/Type;",
            "Lf/i/b/z<",
            "TV;>;",
            "Lf/i/b/c0/t<",
            "+",
            "Ljava/util/Map<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lf/i/b/c0/a0/g$a;->d:Lf/i/b/c0/a0/g;

    invoke-direct {p0}, Lf/i/b/z;-><init>()V

    .line 2
    new-instance p1, Lf/i/b/c0/a0/n;

    invoke-direct {p1, p2, p4, p3}, Lf/i/b/c0/a0/n;-><init>(Lf/i/b/j;Lf/i/b/z;Ljava/lang/reflect/Type;)V

    iput-object p1, p0, Lf/i/b/c0/a0/g$a;->a:Lf/i/b/z;

    .line 3
    new-instance p1, Lf/i/b/c0/a0/n;

    invoke-direct {p1, p2, p6, p5}, Lf/i/b/c0/a0/n;-><init>(Lf/i/b/j;Lf/i/b/z;Ljava/lang/reflect/Type;)V

    iput-object p1, p0, Lf/i/b/c0/a0/g$a;->b:Lf/i/b/z;

    .line 4
    iput-object p7, p0, Lf/i/b/c0/a0/g$a;->c:Lf/i/b/c0/t;

    return-void
.end method


# virtual methods
.method public a(Lf/i/b/e0/a;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lf/i/b/e0/a;->V()Lf/i/b/e0/b;

    move-result-object v0

    .line 2
    sget-object v1, Lf/i/b/e0/b;->i:Lf/i/b/e0/b;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p1}, Lf/i/b/e0/a;->R()V

    goto/16 :goto_4

    .line 4
    :cond_0
    iget-object v1, p0, Lf/i/b/c0/a0/g$a;->c:Lf/i/b/c0/t;

    invoke-interface {v1}, Lf/i/b/c0/t;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 5
    sget-object v3, Lf/i/b/e0/b;->a:Lf/i/b/e0/b;

    const-string v4, "duplicate key: "

    if-ne v0, v3, :cond_3

    .line 6
    invoke-virtual {p1}, Lf/i/b/e0/a;->d()V

    .line 7
    :goto_0
    invoke-virtual {p1}, Lf/i/b/e0/a;->I()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {p1}, Lf/i/b/e0/a;->d()V

    .line 9
    iget-object v0, p0, Lf/i/b/c0/a0/g$a;->a:Lf/i/b/z;

    invoke-virtual {v0, p1}, Lf/i/b/z;->a(Lf/i/b/e0/a;)Ljava/lang/Object;

    move-result-object v0

    .line 10
    iget-object v2, p0, Lf/i/b/c0/a0/g$a;->b:Lf/i/b/z;

    invoke-virtual {v2, p1}, Lf/i/b/z;->a(Lf/i/b/e0/a;)Ljava/lang/Object;

    move-result-object v2

    .line 11
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 12
    invoke-virtual {p1}, Lf/i/b/e0/a;->E()V

    goto :goto_0

    .line 13
    :cond_1
    new-instance p1, Lf/i/b/w;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lf/i/b/w;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_2
    invoke-virtual {p1}, Lf/i/b/e0/a;->E()V

    goto/16 :goto_3

    .line 15
    :cond_3
    invoke-virtual {p1}, Lf/i/b/e0/a;->e()V

    .line 16
    :goto_1
    invoke-virtual {p1}, Lf/i/b/e0/a;->I()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 17
    sget-object v0, Lf/i/b/c0/q;->a:Lf/i/b/c0/q;

    check-cast v0, Lf/i/b/e0/a$a;

    if-eqz v0, :cond_a

    .line 18
    instance-of v0, p1, Lf/i/b/c0/a0/e;

    if-eqz v0, :cond_4

    .line 19
    move-object v0, p1

    check-cast v0, Lf/i/b/c0/a0/e;

    .line 20
    sget-object v3, Lf/i/b/e0/b;->e:Lf/i/b/e0/b;

    invoke-virtual {v0, v3}, Lf/i/b/c0/a0/e;->c0(Lf/i/b/e0/b;)V

    .line 21
    invoke-virtual {v0}, Lf/i/b/c0/a0/e;->d0()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Iterator;

    .line 22
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 23
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Lf/i/b/c0/a0/e;->f0(Ljava/lang/Object;)V

    .line 24
    new-instance v5, Lf/i/b/t;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v5, v3}, Lf/i/b/t;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lf/i/b/c0/a0/e;->f0(Ljava/lang/Object;)V

    goto :goto_2

    .line 25
    :cond_4
    iget v0, p1, Lf/i/b/e0/a;->h:I

    if-nez v0, :cond_5

    .line 26
    invoke-virtual {p1}, Lf/i/b/e0/a;->g()I

    move-result v0

    :cond_5
    const/16 v3, 0xd

    if-ne v0, v3, :cond_6

    const/16 v0, 0x9

    .line 27
    iput v0, p1, Lf/i/b/e0/a;->h:I

    goto :goto_2

    :cond_6
    const/16 v3, 0xc

    if-ne v0, v3, :cond_7

    const/16 v0, 0x8

    .line 28
    iput v0, p1, Lf/i/b/e0/a;->h:I

    goto :goto_2

    :cond_7
    const/16 v3, 0xe

    if-ne v0, v3, :cond_9

    const/16 v0, 0xa

    .line 29
    iput v0, p1, Lf/i/b/e0/a;->h:I

    .line 30
    :goto_2
    iget-object v0, p0, Lf/i/b/c0/a0/g$a;->a:Lf/i/b/z;

    invoke-virtual {v0, p1}, Lf/i/b/z;->a(Lf/i/b/e0/a;)Ljava/lang/Object;

    move-result-object v0

    .line 31
    iget-object v3, p0, Lf/i/b/c0/a0/g$a;->b:Lf/i/b/z;

    invoke-virtual {v3, p1}, Lf/i/b/z;->a(Lf/i/b/e0/a;)Ljava/lang/Object;

    move-result-object v3

    .line 32
    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_8

    goto :goto_1

    .line 33
    :cond_8
    new-instance p1, Lf/i/b/w;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lf/i/b/w;-><init>(Ljava/lang/String;)V

    throw p1

    .line 34
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Expected a name but was "

    invoke-static {v1}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 35
    invoke-virtual {p1}, Lf/i/b/e0/a;->V()Lf/i/b/e0/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lf/i/b/e0/a;->K()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_a
    throw v2

    .line 37
    :cond_b
    invoke-virtual {p1}, Lf/i/b/e0/a;->F()V

    :goto_3
    move-object v2, v1

    :goto_4
    return-object v2
.end method

.method public b(Lf/i/b/e0/c;Ljava/lang/Object;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p2, Ljava/util/Map;

    if-nez p2, :cond_0

    .line 2
    invoke-virtual {p1}, Lf/i/b/e0/c;->I()Lf/i/b/e0/c;

    goto/16 :goto_7

    .line 3
    :cond_0
    iget-object v0, p0, Lf/i/b/c0/a0/g$a;->d:Lf/i/b/c0/a0/g;

    iget-boolean v0, v0, Lf/i/b/c0/a0/g;->b:Z

    if-nez v0, :cond_2

    .line 4
    invoke-virtual {p1}, Lf/i/b/e0/c;->f()Lf/i/b/e0/c;

    .line 5
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lf/i/b/e0/c;->G(Ljava/lang/String;)Lf/i/b/e0/c;

    .line 7
    iget-object v1, p0, Lf/i/b/c0/a0/g$a;->b:Lf/i/b/z;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lf/i/b/z;->b(Lf/i/b/e0/c;Ljava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p1}, Lf/i/b/e0/c;->F()Lf/i/b/e0/c;

    goto/16 :goto_7

    .line 9
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 11
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 12
    iget-object v6, p0, Lf/i/b/c0/a0/g$a;->a:Lf/i/b/z;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    if-eqz v6, :cond_7

    .line 13
    :try_start_0
    new-instance v8, Lf/i/b/c0/a0/f;

    invoke-direct {v8}, Lf/i/b/c0/a0/f;-><init>()V

    .line 14
    invoke-virtual {v6, v8, v7}, Lf/i/b/z;->b(Lf/i/b/e0/c;Ljava/lang/Object;)V

    .line 15
    iget-object v6, v8, Lf/i/b/c0/a0/f;->l:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 16
    iget-object v6, v8, Lf/i/b/c0/a0/f;->n:Lf/i/b/o;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v6, :cond_5

    .line 19
    instance-of v4, v6, Lf/i/b/l;

    if-nez v4, :cond_4

    .line 20
    instance-of v4, v6, Lf/i/b/r;

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v4, 0x1

    :goto_3
    or-int/2addr v3, v4

    goto :goto_1

    .line 21
    :cond_5
    throw v5

    .line 22
    :cond_6
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Expected one JSON element but was "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v8, Lf/i/b/c0/a0/f;->l:Ljava/util/List;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    .line 23
    new-instance p2, Lf/i/b/p;

    invoke-direct {p2, p1}, Lf/i/b/p;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 24
    :cond_7
    throw v5

    :cond_8
    if-eqz v3, :cond_a

    .line 25
    invoke-virtual {p1}, Lf/i/b/e0/c;->e()Lf/i/b/e0/c;

    .line 26
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    :goto_4
    if-ge v2, p2, :cond_9

    .line 27
    invoke-virtual {p1}, Lf/i/b/e0/c;->e()Lf/i/b/e0/c;

    .line 28
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf/i/b/o;

    .line 29
    sget-object v4, Lf/i/b/c0/a0/o;->X:Lf/i/b/z;

    invoke-virtual {v4, p1, v3}, Lf/i/b/z;->b(Lf/i/b/e0/c;Ljava/lang/Object;)V

    .line 30
    iget-object v3, p0, Lf/i/b/c0/a0/g$a;->b:Lf/i/b/z;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lf/i/b/z;->b(Lf/i/b/e0/c;Ljava/lang/Object;)V

    .line 31
    invoke-virtual {p1}, Lf/i/b/e0/c;->E()Lf/i/b/e0/c;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 32
    :cond_9
    invoke-virtual {p1}, Lf/i/b/e0/c;->E()Lf/i/b/e0/c;

    goto :goto_7

    .line 33
    :cond_a
    invoke-virtual {p1}, Lf/i/b/e0/c;->f()Lf/i/b/e0/c;

    .line 34
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    :goto_5
    if-ge v2, p2, :cond_11

    .line 35
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf/i/b/o;

    if-eqz v3, :cond_10

    .line 36
    instance-of v4, v3, Lf/i/b/t;

    if-eqz v4, :cond_e

    .line 37
    invoke-virtual {v3}, Lf/i/b/o;->b()Lf/i/b/t;

    move-result-object v3

    .line 38
    iget-object v4, v3, Lf/i/b/t;->a:Ljava/lang/Object;

    instance-of v6, v4, Ljava/lang/Number;

    if-eqz v6, :cond_b

    .line 39
    invoke-virtual {v3}, Lf/i/b/t;->d()Ljava/lang/Number;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    .line 40
    :cond_b
    instance-of v6, v4, Ljava/lang/Boolean;

    if-eqz v6, :cond_c

    .line 41
    invoke-virtual {v3}, Lf/i/b/t;->c()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    .line 42
    :cond_c
    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_d

    .line 43
    invoke-virtual {v3}, Lf/i/b/t;->e()Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    .line 44
    :cond_d
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 45
    :cond_e
    instance-of v3, v3, Lf/i/b/q;

    if-eqz v3, :cond_f

    const-string v3, "null"

    .line 46
    :goto_6
    invoke-virtual {p1, v3}, Lf/i/b/e0/c;->G(Ljava/lang/String;)Lf/i/b/e0/c;

    .line 47
    iget-object v3, p0, Lf/i/b/c0/a0/g$a;->b:Lf/i/b/z;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lf/i/b/z;->b(Lf/i/b/e0/c;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 48
    :cond_f
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 49
    :cond_10
    throw v5

    .line 50
    :cond_11
    invoke-virtual {p1}, Lf/i/b/e0/c;->F()Lf/i/b/e0/c;

    :goto_7
    return-void
.end method
