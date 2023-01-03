.class public final Ll/h0$b;
.super Ljava/lang/Object;
.source "Retrofit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll/h0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Ll/d0;

.field public b:Li/f$a;

.field public c:Li/x;

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ll/l$a;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ll/e$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    sget-object v0, Ll/d0;->b:Ll/d0;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ll/h0$b;->d:Ljava/util/List;

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ll/h0$b;->e:Ljava/util/List;

    .line 5
    iput-object v0, p0, Ll/h0$b;->a:Ll/d0;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ll/h0$b;
    .locals 3

    const-string v0, "baseUrl == null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Li/x;->f(Ljava/lang/String;)Li/x;

    move-result-object p1

    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    iget-object v0, p1, Li/x;->g:Ljava/util/List;

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iput-object p1, p0, Ll/h0$b;->c:Li/x;

    return-object p0

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "baseUrl must end in /: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()Ll/h0;
    .locals 9

    .line 1
    iget-object v0, p0, Ll/h0$b;->c:Li/x;

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Ll/h0$b;->b:Li/f$a;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Li/b0;

    invoke-direct {v0}, Li/b0;-><init>()V

    :cond_0
    move-object v2, v0

    .line 4
    iget-object v0, p0, Ll/h0$b;->a:Ll/d0;

    invoke-virtual {v0}, Ll/d0;->a()Ljava/util/concurrent/Executor;

    move-result-object v6

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Ll/h0$b;->e:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    iget-object v1, p0, Ll/h0$b;->a:Ll/d0;

    .line 7
    new-instance v3, Ll/m;

    invoke-direct {v3, v6}, Ll/m;-><init>(Ljava/util/concurrent/Executor;)V

    .line 8
    iget-boolean v1, v1, Ll/d0;->a:Z

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    new-array v1, v1, [Ll/e$a;

    const/4 v5, 0x0

    .line 9
    sget-object v7, Ll/i;->a:Ll/e$a;

    aput-object v7, v1, v5

    aput-object v3, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 10
    :cond_1
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 11
    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 12
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Ll/h0$b;->d:Ljava/util/List;

    .line 13
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v3, v4

    iget-object v4, p0, Ll/h0$b;->a:Ll/d0;

    .line 14
    iget-boolean v4, v4, Ll/d0;->a:Z

    add-int/2addr v3, v4

    .line 15
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 16
    new-instance v3, Ll/c;

    invoke-direct {v3}, Ll/c;-><init>()V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    iget-object v3, p0, Ll/h0$b;->d:Ljava/util/List;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 18
    iget-object v3, p0, Ll/h0$b;->a:Ll/d0;

    .line 19
    iget-boolean v3, v3, Ll/d0;->a:Z

    if-eqz v3, :cond_2

    .line 20
    sget-object v3, Ll/z;->a:Ll/l$a;

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    goto :goto_1

    .line 21
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 22
    :goto_1
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 23
    new-instance v8, Ll/h0;

    iget-object v3, p0, Ll/h0$b;->c:Li/x;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 24
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    const/4 v7, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Ll/h0;-><init>(Li/f$a;Li/x;Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/Executor;Z)V

    return-object v8

    .line 25
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Base URL required."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(Li/b0;)Ll/h0$b;
    .locals 1

    const-string v0, "client == null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Li/f$a;

    const-string v0, "factory == null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Li/f$a;

    iput-object p1, p0, Ll/h0$b;->b:Li/f$a;

    return-object p0
.end method
