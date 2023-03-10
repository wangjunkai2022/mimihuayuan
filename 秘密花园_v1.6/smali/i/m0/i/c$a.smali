.class public final Li/m0/i/c$a;
.super Ljava/lang/Object;
.source "Jdk8WithJettyBootPlatform.kt"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/m0/i/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Z

.field public b:Ljava/lang/String;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li/m0/i/c$a;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_f

    if-eqz p2, :cond_e

    const/4 p1, 0x0

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    new-array p3, p1, [Ljava/lang/Object;

    .line 1
    :goto_0
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "supports"

    .line 3
    invoke-static {v1, v3}, Lh/o/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Lh/o/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_1
    const-string v3, "unsupported"

    .line 5
    invoke-static {v1, v3}, Lh/o/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Lh/o/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6
    iput-boolean v4, p0, Li/m0/i/c$a;->a:Z

    return-object v0

    :cond_2
    const-string v3, "protocols"

    .line 7
    invoke-static {v1, v3}, Lh/o/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    array-length v3, p3

    if-nez v3, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_4

    .line 8
    iget-object p1, p0, Li/m0/i/c$a;->c:Ljava/util/List;

    return-object p1

    :cond_4
    const-string v3, "selectProtocol"

    .line 9
    invoke-static {v1, v3}, Lh/o/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const-string v5, "null cannot be cast to non-null type kotlin.String"

    if-nez v3, :cond_5

    const-string v3, "select"

    invoke-static {v1, v3}, Lh/o/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_5
    const-class v3, Ljava/lang/String;

    invoke-static {v3, v2}, Lh/o/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    array-length v2, p3

    if-ne v2, v4, :cond_a

    aget-object v2, p3, p1

    instance-of v2, v2, Ljava/util/List;

    if-eqz v2, :cond_a

    .line 10
    aget-object p2, p3, p1

    if-eqz p2, :cond_9

    check-cast p2, Ljava/util/List;

    .line 11
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ltz p3, :cond_8

    const/4 v0, 0x0

    .line 12
    :goto_2
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7

    check-cast v1, Ljava/lang/String;

    .line 13
    iget-object v2, p0, Li/m0/i/c$a;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 14
    iput-object v1, p0, Li/m0/i/c$a;->b:Ljava/lang/String;

    return-object v1

    :cond_6
    if-eq v0, p3, :cond_8

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 15
    :cond_7
    new-instance p1, Lh/f;

    invoke-direct {p1, v5}, Lh/f;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_8
    iget-object p2, p0, Li/m0/i/c$a;->c:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Li/m0/i/c$a;->b:Ljava/lang/String;

    return-object p1

    .line 17
    :cond_9
    new-instance p1, Lh/f;

    const-string p2, "null cannot be cast to non-null type kotlin.collections.List<*>"

    invoke-direct {p1, p2}, Lh/f;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    const-string v2, "protocolSelected"

    .line 18
    invoke-static {v1, v2}, Lh/o/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "selected"

    invoke-static {v1, v2}, Lh/o/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    :cond_b
    array-length v1, p3

    if-ne v1, v4, :cond_d

    .line 19
    aget-object p1, p3, p1

    if-eqz p1, :cond_c

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Li/m0/i/c$a;->b:Ljava/lang/String;

    return-object v0

    :cond_c
    new-instance p1, Lh/f;

    invoke-direct {p1, v5}, Lh/f;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_d
    array-length p1, p3

    invoke-static {p3, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_e
    const-string p1, "method"

    .line 21
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v0

    :cond_f
    const-string p1, "proxy"

    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v0
.end method
