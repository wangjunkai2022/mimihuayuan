.class public abstract Lcom/umeng/commonsdk/proguard/t;
.super Ljava/lang/Object;
.source "TUnion.java"

# interfaces
.implements Lcom/umeng/commonsdk/proguard/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/commonsdk/proguard/t$c;,
        Lcom/umeng/commonsdk/proguard/t$d;,
        Lcom/umeng/commonsdk/proguard/t$a;,
        Lcom/umeng/commonsdk/proguard/t$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/umeng/commonsdk/proguard/t<",
        "**>;F::",
        "Lcom/umeng/commonsdk/proguard/q;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/umeng/commonsdk/proguard/j<",
        "TT;TF;>;"
    }
.end annotation


# static fields
.field public static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/umeng/commonsdk/proguard/aq;",
            ">;",
            "Lcom/umeng/commonsdk/proguard/ar;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Lcom/umeng/commonsdk/proguard/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TF;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/proguard/t;->c:Ljava/util/Map;

    .line 2
    const-class v1, Lcom/umeng/commonsdk/proguard/as;

    new-instance v2, Lcom/umeng/commonsdk/proguard/t$b;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/umeng/commonsdk/proguard/t$b;-><init>(Lcom/umeng/commonsdk/proguard/t$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lcom/umeng/commonsdk/proguard/t;->c:Ljava/util/Map;

    const-class v1, Lcom/umeng/commonsdk/proguard/at;

    new-instance v2, Lcom/umeng/commonsdk/proguard/t$d;

    invoke-direct {v2, v3}, Lcom/umeng/commonsdk/proguard/t$d;-><init>(Lcom/umeng/commonsdk/proguard/t$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/umeng/commonsdk/proguard/t;->b:Lcom/umeng/commonsdk/proguard/q;

    .line 3
    iput-object v0, p0, Lcom/umeng/commonsdk/proguard/t;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/umeng/commonsdk/proguard/q;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/umeng/commonsdk/proguard/t;->a(Lcom/umeng/commonsdk/proguard/q;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/umeng/commonsdk/proguard/t;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/umeng/commonsdk/proguard/t<",
            "TT;TF;>;)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/umeng/commonsdk/proguard/t;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p1, Lcom/umeng/commonsdk/proguard/t;->b:Lcom/umeng/commonsdk/proguard/q;

    iput-object v0, p0, Lcom/umeng/commonsdk/proguard/t;->b:Lcom/umeng/commonsdk/proguard/q;

    .line 9
    iget-object p1, p1, Lcom/umeng/commonsdk/proguard/t;->a:Ljava/lang/Object;

    invoke-static {p1}, Lcom/umeng/commonsdk/proguard/t;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/commonsdk/proguard/t;->a:Ljava/lang/Object;

    return-void

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    instance-of v0, p0, Lcom/umeng/commonsdk/proguard/j;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lcom/umeng/commonsdk/proguard/j;

    invoke-interface {p0}, Lcom/umeng/commonsdk/proguard/j;->deepCopy()Lcom/umeng/commonsdk/proguard/j;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    instance-of v0, p0, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    .line 4
    check-cast p0, Ljava/nio/ByteBuffer;

    invoke-static {p0}, Lcom/umeng/commonsdk/proguard/k;->d(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0

    .line 5
    :cond_1
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_2

    .line 6
    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Lcom/umeng/commonsdk/proguard/t;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 7
    :cond_2
    instance-of v0, p0, Ljava/util/Set;

    if-eqz v0, :cond_3

    .line 8
    check-cast p0, Ljava/util/Set;

    invoke-static {p0}, Lcom/umeng/commonsdk/proguard/t;->a(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 9
    :cond_3
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_4

    .line 10
    check-cast p0, Ljava/util/Map;

    invoke-static {p0}, Lcom/umeng/commonsdk/proguard/t;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    :cond_4
    return-object p0
.end method

.method public static a(Ljava/util/List;)Ljava/util/List;
    .locals 2

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 18
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 19
    invoke-static {v1}, Lcom/umeng/commonsdk/proguard/t;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static a(Ljava/util/Map;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map;"
        }
    .end annotation

    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 12
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 13
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/umeng/commonsdk/proguard/t;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/commonsdk/proguard/t;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static a(Ljava/util/Set;)Ljava/util/Set;
    .locals 2

    .line 14
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 15
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 16
    invoke-static {v1}, Lcom/umeng/commonsdk/proguard/t;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a()Lcom/umeng/commonsdk/proguard/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TF;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/t;->b:Lcom/umeng/commonsdk/proguard/q;

    return-object v0
.end method

.method public abstract a(S)Lcom/umeng/commonsdk/proguard/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S)TF;"
        }
    .end annotation
.end method

.method public a(I)Ljava/lang/Object;
    .locals 0

    int-to-short p1, p1

    .line 24
    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/proguard/t;->a(S)Lcom/umeng/commonsdk/proguard/q;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/proguard/t;->a(Lcom/umeng/commonsdk/proguard/q;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public abstract a(Lcom/umeng/commonsdk/proguard/ai;Lcom/umeng/commonsdk/proguard/ad;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/p;
        }
    .end annotation
.end method

.method public abstract a(Lcom/umeng/commonsdk/proguard/ai;S)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/p;
        }
    .end annotation
.end method

.method public a(Lcom/umeng/commonsdk/proguard/q;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/t;->b:Lcom/umeng/commonsdk/proguard/q;

    if-ne p1, v0, :cond_0

    .line 22
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/t;->b()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 23
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get the value of field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " because union\'s set field is "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/umeng/commonsdk/proguard/t;->b:Lcom/umeng/commonsdk/proguard/q;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(ILjava/lang/Object;)V
    .locals 0

    int-to-short p1, p1

    .line 28
    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/proguard/t;->a(S)Lcom/umeng/commonsdk/proguard/q;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/umeng/commonsdk/proguard/t;->a(Lcom/umeng/commonsdk/proguard/q;Ljava/lang/Object;)V

    return-void
.end method

.method public abstract a(Lcom/umeng/commonsdk/proguard/ai;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/p;
        }
    .end annotation
.end method

.method public a(Lcom/umeng/commonsdk/proguard/q;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/umeng/commonsdk/proguard/t;->b(Lcom/umeng/commonsdk/proguard/q;Ljava/lang/Object;)V

    .line 26
    iput-object p1, p0, Lcom/umeng/commonsdk/proguard/t;->b:Lcom/umeng/commonsdk/proguard/q;

    .line 27
    iput-object p2, p0, Lcom/umeng/commonsdk/proguard/t;->a:Ljava/lang/Object;

    return-void
.end method

.method public b()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/t;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public abstract b(Lcom/umeng/commonsdk/proguard/ai;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/p;
        }
    .end annotation
.end method

.method public abstract b(Lcom/umeng/commonsdk/proguard/q;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;
        }
    .end annotation
.end method

.method public b(I)Z
    .locals 0

    int-to-short p1, p1

    .line 3
    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/proguard/t;->a(S)Lcom/umeng/commonsdk/proguard/q;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/proguard/t;->b(Lcom/umeng/commonsdk/proguard/q;)Z

    move-result p1

    return p1
.end method

.method public b(Lcom/umeng/commonsdk/proguard/q;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)Z"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/t;->b:Lcom/umeng/commonsdk/proguard/q;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public abstract c(Lcom/umeng/commonsdk/proguard/q;)Lcom/umeng/commonsdk/proguard/ad;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)",
            "Lcom/umeng/commonsdk/proguard/ad;"
        }
    .end annotation
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/t;->b:Lcom/umeng/commonsdk/proguard/q;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final clear()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/umeng/commonsdk/proguard/t;->b:Lcom/umeng/commonsdk/proguard/q;

    .line 2
    iput-object v0, p0, Lcom/umeng/commonsdk/proguard/t;->a:Ljava/lang/Object;

    return-void
.end method

.method public abstract d()Lcom/umeng/commonsdk/proguard/an;
.end method

.method public read(Lcom/umeng/commonsdk/proguard/ai;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/p;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/umeng/commonsdk/proguard/t;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ai;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/commonsdk/proguard/ar;

    invoke-interface {v0}, Lcom/umeng/commonsdk/proguard/ar;->b()Lcom/umeng/commonsdk/proguard/aq;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lcom/umeng/commonsdk/proguard/aq;->b(Lcom/umeng/commonsdk/proguard/ai;Lcom/umeng/commonsdk/proguard/j;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "<"

    .line 1
    invoke-static {v0}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    const-class v1, Lcom/umeng/commonsdk/proguard/t;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/t;->a()Lcom/umeng/commonsdk/proguard/q;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/t;->b()Ljava/lang/Object;

    move-result-object v1

    .line 6
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/t;->a()Lcom/umeng/commonsdk/proguard/q;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/umeng/commonsdk/proguard/t;->c(Lcom/umeng/commonsdk/proguard/q;)Lcom/umeng/commonsdk/proguard/ad;

    move-result-object v2

    iget-object v2, v2, Lcom/umeng/commonsdk/proguard/ad;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    instance-of v2, v1, Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_0

    .line 9
    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-static {v1, v0}, Lcom/umeng/commonsdk/proguard/k;->a(Ljava/nio/ByteBuffer;Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_0
    const-string v1, ">"

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/umeng/commonsdk/proguard/ai;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/p;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/umeng/commonsdk/proguard/t;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ai;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/commonsdk/proguard/ar;

    invoke-interface {v0}, Lcom/umeng/commonsdk/proguard/ar;->b()Lcom/umeng/commonsdk/proguard/aq;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lcom/umeng/commonsdk/proguard/aq;->a(Lcom/umeng/commonsdk/proguard/ai;Lcom/umeng/commonsdk/proguard/j;)V

    return-void
.end method
