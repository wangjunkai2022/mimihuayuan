.class public final Lf/i/b/c0/a0/j$a;
.super Lf/i/b/z;
.source "ReflectiveTypeAdapterFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/i/b/c0/a0/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lf/i/b/z<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lf/i/b/c0/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/i/b/c0/t<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lf/i/b/c0/a0/j$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lf/i/b/c0/t;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/i/b/c0/t<",
            "TT;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lf/i/b/c0/a0/j$b;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lf/i/b/z;-><init>()V

    .line 2
    iput-object p1, p0, Lf/i/b/c0/a0/j$a;->a:Lf/i/b/c0/t;

    .line 3
    iput-object p2, p0, Lf/i/b/c0/a0/j$a;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(Lf/i/b/e0/a;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/i/b/e0/a;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lf/i/b/e0/a;->V()Lf/i/b/e0/b;

    move-result-object v0

    sget-object v1, Lf/i/b/e0/b;->i:Lf/i/b/e0/b;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p1}, Lf/i/b/e0/a;->R()V

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lf/i/b/c0/a0/j$a;->a:Lf/i/b/c0/t;

    invoke-interface {v0}, Lf/i/b/c0/t;->a()Ljava/lang/Object;

    move-result-object v0

    .line 4
    :try_start_0
    invoke-virtual {p1}, Lf/i/b/e0/a;->e()V

    .line 5
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lf/i/b/e0/a;->I()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 6
    invoke-virtual {p1}, Lf/i/b/e0/a;->P()Ljava/lang/String;

    move-result-object v1

    .line 7
    iget-object v2, p0, Lf/i/b/c0/a0/j$a;->b:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/i/b/c0/a0/j$b;

    if-eqz v1, :cond_4

    .line 8
    iget-boolean v2, v1, Lf/i/b/c0/a0/j$b;->c:Z

    if-nez v2, :cond_2

    goto :goto_1

    .line 9
    :cond_2
    check-cast v1, Lf/i/b/c0/a0/i;

    .line 10
    iget-object v2, v1, Lf/i/b/c0/a0/i;->f:Lf/i/b/z;

    invoke-virtual {v2, p1}, Lf/i/b/z;->a(Lf/i/b/e0/a;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    .line 11
    iget-boolean v3, v1, Lf/i/b/c0/a0/i;->i:Z

    if-nez v3, :cond_1

    .line 12
    :cond_3
    iget-object v1, v1, Lf/i/b/c0/a0/i;->d:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 13
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lf/i/b/e0/a;->a0()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 14
    :cond_5
    invoke-virtual {p1}, Lf/i/b/e0/a;->F()V

    return-object v0

    :catch_0
    move-exception p1

    .line 15
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :catch_1
    move-exception p1

    .line 16
    new-instance v0, Lf/i/b/w;

    invoke-direct {v0, p1}, Lf/i/b/w;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public b(Lf/i/b/e0/c;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/i/b/e0/c;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1
    invoke-virtual {p1}, Lf/i/b/e0/c;->I()Lf/i/b/e0/c;

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lf/i/b/e0/c;->f()Lf/i/b/e0/c;

    .line 3
    :try_start_0
    iget-object v0, p0, Lf/i/b/c0/a0/j$a;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/i/b/c0/a0/j$b;

    .line 4
    move-object v2, v1

    check-cast v2, Lf/i/b/c0/a0/i;

    .line 5
    iget-boolean v3, v2, Lf/i/b/c0/a0/j$b;->b:Z

    const/4 v4, 0x0

    if-nez v3, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    iget-object v2, v2, Lf/i/b/c0/a0/i;->d:Ljava/lang/reflect/Field;

    invoke-virtual {v2, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p2, :cond_3

    const/4 v4, 0x1

    :cond_3
    :goto_1
    if-eqz v4, :cond_1

    .line 7
    iget-object v2, v1, Lf/i/b/c0/a0/j$b;->a:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lf/i/b/e0/c;->G(Ljava/lang/String;)Lf/i/b/e0/c;

    .line 8
    check-cast v1, Lf/i/b/c0/a0/i;

    .line 9
    iget-object v2, v1, Lf/i/b/c0/a0/i;->d:Ljava/lang/reflect/Field;

    invoke-virtual {v2, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 10
    iget-boolean v3, v1, Lf/i/b/c0/a0/i;->e:Z

    if-eqz v3, :cond_4

    iget-object v1, v1, Lf/i/b/c0/a0/i;->f:Lf/i/b/z;

    goto :goto_2

    :cond_4
    new-instance v3, Lf/i/b/c0/a0/n;

    iget-object v4, v1, Lf/i/b/c0/a0/i;->g:Lf/i/b/j;

    iget-object v5, v1, Lf/i/b/c0/a0/i;->f:Lf/i/b/z;

    iget-object v1, v1, Lf/i/b/c0/a0/i;->h:Lf/i/b/d0/a;

    .line 11
    iget-object v1, v1, Lf/i/b/d0/a;->b:Ljava/lang/reflect/Type;

    .line 12
    invoke-direct {v3, v4, v5, v1}, Lf/i/b/c0/a0/n;-><init>(Lf/i/b/j;Lf/i/b/z;Ljava/lang/reflect/Type;)V

    move-object v1, v3

    .line 13
    :goto_2
    invoke-virtual {v1, p1, v2}, Lf/i/b/z;->b(Lf/i/b/e0/c;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 14
    :cond_5
    invoke-virtual {p1}, Lf/i/b/e0/c;->F()Lf/i/b/e0/c;

    return-void

    :catch_0
    move-exception p1

    .line 15
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method
