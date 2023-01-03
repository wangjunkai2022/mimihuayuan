.class public final Lf/i/b/c0/a0/b$a;
.super Lf/i/b/z;
.source "CollectionTypeAdapterFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/i/b/c0/a0/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lf/i/b/z<",
        "Ljava/util/Collection<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field public final a:Lf/i/b/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/i/b/z<",
            "TE;>;"
        }
    .end annotation
.end field

.field public final b:Lf/i/b/c0/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/i/b/c0/t<",
            "+",
            "Ljava/util/Collection<",
            "TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lf/i/b/j;Ljava/lang/reflect/Type;Lf/i/b/z;Lf/i/b/c0/t;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/i/b/j;",
            "Ljava/lang/reflect/Type;",
            "Lf/i/b/z<",
            "TE;>;",
            "Lf/i/b/c0/t<",
            "+",
            "Ljava/util/Collection<",
            "TE;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lf/i/b/z;-><init>()V

    .line 2
    new-instance v0, Lf/i/b/c0/a0/n;

    invoke-direct {v0, p1, p3, p2}, Lf/i/b/c0/a0/n;-><init>(Lf/i/b/j;Lf/i/b/z;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lf/i/b/c0/a0/b$a;->a:Lf/i/b/z;

    .line 3
    iput-object p4, p0, Lf/i/b/c0/a0/b$a;->b:Lf/i/b/c0/t;

    return-void
.end method


# virtual methods
.method public a(Lf/i/b/e0/a;)Ljava/lang/Object;
    .locals 2
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

    goto :goto_1

    .line 3
    :cond_0
    iget-object v0, p0, Lf/i/b/c0/a0/b$a;->b:Lf/i/b/c0/t;

    invoke-interface {v0}, Lf/i/b/c0/t;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 4
    invoke-virtual {p1}, Lf/i/b/e0/a;->d()V

    .line 5
    :goto_0
    invoke-virtual {p1}, Lf/i/b/e0/a;->I()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    iget-object v1, p0, Lf/i/b/c0/a0/b$a;->a:Lf/i/b/z;

    invoke-virtual {v1, p1}, Lf/i/b/z;->a(Lf/i/b/e0/a;)Ljava/lang/Object;

    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p1}, Lf/i/b/e0/a;->E()V

    move-object p1, v0

    :goto_1
    return-object p1
.end method

.method public b(Lf/i/b/e0/c;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p2, Ljava/util/Collection;

    if-nez p2, :cond_0

    .line 2
    invoke-virtual {p1}, Lf/i/b/e0/c;->I()Lf/i/b/e0/c;

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {p1}, Lf/i/b/e0/c;->e()Lf/i/b/e0/c;

    .line 4
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lf/i/b/c0/a0/b$a;->a:Lf/i/b/z;

    invoke-virtual {v1, p1, v0}, Lf/i/b/z;->b(Lf/i/b/e0/c;Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p1}, Lf/i/b/e0/c;->E()Lf/i/b/e0/c;

    :goto_1
    return-void
.end method
