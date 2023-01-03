.class public Lcom/umeng/commonsdk/proguard/f;
.super Ljava/lang/Object;
.source "UMEnvelope.java"

# interfaces
.implements Lcom/umeng/commonsdk/proguard/j;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/commonsdk/proguard/f$c;,
        Lcom/umeng/commonsdk/proguard/f$d;,
        Lcom/umeng/commonsdk/proguard/f$a;,
        Lcom/umeng/commonsdk/proguard/f$b;,
        Lcom/umeng/commonsdk/proguard/f$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/umeng/commonsdk/proguard/j<",
        "Lcom/umeng/commonsdk/proguard/f;",
        "Lcom/umeng/commonsdk/proguard/f$e;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field public static final A:I = 0x2

.field public static final B:I = 0x3

.field public static final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/umeng/commonsdk/proguard/f$e;",
            "Lcom/umeng/commonsdk/proguard/v;",
            ">;"
        }
    .end annotation
.end field

.field public static final l:J = 0x5d55b037b877db0L

.field public static final m:Lcom/umeng/commonsdk/proguard/an;

.field public static final n:Lcom/umeng/commonsdk/proguard/ad;

.field public static final o:Lcom/umeng/commonsdk/proguard/ad;

.field public static final p:Lcom/umeng/commonsdk/proguard/ad;

.field public static final q:Lcom/umeng/commonsdk/proguard/ad;

.field public static final r:Lcom/umeng/commonsdk/proguard/ad;

.field public static final s:Lcom/umeng/commonsdk/proguard/ad;

.field public static final t:Lcom/umeng/commonsdk/proguard/ad;

.field public static final u:Lcom/umeng/commonsdk/proguard/ad;

.field public static final v:Lcom/umeng/commonsdk/proguard/ad;

.field public static final w:Lcom/umeng/commonsdk/proguard/ad;

.field public static final x:Ljava/util/Map;
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

.field public static final y:I = 0x0

.field public static final z:I = 0x1


# instance fields
.field public C:B

.field public D:[Lcom/umeng/commonsdk/proguard/f$e;

.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:I

.field public f:I

.field public g:Ljava/nio/ByteBuffer;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:I


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/umeng/commonsdk/proguard/an;

    const-string v1, "UMEnvelope"

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/proguard/an;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/umeng/commonsdk/proguard/f;->m:Lcom/umeng/commonsdk/proguard/an;

    .line 2
    new-instance v0, Lcom/umeng/commonsdk/proguard/ad;

    const-string v1, "version"

    const/16 v2, 0xb

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/umeng/commonsdk/proguard/ad;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/commonsdk/proguard/f;->n:Lcom/umeng/commonsdk/proguard/ad;

    .line 3
    new-instance v0, Lcom/umeng/commonsdk/proguard/ad;

    const-string v4, "address"

    const/4 v5, 0x2

    invoke-direct {v0, v4, v2, v5}, Lcom/umeng/commonsdk/proguard/ad;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/commonsdk/proguard/f;->o:Lcom/umeng/commonsdk/proguard/ad;

    .line 4
    new-instance v0, Lcom/umeng/commonsdk/proguard/ad;

    const-string v6, "signature"

    const/4 v7, 0x3

    invoke-direct {v0, v6, v2, v7}, Lcom/umeng/commonsdk/proguard/ad;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/commonsdk/proguard/f;->p:Lcom/umeng/commonsdk/proguard/ad;

    .line 5
    new-instance v0, Lcom/umeng/commonsdk/proguard/ad;

    const-string v7, "serial_num"

    const/16 v8, 0x8

    const/4 v9, 0x4

    invoke-direct {v0, v7, v8, v9}, Lcom/umeng/commonsdk/proguard/ad;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/commonsdk/proguard/f;->q:Lcom/umeng/commonsdk/proguard/ad;

    .line 6
    new-instance v0, Lcom/umeng/commonsdk/proguard/ad;

    const-string v9, "ts_secs"

    const/4 v10, 0x5

    invoke-direct {v0, v9, v8, v10}, Lcom/umeng/commonsdk/proguard/ad;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/commonsdk/proguard/f;->r:Lcom/umeng/commonsdk/proguard/ad;

    .line 7
    new-instance v0, Lcom/umeng/commonsdk/proguard/ad;

    const-string v10, "length"

    const/4 v11, 0x6

    invoke-direct {v0, v10, v8, v11}, Lcom/umeng/commonsdk/proguard/ad;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/commonsdk/proguard/f;->s:Lcom/umeng/commonsdk/proguard/ad;

    .line 8
    new-instance v0, Lcom/umeng/commonsdk/proguard/ad;

    const-string v11, "entity"

    const/4 v12, 0x7

    invoke-direct {v0, v11, v2, v12}, Lcom/umeng/commonsdk/proguard/ad;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/commonsdk/proguard/f;->t:Lcom/umeng/commonsdk/proguard/ad;

    .line 9
    new-instance v0, Lcom/umeng/commonsdk/proguard/ad;

    const-string v12, "guid"

    invoke-direct {v0, v12, v2, v8}, Lcom/umeng/commonsdk/proguard/ad;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/commonsdk/proguard/f;->u:Lcom/umeng/commonsdk/proguard/ad;

    .line 10
    new-instance v0, Lcom/umeng/commonsdk/proguard/ad;

    const-string v13, "checksum"

    const/16 v14, 0x9

    invoke-direct {v0, v13, v2, v14}, Lcom/umeng/commonsdk/proguard/ad;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/commonsdk/proguard/f;->v:Lcom/umeng/commonsdk/proguard/ad;

    .line 11
    new-instance v0, Lcom/umeng/commonsdk/proguard/ad;

    const-string v14, "codex"

    const/16 v15, 0xa

    invoke-direct {v0, v14, v8, v15}, Lcom/umeng/commonsdk/proguard/ad;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/commonsdk/proguard/f;->w:Lcom/umeng/commonsdk/proguard/ad;

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/proguard/f;->x:Ljava/util/Map;

    .line 13
    const-class v15, Lcom/umeng/commonsdk/proguard/as;

    new-instance v5, Lcom/umeng/commonsdk/proguard/f$b;

    const/4 v8, 0x0

    invoke-direct {v5, v8}, Lcom/umeng/commonsdk/proguard/f$b;-><init>(Lcom/umeng/commonsdk/proguard/f$1;)V

    invoke-interface {v0, v15, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object v0, Lcom/umeng/commonsdk/proguard/f;->x:Ljava/util/Map;

    const-class v5, Lcom/umeng/commonsdk/proguard/at;

    new-instance v15, Lcom/umeng/commonsdk/proguard/f$d;

    invoke-direct {v15, v8}, Lcom/umeng/commonsdk/proguard/f$d;-><init>(Lcom/umeng/commonsdk/proguard/f$1;)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    new-instance v0, Ljava/util/EnumMap;

    const-class v5, Lcom/umeng/commonsdk/proguard/f$e;

    invoke-direct {v0, v5}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 16
    sget-object v5, Lcom/umeng/commonsdk/proguard/f$e;->a:Lcom/umeng/commonsdk/proguard/f$e;

    new-instance v8, Lcom/umeng/commonsdk/proguard/v;

    new-instance v15, Lcom/umeng/commonsdk/proguard/w;

    invoke-direct {v15, v2}, Lcom/umeng/commonsdk/proguard/w;-><init>(B)V

    invoke-direct {v8, v1, v3, v15}, Lcom/umeng/commonsdk/proguard/v;-><init>(Ljava/lang/String;BLcom/umeng/commonsdk/proguard/w;)V

    invoke-virtual {v0, v5, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v1, Lcom/umeng/commonsdk/proguard/f$e;->b:Lcom/umeng/commonsdk/proguard/f$e;

    new-instance v5, Lcom/umeng/commonsdk/proguard/v;

    new-instance v8, Lcom/umeng/commonsdk/proguard/w;

    invoke-direct {v8, v2}, Lcom/umeng/commonsdk/proguard/w;-><init>(B)V

    invoke-direct {v5, v4, v3, v8}, Lcom/umeng/commonsdk/proguard/v;-><init>(Ljava/lang/String;BLcom/umeng/commonsdk/proguard/w;)V

    invoke-virtual {v0, v1, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object v1, Lcom/umeng/commonsdk/proguard/f$e;->c:Lcom/umeng/commonsdk/proguard/f$e;

    new-instance v4, Lcom/umeng/commonsdk/proguard/v;

    new-instance v5, Lcom/umeng/commonsdk/proguard/w;

    invoke-direct {v5, v2}, Lcom/umeng/commonsdk/proguard/w;-><init>(B)V

    invoke-direct {v4, v6, v3, v5}, Lcom/umeng/commonsdk/proguard/v;-><init>(Ljava/lang/String;BLcom/umeng/commonsdk/proguard/w;)V

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v1, Lcom/umeng/commonsdk/proguard/f$e;->d:Lcom/umeng/commonsdk/proguard/f$e;

    new-instance v4, Lcom/umeng/commonsdk/proguard/v;

    new-instance v5, Lcom/umeng/commonsdk/proguard/w;

    const/16 v6, 0x8

    invoke-direct {v5, v6}, Lcom/umeng/commonsdk/proguard/w;-><init>(B)V

    invoke-direct {v4, v7, v3, v5}, Lcom/umeng/commonsdk/proguard/v;-><init>(Ljava/lang/String;BLcom/umeng/commonsdk/proguard/w;)V

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v1, Lcom/umeng/commonsdk/proguard/f$e;->e:Lcom/umeng/commonsdk/proguard/f$e;

    new-instance v4, Lcom/umeng/commonsdk/proguard/v;

    new-instance v5, Lcom/umeng/commonsdk/proguard/w;

    invoke-direct {v5, v6}, Lcom/umeng/commonsdk/proguard/w;-><init>(B)V

    invoke-direct {v4, v9, v3, v5}, Lcom/umeng/commonsdk/proguard/v;-><init>(Ljava/lang/String;BLcom/umeng/commonsdk/proguard/w;)V

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v1, Lcom/umeng/commonsdk/proguard/f$e;->f:Lcom/umeng/commonsdk/proguard/f$e;

    new-instance v4, Lcom/umeng/commonsdk/proguard/v;

    new-instance v5, Lcom/umeng/commonsdk/proguard/w;

    invoke-direct {v5, v6}, Lcom/umeng/commonsdk/proguard/w;-><init>(B)V

    invoke-direct {v4, v10, v3, v5}, Lcom/umeng/commonsdk/proguard/v;-><init>(Ljava/lang/String;BLcom/umeng/commonsdk/proguard/w;)V

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v1, Lcom/umeng/commonsdk/proguard/f$e;->g:Lcom/umeng/commonsdk/proguard/f$e;

    new-instance v4, Lcom/umeng/commonsdk/proguard/v;

    new-instance v5, Lcom/umeng/commonsdk/proguard/w;

    invoke-direct {v5, v2, v3}, Lcom/umeng/commonsdk/proguard/w;-><init>(BZ)V

    invoke-direct {v4, v11, v3, v5}, Lcom/umeng/commonsdk/proguard/v;-><init>(Ljava/lang/String;BLcom/umeng/commonsdk/proguard/w;)V

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v1, Lcom/umeng/commonsdk/proguard/f$e;->h:Lcom/umeng/commonsdk/proguard/f$e;

    new-instance v4, Lcom/umeng/commonsdk/proguard/v;

    new-instance v5, Lcom/umeng/commonsdk/proguard/w;

    invoke-direct {v5, v2}, Lcom/umeng/commonsdk/proguard/w;-><init>(B)V

    invoke-direct {v4, v12, v3, v5}, Lcom/umeng/commonsdk/proguard/v;-><init>(Ljava/lang/String;BLcom/umeng/commonsdk/proguard/w;)V

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v1, Lcom/umeng/commonsdk/proguard/f$e;->i:Lcom/umeng/commonsdk/proguard/f$e;

    new-instance v4, Lcom/umeng/commonsdk/proguard/v;

    new-instance v5, Lcom/umeng/commonsdk/proguard/w;

    invoke-direct {v5, v2}, Lcom/umeng/commonsdk/proguard/w;-><init>(B)V

    invoke-direct {v4, v13, v3, v5}, Lcom/umeng/commonsdk/proguard/v;-><init>(Ljava/lang/String;BLcom/umeng/commonsdk/proguard/w;)V

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v1, Lcom/umeng/commonsdk/proguard/f$e;->j:Lcom/umeng/commonsdk/proguard/f$e;

    new-instance v2, Lcom/umeng/commonsdk/proguard/v;

    new-instance v3, Lcom/umeng/commonsdk/proguard/w;

    const/16 v4, 0x8

    invoke-direct {v3, v4}, Lcom/umeng/commonsdk/proguard/w;-><init>(B)V

    const/4 v4, 0x2

    invoke-direct {v2, v14, v4, v3}, Lcom/umeng/commonsdk/proguard/v;-><init>(Ljava/lang/String;BLcom/umeng/commonsdk/proguard/w;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/umeng/commonsdk/proguard/f;->k:Ljava/util/Map;

    .line 27
    const-class v1, Lcom/umeng/commonsdk/proguard/f;

    invoke-static {v1, v0}, Lcom/umeng/commonsdk/proguard/v;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-byte v0, p0, Lcom/umeng/commonsdk/proguard/f;->C:B

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/umeng/commonsdk/proguard/f$e;

    .line 3
    sget-object v2, Lcom/umeng/commonsdk/proguard/f$e;->j:Lcom/umeng/commonsdk/proguard/f$e;

    aput-object v2, v1, v0

    iput-object v1, p0, Lcom/umeng/commonsdk/proguard/f;->D:[Lcom/umeng/commonsdk/proguard/f$e;

    return-void
.end method

.method public constructor <init>(Lcom/umeng/commonsdk/proguard/f;)V
    .locals 3

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-byte v0, p0, Lcom/umeng/commonsdk/proguard/f;->C:B

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/umeng/commonsdk/proguard/f$e;

    .line 19
    sget-object v2, Lcom/umeng/commonsdk/proguard/f$e;->j:Lcom/umeng/commonsdk/proguard/f$e;

    aput-object v2, v1, v0

    iput-object v1, p0, Lcom/umeng/commonsdk/proguard/f;->D:[Lcom/umeng/commonsdk/proguard/f$e;

    .line 20
    iget-byte v0, p1, Lcom/umeng/commonsdk/proguard/f;->C:B

    iput-byte v0, p0, Lcom/umeng/commonsdk/proguard/f;->C:B

    .line 21
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/f;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p1, Lcom/umeng/commonsdk/proguard/f;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/commonsdk/proguard/f;->a:Ljava/lang/String;

    .line 23
    :cond_0
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/f;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 24
    iget-object v0, p1, Lcom/umeng/commonsdk/proguard/f;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/commonsdk/proguard/f;->b:Ljava/lang/String;

    .line 25
    :cond_1
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/f;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 26
    iget-object v0, p1, Lcom/umeng/commonsdk/proguard/f;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/commonsdk/proguard/f;->c:Ljava/lang/String;

    .line 27
    :cond_2
    iget v0, p1, Lcom/umeng/commonsdk/proguard/f;->d:I

    iput v0, p0, Lcom/umeng/commonsdk/proguard/f;->d:I

    .line 28
    iget v0, p1, Lcom/umeng/commonsdk/proguard/f;->e:I

    iput v0, p0, Lcom/umeng/commonsdk/proguard/f;->e:I

    .line 29
    iget v0, p1, Lcom/umeng/commonsdk/proguard/f;->f:I

    iput v0, p0, Lcom/umeng/commonsdk/proguard/f;->f:I

    .line 30
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/f;->w()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 31
    iget-object v0, p1, Lcom/umeng/commonsdk/proguard/f;->g:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/umeng/commonsdk/proguard/k;->d(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/commonsdk/proguard/f;->g:Ljava/nio/ByteBuffer;

    .line 32
    :cond_3
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/f;->z()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 33
    iget-object v0, p1, Lcom/umeng/commonsdk/proguard/f;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/commonsdk/proguard/f;->h:Ljava/lang/String;

    .line 34
    :cond_4
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/f;->C()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 35
    iget-object v0, p1, Lcom/umeng/commonsdk/proguard/f;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/commonsdk/proguard/f;->i:Ljava/lang/String;

    .line 36
    :cond_5
    iget p1, p1, Lcom/umeng/commonsdk/proguard/f;->j:I

    iput p1, p0, Lcom/umeng/commonsdk/proguard/f;->j:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/umeng/commonsdk/proguard/f;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/umeng/commonsdk/proguard/f;->a:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/umeng/commonsdk/proguard/f;->b:Ljava/lang/String;

    .line 7
    iput-object p3, p0, Lcom/umeng/commonsdk/proguard/f;->c:Ljava/lang/String;

    .line 8
    iput p4, p0, Lcom/umeng/commonsdk/proguard/f;->d:I

    const/4 p1, 0x1

    .line 9
    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/proguard/f;->d(Z)V

    .line 10
    iput p5, p0, Lcom/umeng/commonsdk/proguard/f;->e:I

    .line 11
    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/proguard/f;->e(Z)V

    .line 12
    iput p6, p0, Lcom/umeng/commonsdk/proguard/f;->f:I

    .line 13
    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/proguard/f;->f(Z)V

    .line 14
    iput-object p7, p0, Lcom/umeng/commonsdk/proguard/f;->g:Ljava/nio/ByteBuffer;

    .line 15
    iput-object p8, p0, Lcom/umeng/commonsdk/proguard/f;->h:Ljava/lang/String;

    .line 16
    iput-object p9, p0, Lcom/umeng/commonsdk/proguard/f;->i:Ljava/lang/String;

    return-void
.end method

.method public static synthetic H()Lcom/umeng/commonsdk/proguard/an;
    .locals 1

    .line 1
    sget-object v0, Lcom/umeng/commonsdk/proguard/f;->m:Lcom/umeng/commonsdk/proguard/an;

    return-object v0
.end method

.method public static synthetic I()Lcom/umeng/commonsdk/proguard/ad;
    .locals 1

    .line 1
    sget-object v0, Lcom/umeng/commonsdk/proguard/f;->n:Lcom/umeng/commonsdk/proguard/ad;

    return-object v0
.end method

.method public static synthetic J()Lcom/umeng/commonsdk/proguard/ad;
    .locals 1

    .line 1
    sget-object v0, Lcom/umeng/commonsdk/proguard/f;->o:Lcom/umeng/commonsdk/proguard/ad;

    return-object v0
.end method

.method public static synthetic K()Lcom/umeng/commonsdk/proguard/ad;
    .locals 1

    .line 1
    sget-object v0, Lcom/umeng/commonsdk/proguard/f;->p:Lcom/umeng/commonsdk/proguard/ad;

    return-object v0
.end method

.method public static synthetic L()Lcom/umeng/commonsdk/proguard/ad;
    .locals 1

    .line 1
    sget-object v0, Lcom/umeng/commonsdk/proguard/f;->q:Lcom/umeng/commonsdk/proguard/ad;

    return-object v0
.end method

.method public static synthetic M()Lcom/umeng/commonsdk/proguard/ad;
    .locals 1

    .line 1
    sget-object v0, Lcom/umeng/commonsdk/proguard/f;->r:Lcom/umeng/commonsdk/proguard/ad;

    return-object v0
.end method

.method public static synthetic N()Lcom/umeng/commonsdk/proguard/ad;
    .locals 1

    .line 1
    sget-object v0, Lcom/umeng/commonsdk/proguard/f;->s:Lcom/umeng/commonsdk/proguard/ad;

    return-object v0
.end method

.method public static synthetic O()Lcom/umeng/commonsdk/proguard/ad;
    .locals 1

    .line 1
    sget-object v0, Lcom/umeng/commonsdk/proguard/f;->t:Lcom/umeng/commonsdk/proguard/ad;

    return-object v0
.end method

.method public static synthetic P()Lcom/umeng/commonsdk/proguard/ad;
    .locals 1

    .line 1
    sget-object v0, Lcom/umeng/commonsdk/proguard/f;->u:Lcom/umeng/commonsdk/proguard/ad;

    return-object v0
.end method

.method public static synthetic Q()Lcom/umeng/commonsdk/proguard/ad;
    .locals 1

    .line 1
    sget-object v0, Lcom/umeng/commonsdk/proguard/f;->v:Lcom/umeng/commonsdk/proguard/ad;

    return-object v0
.end method

.method public static synthetic R()Lcom/umeng/commonsdk/proguard/ad;
    .locals 1

    .line 1
    sget-object v0, Lcom/umeng/commonsdk/proguard/f;->w:Lcom/umeng/commonsdk/proguard/ad;

    return-object v0
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

    .line 10
    :try_start_0
    iput-byte v0, p0, Lcom/umeng/commonsdk/proguard/f;->C:B

    .line 11
    new-instance v0, Lcom/umeng/commonsdk/proguard/ac;

    new-instance v1, Lcom/umeng/commonsdk/proguard/au;

    invoke-direct {v1, p1}, Lcom/umeng/commonsdk/proguard/au;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/proguard/ac;-><init>(Lcom/umeng/commonsdk/proguard/aw;)V

    invoke-virtual {p0, v0}, Lcom/umeng/commonsdk/proguard/f;->read(Lcom/umeng/commonsdk/proguard/ai;)V
    :try_end_0
    .catch Lcom/umeng/commonsdk/proguard/p; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 12
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

    .line 8
    :try_start_0
    new-instance v0, Lcom/umeng/commonsdk/proguard/ac;

    new-instance v1, Lcom/umeng/commonsdk/proguard/au;

    invoke-direct {v1, p1}, Lcom/umeng/commonsdk/proguard/au;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/proguard/ac;-><init>(Lcom/umeng/commonsdk/proguard/aw;)V

    invoke-virtual {p0, v0}, Lcom/umeng/commonsdk/proguard/f;->write(Lcom/umeng/commonsdk/proguard/ai;)V
    :try_end_0
    .catch Lcom/umeng/commonsdk/proguard/p; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 9
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/f;->i:Ljava/lang/String;

    return-object v0
.end method

.method public B()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/umeng/commonsdk/proguard/f;->i:Ljava/lang/String;

    return-void
.end method

.method public C()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/f;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public D()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/umeng/commonsdk/proguard/f;->j:I

    return v0
.end method

.method public E()V
    .locals 2

    .line 1
    iget-byte v0, p0, Lcom/umeng/commonsdk/proguard/f;->C:B

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/proguard/g;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lcom/umeng/commonsdk/proguard/f;->C:B

    return-void
.end method

.method public F()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lcom/umeng/commonsdk/proguard/f;->C:B

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/proguard/g;->a(BI)Z

    move-result v0

    return v0
.end method

.method public G()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/p;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/f;->a:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 2
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/f;->b:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 3
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/f;->c:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 4
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/f;->g:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/f;->h:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/f;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-void

    .line 7
    :cond_0
    new-instance v0, Lcom/umeng/commonsdk/proguard/aj;

    const-string v1, "Required field \'checksum\' was not present! Struct: "

    invoke-static {v1}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 8
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/f;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/proguard/aj;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_1
    new-instance v0, Lcom/umeng/commonsdk/proguard/aj;

    const-string v1, "Required field \'guid\' was not present! Struct: "

    invoke-static {v1}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 10
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/f;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/proguard/aj;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11
    :cond_2
    new-instance v0, Lcom/umeng/commonsdk/proguard/aj;

    const-string v1, "Required field \'entity\' was not present! Struct: "

    invoke-static {v1}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 12
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/f;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/proguard/aj;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13
    :cond_3
    new-instance v0, Lcom/umeng/commonsdk/proguard/aj;

    const-string v1, "Required field \'signature\' was not present! Struct: "

    invoke-static {v1}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 14
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/f;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/proguard/aj;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15
    :cond_4
    new-instance v0, Lcom/umeng/commonsdk/proguard/aj;

    const-string v1, "Required field \'address\' was not present! Struct: "

    invoke-static {v1}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 16
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/f;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/proguard/aj;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17
    :cond_5
    new-instance v0, Lcom/umeng/commonsdk/proguard/aj;

    const-string v1, "Required field \'version\' was not present! Struct: "

    invoke-static {v1}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 18
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/f;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/proguard/aj;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a()Lcom/umeng/commonsdk/proguard/f;
    .locals 1

    .line 1
    new-instance v0, Lcom/umeng/commonsdk/proguard/f;

    invoke-direct {v0, p0}, Lcom/umeng/commonsdk/proguard/f;-><init>(Lcom/umeng/commonsdk/proguard/f;)V

    return-object v0
.end method

.method public a(I)Lcom/umeng/commonsdk/proguard/f;
    .locals 0

    .line 4
    iput p1, p0, Lcom/umeng/commonsdk/proguard/f;->d:I

    const/4 p1, 0x1

    .line 5
    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/proguard/f;->d(Z)V

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/umeng/commonsdk/proguard/f;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/umeng/commonsdk/proguard/f;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/nio/ByteBuffer;)Lcom/umeng/commonsdk/proguard/f;
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/umeng/commonsdk/proguard/f;->g:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public a([B)Lcom/umeng/commonsdk/proguard/f;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/proguard/f;->a(Ljava/nio/ByteBuffer;)Lcom/umeng/commonsdk/proguard/f;

    return-object p0
.end method

.method public a(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/umeng/commonsdk/proguard/f;->a:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public b(I)Lcom/umeng/commonsdk/proguard/f;
    .locals 0

    .line 4
    iput p1, p0, Lcom/umeng/commonsdk/proguard/f;->e:I

    const/4 p1, 0x1

    .line 5
    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/proguard/f;->e(Z)V

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/umeng/commonsdk/proguard/f;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/umeng/commonsdk/proguard/f;->b:Ljava/lang/String;

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/umeng/commonsdk/proguard/f;->b:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public c(I)Lcom/umeng/commonsdk/proguard/f;
    .locals 0

    .line 4
    iput p1, p0, Lcom/umeng/commonsdk/proguard/f;->f:I

    const/4 p1, 0x1

    .line 5
    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/proguard/f;->f(Z)V

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/umeng/commonsdk/proguard/f;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/umeng/commonsdk/proguard/f;->c:Ljava/lang/String;

    return-object p0
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/umeng/commonsdk/proguard/f;->a:Ljava/lang/String;

    return-void
.end method

.method public c(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/umeng/commonsdk/proguard/f;->c:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public clear()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/umeng/commonsdk/proguard/f;->a:Ljava/lang/String;

    .line 2
    iput-object v0, p0, Lcom/umeng/commonsdk/proguard/f;->b:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/umeng/commonsdk/proguard/f;->c:Ljava/lang/String;

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v1}, Lcom/umeng/commonsdk/proguard/f;->d(Z)V

    .line 5
    iput v1, p0, Lcom/umeng/commonsdk/proguard/f;->d:I

    .line 6
    invoke-virtual {p0, v1}, Lcom/umeng/commonsdk/proguard/f;->e(Z)V

    .line 7
    iput v1, p0, Lcom/umeng/commonsdk/proguard/f;->e:I

    .line 8
    invoke-virtual {p0, v1}, Lcom/umeng/commonsdk/proguard/f;->f(Z)V

    .line 9
    iput v1, p0, Lcom/umeng/commonsdk/proguard/f;->f:I

    .line 10
    iput-object v0, p0, Lcom/umeng/commonsdk/proguard/f;->g:Ljava/nio/ByteBuffer;

    .line 11
    iput-object v0, p0, Lcom/umeng/commonsdk/proguard/f;->h:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/umeng/commonsdk/proguard/f;->i:Ljava/lang/String;

    .line 13
    invoke-virtual {p0, v1}, Lcom/umeng/commonsdk/proguard/f;->j(Z)V

    .line 14
    iput v1, p0, Lcom/umeng/commonsdk/proguard/f;->j:I

    return-void
.end method

.method public d(I)Lcom/umeng/commonsdk/proguard/f;
    .locals 0

    .line 4
    iput p1, p0, Lcom/umeng/commonsdk/proguard/f;->j:I

    const/4 p1, 0x1

    .line 5
    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/proguard/f;->j(Z)V

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/umeng/commonsdk/proguard/f;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/umeng/commonsdk/proguard/f;->h:Ljava/lang/String;

    return-object p0
.end method

.method public d(Z)V
    .locals 2

    .line 2
    iget-byte v0, p0, Lcom/umeng/commonsdk/proguard/f;->C:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/umeng/commonsdk/proguard/g;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lcom/umeng/commonsdk/proguard/f;->C:B

    return-void
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/f;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic deepCopy()Lcom/umeng/commonsdk/proguard/j;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/f;->a()Lcom/umeng/commonsdk/proguard/f;

    move-result-object v0

    return-object v0
.end method

.method public e(I)Lcom/umeng/commonsdk/proguard/f$e;
    .locals 0

    .line 4
    invoke-static {p1}, Lcom/umeng/commonsdk/proguard/f$e;->a(I)Lcom/umeng/commonsdk/proguard/f$e;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/String;)Lcom/umeng/commonsdk/proguard/f;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/umeng/commonsdk/proguard/f;->i:Ljava/lang/String;

    return-object p0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/f;->b:Ljava/lang/String;

    return-object v0
.end method

.method public e(Z)V
    .locals 2

    .line 2
    iget-byte v0, p0, Lcom/umeng/commonsdk/proguard/f;->C:B

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/umeng/commonsdk/proguard/g;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lcom/umeng/commonsdk/proguard/f;->C:B

    return-void
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/umeng/commonsdk/proguard/f;->b:Ljava/lang/String;

    return-void
.end method

.method public f(Z)V
    .locals 2

    .line 2
    iget-byte v0, p0, Lcom/umeng/commonsdk/proguard/f;->C:B

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Lcom/umeng/commonsdk/proguard/g;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lcom/umeng/commonsdk/proguard/f;->C:B

    return-void
.end method

.method public synthetic fieldForId(I)Lcom/umeng/commonsdk/proguard/q;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/proguard/f;->e(I)Lcom/umeng/commonsdk/proguard/f$e;

    move-result-object p1

    return-object p1
.end method

.method public g(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/umeng/commonsdk/proguard/f;->g:Ljava/nio/ByteBuffer;

    :cond_0
    return-void
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/f;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/f;->c:Ljava/lang/String;

    return-object v0
.end method

.method public h(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/umeng/commonsdk/proguard/f;->h:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public i()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/umeng/commonsdk/proguard/f;->c:Ljava/lang/String;

    return-void
.end method

.method public i(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/umeng/commonsdk/proguard/f;->i:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public j(Z)V
    .locals 2

    .line 2
    iget-byte v0, p0, Lcom/umeng/commonsdk/proguard/f;->C:B

    const/4 v1, 0x3

    invoke-static {v0, v1, p1}, Lcom/umeng/commonsdk/proguard/g;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lcom/umeng/commonsdk/proguard/f;->C:B

    return-void
.end method

.method public j()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/f;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public k()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/umeng/commonsdk/proguard/f;->d:I

    return v0
.end method

.method public l()V
    .locals 2

    .line 1
    iget-byte v0, p0, Lcom/umeng/commonsdk/proguard/f;->C:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/proguard/g;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lcom/umeng/commonsdk/proguard/f;->C:B

    return-void
.end method

.method public m()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lcom/umeng/commonsdk/proguard/f;->C:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/proguard/g;->a(BI)Z

    move-result v0

    return v0
.end method

.method public n()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/umeng/commonsdk/proguard/f;->e:I

    return v0
.end method

.method public o()V
    .locals 2

    .line 1
    iget-byte v0, p0, Lcom/umeng/commonsdk/proguard/f;->C:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/proguard/g;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lcom/umeng/commonsdk/proguard/f;->C:B

    return-void
.end method

.method public p()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lcom/umeng/commonsdk/proguard/f;->C:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/proguard/g;->a(BI)Z

    move-result v0

    return v0
.end method

.method public q()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/umeng/commonsdk/proguard/f;->f:I

    return v0
.end method

.method public r()V
    .locals 2

    .line 1
    iget-byte v0, p0, Lcom/umeng/commonsdk/proguard/f;->C:B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/proguard/g;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lcom/umeng/commonsdk/proguard/f;->C:B

    return-void
.end method

.method public read(Lcom/umeng/commonsdk/proguard/ai;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/p;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/umeng/commonsdk/proguard/f;->x:Ljava/util/Map;

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

.method public s()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lcom/umeng/commonsdk/proguard/f;->C:B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/proguard/g;->a(BI)Z

    move-result v0

    return v0
.end method

.method public t()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/f;->g:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/umeng/commonsdk/proguard/k;->c(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/umeng/commonsdk/proguard/f;->a(Ljava/nio/ByteBuffer;)Lcom/umeng/commonsdk/proguard/f;

    .line 2
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/f;->g:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "UMEnvelope("

    const-string v1, "version:"

    .line 1
    invoke-static {v0, v1}, Lf/b/a/a/a;->q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/umeng/commonsdk/proguard/f;->a:Ljava/lang/String;

    const-string v2, "null"

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, ", "

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "address:"

    .line 6
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    iget-object v3, p0, Lcom/umeng/commonsdk/proguard/f;->b:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 8
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "signature:"

    .line 11
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    iget-object v3, p0, Lcom/umeng/commonsdk/proguard/f;->c:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 13
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 14
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "serial_num:"

    .line 16
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget v3, p0, Lcom/umeng/commonsdk/proguard/f;->d:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "ts_secs:"

    .line 19
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    iget v3, p0, Lcom/umeng/commonsdk/proguard/f;->e:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "length:"

    .line 22
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    iget v3, p0, Lcom/umeng/commonsdk/proguard/f;->f:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "entity:"

    .line 25
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget-object v3, p0, Lcom/umeng/commonsdk/proguard/f;->g:Ljava/nio/ByteBuffer;

    if-nez v3, :cond_3

    .line 27
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 28
    :cond_3
    invoke-static {v3, v0}, Lcom/umeng/commonsdk/proguard/k;->a(Ljava/nio/ByteBuffer;Ljava/lang/StringBuilder;)V

    .line 29
    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "guid:"

    .line 30
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    iget-object v3, p0, Lcom/umeng/commonsdk/proguard/f;->h:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 32
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 33
    :cond_4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "checksum:"

    .line 35
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget-object v3, p0, Lcom/umeng/commonsdk/proguard/f;->i:Ljava/lang/String;

    if-nez v3, :cond_5

    .line 37
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 38
    :cond_5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    :goto_5
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/f;->F()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "codex:"

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    iget v1, p0, Lcom/umeng/commonsdk/proguard/f;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_6
    const-string v1, ")"

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/f;->g:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public v()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/umeng/commonsdk/proguard/f;->g:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public w()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/f;->g:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public write(Lcom/umeng/commonsdk/proguard/ai;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/p;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/umeng/commonsdk/proguard/f;->x:Ljava/util/Map;

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

.method public x()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/f;->h:Ljava/lang/String;

    return-object v0
.end method

.method public y()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/umeng/commonsdk/proguard/f;->h:Ljava/lang/String;

    return-void
.end method

.method public z()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/f;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
