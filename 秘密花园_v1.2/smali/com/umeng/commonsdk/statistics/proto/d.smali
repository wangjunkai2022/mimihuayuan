.class public Lcom/umeng/commonsdk/statistics/proto/d;
.super Ljava/lang/Object;
.source "Imprint.java"

# interfaces
.implements Lcom/umeng/commonsdk/proguard/j;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/commonsdk/statistics/proto/d$c;,
        Lcom/umeng/commonsdk/statistics/proto/d$d;,
        Lcom/umeng/commonsdk/statistics/proto/d$a;,
        Lcom/umeng/commonsdk/statistics/proto/d$b;,
        Lcom/umeng/commonsdk/statistics/proto/d$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/umeng/commonsdk/proguard/j<",
        "Lcom/umeng/commonsdk/statistics/proto/d;",
        "Lcom/umeng/commonsdk/statistics/proto/d$e;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field public static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/umeng/commonsdk/statistics/proto/d$e;",
            "Lcom/umeng/commonsdk/proguard/v;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:J = 0x2780a889f75f91feL

.field public static final f:Lcom/umeng/commonsdk/proguard/an;

.field public static final g:Lcom/umeng/commonsdk/proguard/ad;

.field public static final h:Lcom/umeng/commonsdk/proguard/ad;

.field public static final i:Lcom/umeng/commonsdk/proguard/ad;

.field public static final j:Ljava/util/Map;
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

.field public static final k:I


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/umeng/commonsdk/statistics/proto/e;",
            ">;"
        }
    .end annotation
.end field

.field public b:I

.field public c:Ljava/lang/String;

.field public l:B


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v0, Lcom/umeng/commonsdk/proguard/an;

    const-string v1, "Imprint"

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/proguard/an;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/d;->f:Lcom/umeng/commonsdk/proguard/an;

    .line 2
    new-instance v0, Lcom/umeng/commonsdk/proguard/ad;

    const-string v1, "property"

    const/16 v2, 0xd

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/umeng/commonsdk/proguard/ad;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/d;->g:Lcom/umeng/commonsdk/proguard/ad;

    .line 3
    new-instance v0, Lcom/umeng/commonsdk/proguard/ad;

    const-string v4, "version"

    const/16 v5, 0x8

    const/4 v6, 0x2

    invoke-direct {v0, v4, v5, v6}, Lcom/umeng/commonsdk/proguard/ad;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/d;->h:Lcom/umeng/commonsdk/proguard/ad;

    .line 4
    new-instance v0, Lcom/umeng/commonsdk/proguard/ad;

    const-string v6, "checksum"

    const/16 v7, 0xb

    const/4 v8, 0x3

    invoke-direct {v0, v6, v7, v8}, Lcom/umeng/commonsdk/proguard/ad;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/d;->i:Lcom/umeng/commonsdk/proguard/ad;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/d;->j:Ljava/util/Map;

    .line 6
    const-class v8, Lcom/umeng/commonsdk/proguard/as;

    new-instance v9, Lcom/umeng/commonsdk/statistics/proto/d$b;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Lcom/umeng/commonsdk/statistics/proto/d$b;-><init>(Lcom/umeng/commonsdk/statistics/proto/d$1;)V

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/d;->j:Ljava/util/Map;

    const-class v8, Lcom/umeng/commonsdk/proguard/at;

    new-instance v9, Lcom/umeng/commonsdk/statistics/proto/d$d;

    invoke-direct {v9, v10}, Lcom/umeng/commonsdk/statistics/proto/d$d;-><init>(Lcom/umeng/commonsdk/statistics/proto/d$1;)V

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v0, Ljava/util/EnumMap;

    const-class v8, Lcom/umeng/commonsdk/statistics/proto/d$e;

    invoke-direct {v0, v8}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 9
    sget-object v8, Lcom/umeng/commonsdk/statistics/proto/d$e;->a:Lcom/umeng/commonsdk/statistics/proto/d$e;

    new-instance v9, Lcom/umeng/commonsdk/proguard/v;

    new-instance v10, Lcom/umeng/commonsdk/proguard/y;

    new-instance v11, Lcom/umeng/commonsdk/proguard/w;

    invoke-direct {v11, v7}, Lcom/umeng/commonsdk/proguard/w;-><init>(B)V

    new-instance v12, Lcom/umeng/commonsdk/proguard/aa;

    const-class v13, Lcom/umeng/commonsdk/statistics/proto/e;

    const/16 v14, 0xc

    invoke-direct {v12, v14, v13}, Lcom/umeng/commonsdk/proguard/aa;-><init>(BLjava/lang/Class;)V

    invoke-direct {v10, v2, v11, v12}, Lcom/umeng/commonsdk/proguard/y;-><init>(BLcom/umeng/commonsdk/proguard/w;Lcom/umeng/commonsdk/proguard/w;)V

    invoke-direct {v9, v1, v3, v10}, Lcom/umeng/commonsdk/proguard/v;-><init>(Ljava/lang/String;BLcom/umeng/commonsdk/proguard/w;)V

    invoke-virtual {v0, v8, v9}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v1, Lcom/umeng/commonsdk/statistics/proto/d$e;->b:Lcom/umeng/commonsdk/statistics/proto/d$e;

    new-instance v2, Lcom/umeng/commonsdk/proguard/v;

    new-instance v8, Lcom/umeng/commonsdk/proguard/w;

    invoke-direct {v8, v5}, Lcom/umeng/commonsdk/proguard/w;-><init>(B)V

    invoke-direct {v2, v4, v3, v8}, Lcom/umeng/commonsdk/proguard/v;-><init>(Ljava/lang/String;BLcom/umeng/commonsdk/proguard/w;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v1, Lcom/umeng/commonsdk/statistics/proto/d$e;->c:Lcom/umeng/commonsdk/statistics/proto/d$e;

    new-instance v2, Lcom/umeng/commonsdk/proguard/v;

    new-instance v4, Lcom/umeng/commonsdk/proguard/w;

    invoke-direct {v4, v7}, Lcom/umeng/commonsdk/proguard/w;-><init>(B)V

    invoke-direct {v2, v6, v3, v4}, Lcom/umeng/commonsdk/proguard/v;-><init>(Ljava/lang/String;BLcom/umeng/commonsdk/proguard/w;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/d;->d:Ljava/util/Map;

    .line 13
    const-class v1, Lcom/umeng/commonsdk/statistics/proto/d;

    invoke-static {v1, v0}, Lcom/umeng/commonsdk/proguard/v;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/d;->l:B

    return-void
.end method

.method public constructor <init>(Lcom/umeng/commonsdk/statistics/proto/d;)V
    .locals 5

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/d;->l:B

    .line 10
    iget-byte v0, p1, Lcom/umeng/commonsdk/statistics/proto/d;->l:B

    iput-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/d;->l:B

    .line 11
    invoke-virtual {p1}, Lcom/umeng/commonsdk/statistics/proto/d;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 13
    iget-object v1, p1, Lcom/umeng/commonsdk/statistics/proto/d;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 14
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 15
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/umeng/commonsdk/statistics/proto/e;

    .line 16
    new-instance v4, Lcom/umeng/commonsdk/statistics/proto/e;

    invoke-direct {v4, v2}, Lcom/umeng/commonsdk/statistics/proto/e;-><init>(Lcom/umeng/commonsdk/statistics/proto/e;)V

    .line 17
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 18
    :cond_0
    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/d;->a:Ljava/util/Map;

    .line 19
    :cond_1
    iget v0, p1, Lcom/umeng/commonsdk/statistics/proto/d;->b:I

    iput v0, p0, Lcom/umeng/commonsdk/statistics/proto/d;->b:I

    .line 20
    invoke-virtual {p1}, Lcom/umeng/commonsdk/statistics/proto/d;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 21
    iget-object p1, p1, Lcom/umeng/commonsdk/statistics/proto/d;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/proto/d;->c:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/umeng/commonsdk/statistics/proto/e;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/proto/d;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/proto/d;->a:Ljava/util/Map;

    .line 5
    iput p2, p0, Lcom/umeng/commonsdk/statistics/proto/d;->b:I

    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/statistics/proto/d;->b(Z)V

    .line 7
    iput-object p3, p0, Lcom/umeng/commonsdk/statistics/proto/d;->c:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/io/ObjectInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 12
    :try_start_0
    iput-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/d;->l:B

    .line 13
    new-instance v0, Lcom/umeng/commonsdk/proguard/ac;

    new-instance v1, Lcom/umeng/commonsdk/proguard/au;

    invoke-direct {v1, p1}, Lcom/umeng/commonsdk/proguard/au;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/proguard/ac;-><init>(Lcom/umeng/commonsdk/proguard/aw;)V

    invoke-virtual {p0, v0}, Lcom/umeng/commonsdk/statistics/proto/d;->read(Lcom/umeng/commonsdk/proguard/ai;)V
    :try_end_0
    .catch Lcom/umeng/commonsdk/proguard/p; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 14
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    :try_start_0
    new-instance v0, Lcom/umeng/commonsdk/proguard/ac;

    new-instance v1, Lcom/umeng/commonsdk/proguard/au;

    invoke-direct {v1, p1}, Lcom/umeng/commonsdk/proguard/au;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/proguard/ac;-><init>(Lcom/umeng/commonsdk/proguard/aw;)V

    invoke-virtual {p0, v0}, Lcom/umeng/commonsdk/statistics/proto/d;->write(Lcom/umeng/commonsdk/proguard/ai;)V
    :try_end_0
    .catch Lcom/umeng/commonsdk/proguard/p; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 11
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic m()Lcom/umeng/commonsdk/proguard/an;
    .locals 1

    .line 1
    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/d;->f:Lcom/umeng/commonsdk/proguard/an;

    return-object v0
.end method

.method public static synthetic n()Lcom/umeng/commonsdk/proguard/ad;
    .locals 1

    .line 1
    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/d;->g:Lcom/umeng/commonsdk/proguard/ad;

    return-object v0
.end method

.method public static synthetic o()Lcom/umeng/commonsdk/proguard/ad;
    .locals 1

    .line 1
    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/d;->h:Lcom/umeng/commonsdk/proguard/ad;

    return-object v0
.end method

.method public static synthetic p()Lcom/umeng/commonsdk/proguard/ad;
    .locals 1

    .line 1
    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/d;->i:Lcom/umeng/commonsdk/proguard/ad;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/umeng/commonsdk/statistics/proto/d;
    .locals 1

    .line 1
    new-instance v0, Lcom/umeng/commonsdk/statistics/proto/d;

    invoke-direct {v0, p0}, Lcom/umeng/commonsdk/statistics/proto/d;-><init>(Lcom/umeng/commonsdk/statistics/proto/d;)V

    return-object v0
.end method

.method public a(I)Lcom/umeng/commonsdk/statistics/proto/d;
    .locals 0

    .line 7
    iput p1, p0, Lcom/umeng/commonsdk/statistics/proto/d;->b:I

    const/4 p1, 0x1

    .line 8
    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/statistics/proto/d;->b(Z)V

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/umeng/commonsdk/statistics/proto/d;
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/proto/d;->c:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/util/Map;)Lcom/umeng/commonsdk/statistics/proto/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/umeng/commonsdk/statistics/proto/e;",
            ">;)",
            "Lcom/umeng/commonsdk/statistics/proto/d;"
        }
    .end annotation

    .line 5
    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/proto/d;->a:Ljava/util/Map;

    return-object p0
.end method

.method public a(Ljava/lang/String;Lcom/umeng/commonsdk/statistics/proto/e;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/d;->a:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/d;->a:Ljava/util/Map;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/d;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/proto/d;->a:Ljava/util/Map;

    :cond_0
    return-void
.end method

.method public b()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/d;->a:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public b(I)Lcom/umeng/commonsdk/statistics/proto/d$e;
    .locals 0

    .line 3
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/proto/d$e;->a(I)Lcom/umeng/commonsdk/statistics/proto/d$e;

    move-result-object p1

    return-object p1
.end method

.method public b(Z)V
    .locals 2

    .line 2
    iget-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/d;->l:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/umeng/commonsdk/proguard/g;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lcom/umeng/commonsdk/statistics/proto/d;->l:B

    return-void
.end method

.method public c()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/umeng/commonsdk/statistics/proto/e;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/d;->a:Ljava/util/Map;

    return-object v0
.end method

.method public c(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/proto/d;->c:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public clear()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/d;->a:Ljava/util/Map;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v1}, Lcom/umeng/commonsdk/statistics/proto/d;->b(Z)V

    .line 3
    iput v1, p0, Lcom/umeng/commonsdk/statistics/proto/d;->b:I

    .line 4
    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/d;->c:Ljava/lang/String;

    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/d;->a:Ljava/util/Map;

    return-void
.end method

.method public synthetic deepCopy()Lcom/umeng/commonsdk/proguard/j;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/umeng/commonsdk/statistics/proto/d;->a()Lcom/umeng/commonsdk/statistics/proto/d;

    move-result-object v0

    return-object v0
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/d;->a:Ljava/util/Map;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/umeng/commonsdk/statistics/proto/d;->b:I

    return v0
.end method

.method public synthetic fieldForId(I)Lcom/umeng/commonsdk/proguard/q;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/statistics/proto/d;->b(I)Lcom/umeng/commonsdk/statistics/proto/d$e;

    move-result-object p1

    return-object p1
.end method

.method public g()V
    .locals 2

    .line 1
    iget-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/d;->l:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/proguard/g;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/d;->l:B

    return-void
.end method

.method public h()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/d;->l:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/proguard/g;->a(BI)Z

    move-result v0

    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method public j()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/d;->c:Ljava/lang/String;

    return-void
.end method

.method public k()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/d;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public l()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/p;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/d;->a:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/d;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Lcom/umeng/commonsdk/proguard/aj;

    const-string v1, "Required field \'checksum\' was not present! Struct: "

    invoke-static {v1}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Lcom/umeng/commonsdk/statistics/proto/d;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/proguard/aj;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_1
    new-instance v0, Lcom/umeng/commonsdk/proguard/aj;

    const-string v1, "Required field \'property\' was not present! Struct: "

    invoke-static {v1}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 6
    invoke-virtual {p0}, Lcom/umeng/commonsdk/statistics/proto/d;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/proguard/aj;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read(Lcom/umeng/commonsdk/proguard/ai;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/p;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/d;->j:Ljava/util/Map;

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
    .locals 4

    const-string v0, "Imprint("

    const-string v1, "property:"

    .line 1
    invoke-static {v0, v1}, Lf/b/a/a/a;->q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/proto/d;->a:Ljava/util/Map;

    const-string v2, "null"

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, ", "

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "version:"

    .line 6
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    iget v3, p0, Lcom/umeng/commonsdk/statistics/proto/d;->b:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "checksum:"

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/proto/d;->c:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 11
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 12
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v1, ")"

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
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
    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/d;->j:Ljava/util/Map;

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
