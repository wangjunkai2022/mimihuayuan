.class public final Lf/i/b/j;
.super Ljava/lang/Object;
.source "Gson.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/i/b/j$a;
    }
.end annotation


# static fields
.field public static final k:Lf/i/b/d0/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/i/b/d0/a<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Map<",
            "Lf/i/b/d0/a<",
            "*>;",
            "Lf/i/b/j$a<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lf/i/b/d0/a<",
            "*>;",
            "Lf/i/b/z<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final c:Lf/i/b/c0/g;

.field public final d:Lf/i/b/c0/a0/d;

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf/i/b/a0;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Z

.field public final g:Z

.field public final h:Z

.field public final i:Z

.field public final j:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Ljava/lang/Object;

    .line 2
    new-instance v1, Lf/i/b/d0/a;

    invoke-direct {v1, v0}, Lf/i/b/d0/a;-><init>(Ljava/lang/reflect/Type;)V

    .line 3
    sput-object v1, Lf/i/b/j;->k:Lf/i/b/d0/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .line 1
    sget-object v0, Lf/i/b/c0/o;->f:Lf/i/b/c0/o;

    sget-object v1, Lf/i/b/c;->a:Lf/i/b/c;

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    sget-object v3, Lf/i/b/x;->a:Lf/i/b/x;

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v5, Ljava/lang/ThreadLocal;

    invoke-direct {v5}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v5, p0, Lf/i/b/j;->a:Ljava/lang/ThreadLocal;

    .line 7
    new-instance v5, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v5, p0, Lf/i/b/j;->b:Ljava/util/Map;

    .line 8
    new-instance v5, Lf/i/b/c0/g;

    invoke-direct {v5, v2}, Lf/i/b/c0/g;-><init>(Ljava/util/Map;)V

    iput-object v5, p0, Lf/i/b/j;->c:Lf/i/b/c0/g;

    const/4 v2, 0x0

    .line 9
    iput-boolean v2, p0, Lf/i/b/j;->f:Z

    .line 10
    iput-boolean v2, p0, Lf/i/b/j;->g:Z

    const/4 v5, 0x1

    .line 11
    iput-boolean v5, p0, Lf/i/b/j;->h:Z

    .line 12
    iput-boolean v2, p0, Lf/i/b/j;->i:Z

    .line 13
    iput-boolean v2, p0, Lf/i/b/j;->j:Z

    .line 14
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 15
    sget-object v6, Lf/i/b/c0/a0/o;->Y:Lf/i/b/a0;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    sget-object v6, Lf/i/b/c0/a0/h;->b:Lf/i/b/a0;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 19
    sget-object v4, Lf/i/b/c0/a0/o;->D:Lf/i/b/a0;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    sget-object v4, Lf/i/b/c0/a0/o;->m:Lf/i/b/a0;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    sget-object v4, Lf/i/b/c0/a0/o;->g:Lf/i/b/a0;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    sget-object v4, Lf/i/b/c0/a0/o;->i:Lf/i/b/a0;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    sget-object v4, Lf/i/b/c0/a0/o;->k:Lf/i/b/a0;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    sget-object v4, Lf/i/b/x;->a:Lf/i/b/x;

    if-ne v3, v4, :cond_0

    .line 25
    sget-object v3, Lf/i/b/c0/a0/o;->t:Lf/i/b/z;

    goto :goto_0

    .line 26
    :cond_0
    new-instance v3, Lf/i/b/g;

    invoke-direct {v3}, Lf/i/b/g;-><init>()V

    .line 27
    :goto_0
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v6, Ljava/lang/Long;

    .line 28
    new-instance v7, Lf/i/b/c0/a0/q;

    invoke-direct {v7, v4, v6, v3}, Lf/i/b/c0/a0/q;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lf/i/b/z;)V

    .line 29
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v6, Ljava/lang/Double;

    .line 31
    new-instance v7, Lf/i/b/e;

    invoke-direct {v7, p0}, Lf/i/b/e;-><init>(Lf/i/b/j;)V

    .line 32
    new-instance v8, Lf/i/b/c0/a0/q;

    invoke-direct {v8, v4, v6, v7}, Lf/i/b/c0/a0/q;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lf/i/b/z;)V

    .line 33
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v6, Ljava/lang/Float;

    .line 35
    new-instance v7, Lf/i/b/f;

    invoke-direct {v7, p0}, Lf/i/b/f;-><init>(Lf/i/b/j;)V

    .line 36
    new-instance v8, Lf/i/b/c0/a0/q;

    invoke-direct {v8, v4, v6, v7}, Lf/i/b/c0/a0/q;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lf/i/b/z;)V

    .line 37
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    sget-object v4, Lf/i/b/c0/a0/o;->x:Lf/i/b/a0;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    sget-object v4, Lf/i/b/c0/a0/o;->o:Lf/i/b/a0;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    sget-object v4, Lf/i/b/c0/a0/o;->q:Lf/i/b/a0;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    const-class v4, Ljava/util/concurrent/atomic/AtomicLong;

    .line 42
    new-instance v6, Lf/i/b/h;

    invoke-direct {v6, v3}, Lf/i/b/h;-><init>(Lf/i/b/z;)V

    .line 43
    new-instance v7, Lf/i/b/y;

    invoke-direct {v7, v6}, Lf/i/b/y;-><init>(Lf/i/b/z;)V

    .line 44
    new-instance v6, Lf/i/b/c0/a0/p;

    invoke-direct {v6, v4, v7}, Lf/i/b/c0/a0/p;-><init>(Ljava/lang/Class;Lf/i/b/z;)V

    .line 45
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    const-class v4, Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 47
    new-instance v6, Lf/i/b/i;

    invoke-direct {v6, v3}, Lf/i/b/i;-><init>(Lf/i/b/z;)V

    .line 48
    new-instance v3, Lf/i/b/y;

    invoke-direct {v3, v6}, Lf/i/b/y;-><init>(Lf/i/b/z;)V

    .line 49
    new-instance v6, Lf/i/b/c0/a0/p;

    invoke-direct {v6, v4, v3}, Lf/i/b/c0/a0/p;-><init>(Ljava/lang/Class;Lf/i/b/z;)V

    .line 50
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v3, Lf/i/b/c0/a0/o;->s:Lf/i/b/a0;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v3, Lf/i/b/c0/a0/o;->z:Lf/i/b/a0;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v3, Lf/i/b/c0/a0/o;->F:Lf/i/b/a0;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object v3, Lf/i/b/c0/a0/o;->H:Lf/i/b/a0;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    const-class v3, Ljava/math/BigDecimal;

    sget-object v4, Lf/i/b/c0/a0/o;->B:Lf/i/b/z;

    .line 56
    new-instance v6, Lf/i/b/c0/a0/p;

    invoke-direct {v6, v3, v4}, Lf/i/b/c0/a0/p;-><init>(Ljava/lang/Class;Lf/i/b/z;)V

    .line 57
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    const-class v3, Ljava/math/BigInteger;

    sget-object v4, Lf/i/b/c0/a0/o;->C:Lf/i/b/z;

    .line 59
    new-instance v6, Lf/i/b/c0/a0/p;

    invoke-direct {v6, v3, v4}, Lf/i/b/c0/a0/p;-><init>(Ljava/lang/Class;Lf/i/b/z;)V

    .line 60
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object v3, Lf/i/b/c0/a0/o;->J:Lf/i/b/a0;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object v3, Lf/i/b/c0/a0/o;->L:Lf/i/b/a0;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    sget-object v3, Lf/i/b/c0/a0/o;->P:Lf/i/b/a0;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    sget-object v3, Lf/i/b/c0/a0/o;->R:Lf/i/b/a0;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    sget-object v3, Lf/i/b/c0/a0/o;->W:Lf/i/b/a0;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    sget-object v3, Lf/i/b/c0/a0/o;->N:Lf/i/b/a0;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    sget-object v3, Lf/i/b/c0/a0/o;->d:Lf/i/b/a0;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    sget-object v3, Lf/i/b/c0/a0/c;->b:Lf/i/b/a0;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    sget-object v3, Lf/i/b/c0/a0/o;->U:Lf/i/b/a0;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    sget-object v3, Lf/i/b/c0/a0/l;->b:Lf/i/b/a0;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    sget-object v3, Lf/i/b/c0/a0/k;->b:Lf/i/b/a0;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    sget-object v3, Lf/i/b/c0/a0/o;->S:Lf/i/b/a0;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    sget-object v3, Lf/i/b/c0/a0/a;->c:Lf/i/b/a0;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    sget-object v3, Lf/i/b/c0/a0/o;->b:Lf/i/b/a0;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    new-instance v3, Lf/i/b/c0/a0/b;

    iget-object v4, p0, Lf/i/b/j;->c:Lf/i/b/c0/g;

    invoke-direct {v3, v4}, Lf/i/b/c0/a0/b;-><init>(Lf/i/b/c0/g;)V

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance v3, Lf/i/b/c0/a0/g;

    iget-object v4, p0, Lf/i/b/j;->c:Lf/i/b/c0/g;

    invoke-direct {v3, v4, v2}, Lf/i/b/c0/a0/g;-><init>(Lf/i/b/c0/g;Z)V

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    new-instance v2, Lf/i/b/c0/a0/d;

    iget-object v3, p0, Lf/i/b/j;->c:Lf/i/b/c0/g;

    invoke-direct {v2, v3}, Lf/i/b/c0/a0/d;-><init>(Lf/i/b/c0/g;)V

    iput-object v2, p0, Lf/i/b/j;->d:Lf/i/b/c0/a0/d;

    .line 78
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    sget-object v2, Lf/i/b/c0/a0/o;->Z:Lf/i/b/a0;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    new-instance v2, Lf/i/b/c0/a0/j;

    iget-object v3, p0, Lf/i/b/j;->c:Lf/i/b/c0/g;

    iget-object v4, p0, Lf/i/b/j;->d:Lf/i/b/c0/a0/d;

    invoke-direct {v2, v3, v1, v0, v4}, Lf/i/b/c0/a0/j;-><init>(Lf/i/b/c0/g;Lf/i/b/d;Lf/i/b/c0/o;Lf/i/b/c0/a0/d;)V

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lf/i/b/j;->e:Ljava/util/List;

    return-void
.end method

.method public static a(Ljava/lang/Object;Lf/i/b/e0/a;)V
    .locals 0

    if-eqz p0, :cond_1

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lf/i/b/e0/a;->V()Lf/i/b/e0/b;

    move-result-object p0

    sget-object p1, Lf/i/b/e0/b;->j:Lf/i/b/e0/b;

    if-ne p0, p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p0, Lf/i/b/p;

    const-string p1, "JSON document was not fully consumed."

    invoke-direct {p0, p1}, Lf/i/b/p;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lf/i/b/e0/d; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 3
    new-instance p1, Lf/i/b/p;

    invoke-direct {p1, p0}, Lf/i/b/p;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 4
    new-instance p1, Lf/i/b/w;

    invoke-direct {p1, p0}, Lf/i/b/w;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public static b(D)V
    .locals 2

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public c(Lf/i/b/e0/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lf/i/b/e0/a;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/b/p;,
            Lf/i/b/w;
        }
    .end annotation

    .line 1
    iget-boolean v0, p1, Lf/i/b/e0/a;->b:Z

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p1, Lf/i/b/e0/a;->b:Z

    .line 3
    :try_start_0
    invoke-virtual {p1}, Lf/i/b/e0/a;->V()Lf/i/b/e0/b;

    const/4 v1, 0x0

    .line 4
    new-instance v2, Lf/i/b/d0/a;

    invoke-direct {v2, p2}, Lf/i/b/d0/a;-><init>(Ljava/lang/reflect/Type;)V

    .line 5
    invoke-virtual {p0, v2}, Lf/i/b/j;->f(Lf/i/b/d0/a;)Lf/i/b/z;

    move-result-object p2

    .line 6
    invoke-virtual {p2, p1}, Lf/i/b/z;->a(Lf/i/b/e0/a;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iput-boolean v0, p1, Lf/i/b/e0/a;->b:Z

    return-object p2

    :catchall_0
    move-exception p2

    goto :goto_0

    :catch_0
    move-exception p2

    .line 8
    :try_start_1
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AssertionError (GSON 2.8.5): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception p2

    .line 9
    new-instance v1, Lf/i/b/w;

    invoke-direct {v1, p2}, Lf/i/b/w;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception p2

    .line 10
    new-instance v1, Lf/i/b/w;

    invoke-direct {v1, p2}, Lf/i/b/w;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_3
    move-exception p2

    if-eqz v1, :cond_0

    const/4 p2, 0x0

    .line 11
    iput-boolean v0, p1, Lf/i/b/e0/a;->b:Z

    return-object p2

    .line 12
    :cond_0
    :try_start_2
    new-instance v1, Lf/i/b/w;

    invoke-direct {v1, p2}, Lf/i/b/w;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 13
    :goto_0
    iput-boolean v0, p1, Lf/i/b/e0/a;->b:Z

    .line 14
    throw p2
.end method

.method public d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/b/w;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lf/i/b/j;->e(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    invoke-static {p2}, Lf/i/b/c0/u;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/b/w;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, v0}, Lf/i/b/j;->h(Ljava/io/Reader;)Lf/i/b/e0/a;

    move-result-object p1

    .line 3
    invoke-virtual {p0, p1, p2}, Lf/i/b/j;->c(Lf/i/b/e0/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    .line 4
    invoke-static {p2, p1}, Lf/i/b/j;->a(Ljava/lang/Object;Lf/i/b/e0/a;)V

    return-object p2
.end method

.method public f(Lf/i/b/d0/a;)Lf/i/b/z;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lf/i/b/d0/a<",
            "TT;>;)",
            "Lf/i/b/z<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/b/j;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/i/b/z;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lf/i/b/j;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    iget-object v1, p0, Lf/i/b/j;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    const/4 v1, 0x1

    .line 5
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf/i/b/j$a;

    if-eqz v2, :cond_2

    return-object v2

    .line 6
    :cond_2
    :try_start_0
    new-instance v2, Lf/i/b/j$a;

    invoke-direct {v2}, Lf/i/b/j$a;-><init>()V

    .line 7
    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v3, p0, Lf/i/b/j;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lf/i/b/a0;

    .line 9
    invoke-interface {v4, p0, p1}, Lf/i/b/a0;->a(Lf/i/b/j;Lf/i/b/d0/a;)Lf/i/b/z;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 10
    iget-object v3, v2, Lf/i/b/j$a;->a:Lf/i/b/z;

    if-nez v3, :cond_5

    .line 11
    iput-object v4, v2, Lf/i/b/j$a;->a:Lf/i/b/z;

    .line 12
    iget-object v2, p0, Lf/i/b/j;->b:Ljava/util/Map;

    invoke-interface {v2, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_4

    .line 14
    iget-object p1, p0, Lf/i/b/j;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->remove()V

    :cond_4
    return-object v4

    .line 15
    :cond_5
    :try_start_1
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 16
    :cond_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GSON (2.8.5) cannot handle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v2

    .line 17
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_7

    .line 18
    iget-object p1, p0, Lf/i/b/j;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->remove()V

    :cond_7
    throw v2
.end method

.method public g(Lf/i/b/a0;Lf/i/b/d0/a;)Lf/i/b/z;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lf/i/b/a0;",
            "Lf/i/b/d0/a<",
            "TT;>;)",
            "Lf/i/b/z<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/b/j;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p0, Lf/i/b/j;->d:Lf/i/b/c0/a0/d;

    :cond_0
    const/4 v0, 0x0

    .line 3
    iget-object v1, p0, Lf/i/b/j;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf/i/b/a0;

    if-nez v0, :cond_2

    if-ne v2, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 4
    :cond_2
    invoke-interface {v2, p0, p2}, Lf/i/b/a0;->a(Lf/i/b/j;Lf/i/b/d0/a;)Lf/i/b/z;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    .line 5
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GSON cannot serialize "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public h(Ljava/io/Reader;)Lf/i/b/e0/a;
    .locals 1

    .line 1
    new-instance v0, Lf/i/b/e0/a;

    invoke-direct {v0, p1}, Lf/i/b/e0/a;-><init>(Ljava/io/Reader;)V

    .line 2
    iget-boolean p1, p0, Lf/i/b/j;->j:Z

    .line 3
    iput-boolean p1, v0, Lf/i/b/e0/a;->b:Z

    return-object v0
.end method

.method public i(Ljava/io/Writer;)Lf/i/b/e0/c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lf/i/b/j;->g:Z

    if-eqz v0, :cond_0

    const-string v0, ")]}\'\n"

    .line 2
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 3
    :cond_0
    new-instance v0, Lf/i/b/e0/c;

    invoke-direct {v0, p1}, Lf/i/b/e0/c;-><init>(Ljava/io/Writer;)V

    .line 4
    iget-boolean p1, p0, Lf/i/b/j;->i:Z

    if-eqz p1, :cond_1

    const-string p1, "  "

    .line 5
    iput-object p1, v0, Lf/i/b/e0/c;->d:Ljava/lang/String;

    const-string p1, ": "

    .line 6
    iput-object p1, v0, Lf/i/b/e0/c;->e:Ljava/lang/String;

    .line 7
    :cond_1
    iget-boolean p1, p0, Lf/i/b/j;->f:Z

    .line 8
    iput-boolean p1, v0, Lf/i/b/e0/c;->i:Z

    return-object v0
.end method

.method public j(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lf/i/b/q;->a:Lf/i/b/q;

    .line 2
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 3
    :try_start_0
    invoke-virtual {p0, v0}, Lf/i/b/j;->i(Ljava/io/Writer;)Lf/i/b/e0/c;

    move-result-object v1

    .line 4
    invoke-virtual {p0, p1, v1}, Lf/i/b/j;->k(Lf/i/b/o;Lf/i/b/e0/c;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 6
    new-instance v0, Lf/i/b/p;

    invoke-direct {v0, p1}, Lf/i/b/p;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 7
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 8
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 9
    :try_start_1
    invoke-virtual {p0, v1}, Lf/i/b/j;->i(Ljava/io/Writer;)Lf/i/b/e0/c;

    move-result-object v2

    .line 10
    invoke-virtual {p0, p1, v0, v2}, Lf/i/b/j;->l(Ljava/lang/Object;Ljava/lang/reflect/Type;Lf/i/b/e0/c;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 11
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_1
    move-exception p1

    .line 12
    new-instance v0, Lf/i/b/p;

    invoke-direct {v0, p1}, Lf/i/b/p;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public k(Lf/i/b/o;Lf/i/b/e0/c;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/b/p;
        }
    .end annotation

    .line 1
    iget-boolean v0, p2, Lf/i/b/e0/c;->f:Z

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p2, Lf/i/b/e0/c;->f:Z

    .line 3
    iget-boolean v1, p2, Lf/i/b/e0/c;->g:Z

    .line 4
    iget-boolean v2, p0, Lf/i/b/j;->h:Z

    .line 5
    iput-boolean v2, p2, Lf/i/b/e0/c;->g:Z

    .line 6
    iget-boolean v2, p2, Lf/i/b/e0/c;->i:Z

    .line 7
    iget-boolean v3, p0, Lf/i/b/j;->f:Z

    .line 8
    iput-boolean v3, p2, Lf/i/b/e0/c;->i:Z

    .line 9
    :try_start_0
    sget-object v3, Lf/i/b/c0/a0/o;->X:Lf/i/b/z;

    invoke-virtual {v3, p2, p1}, Lf/i/b/z;->b(Lf/i/b/e0/c;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    iput-boolean v0, p2, Lf/i/b/e0/c;->f:Z

    .line 11
    iput-boolean v1, p2, Lf/i/b/e0/c;->g:Z

    .line 12
    iput-boolean v2, p2, Lf/i/b/e0/c;->i:Z

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 13
    :try_start_1
    new-instance v3, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AssertionError (GSON 2.8.5): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_1
    move-exception p1

    .line 14
    new-instance v3, Lf/i/b/p;

    invoke-direct {v3, p1}, Lf/i/b/p;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    :goto_0
    iput-boolean v0, p2, Lf/i/b/e0/c;->f:Z

    .line 16
    iput-boolean v1, p2, Lf/i/b/e0/c;->g:Z

    .line 17
    iput-boolean v2, p2, Lf/i/b/e0/c;->i:Z

    .line 18
    throw p1
.end method

.method public l(Ljava/lang/Object;Ljava/lang/reflect/Type;Lf/i/b/e0/c;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/b/p;
        }
    .end annotation

    .line 1
    new-instance v0, Lf/i/b/d0/a;

    invoke-direct {v0, p2}, Lf/i/b/d0/a;-><init>(Ljava/lang/reflect/Type;)V

    .line 2
    invoke-virtual {p0, v0}, Lf/i/b/j;->f(Lf/i/b/d0/a;)Lf/i/b/z;

    move-result-object p2

    .line 3
    iget-boolean v0, p3, Lf/i/b/e0/c;->f:Z

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p3, Lf/i/b/e0/c;->f:Z

    .line 5
    iget-boolean v1, p3, Lf/i/b/e0/c;->g:Z

    .line 6
    iget-boolean v2, p0, Lf/i/b/j;->h:Z

    .line 7
    iput-boolean v2, p3, Lf/i/b/e0/c;->g:Z

    .line 8
    iget-boolean v2, p3, Lf/i/b/e0/c;->i:Z

    .line 9
    iget-boolean v3, p0, Lf/i/b/j;->f:Z

    .line 10
    iput-boolean v3, p3, Lf/i/b/e0/c;->i:Z

    .line 11
    :try_start_0
    invoke-virtual {p2, p3, p1}, Lf/i/b/z;->b(Lf/i/b/e0/c;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    iput-boolean v0, p3, Lf/i/b/e0/c;->f:Z

    .line 13
    iput-boolean v1, p3, Lf/i/b/e0/c;->g:Z

    .line 14
    iput-boolean v2, p3, Lf/i/b/e0/c;->i:Z

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 15
    :try_start_1
    new-instance p2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AssertionError (GSON 2.8.5): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p2, v3, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 16
    new-instance p2, Lf/i/b/p;

    invoke-direct {p2, p1}, Lf/i/b/p;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    :goto_0
    iput-boolean v0, p3, Lf/i/b/e0/c;->f:Z

    .line 18
    iput-boolean v1, p3, Lf/i/b/e0/c;->g:Z

    .line 19
    iput-boolean v2, p3, Lf/i/b/e0/c;->i:Z

    .line 20
    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{serializeNulls:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lf/i/b/j;->f:Z

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",factories:"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf/i/b/j;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",instanceCreators:"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf/i/b/j;->c:Lf/i/b/c0/g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
