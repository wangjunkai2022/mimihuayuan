.class public final enum Lcom/umeng/commonsdk/stateless/b$e;
.super Ljava/lang/Enum;
.source "UMSLEnvelope.java"

# interfaces
.implements Lcom/umeng/commonsdk/proguard/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/stateless/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/umeng/commonsdk/stateless/b$e;",
        ">;",
        "Lcom/umeng/commonsdk/proguard/q;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/umeng/commonsdk/stateless/b$e;

.field public static final enum b:Lcom/umeng/commonsdk/stateless/b$e;

.field public static final enum c:Lcom/umeng/commonsdk/stateless/b$e;

.field public static final enum d:Lcom/umeng/commonsdk/stateless/b$e;

.field public static final enum e:Lcom/umeng/commonsdk/stateless/b$e;

.field public static final enum f:Lcom/umeng/commonsdk/stateless/b$e;

.field public static final enum g:Lcom/umeng/commonsdk/stateless/b$e;

.field public static final enum h:Lcom/umeng/commonsdk/stateless/b$e;

.field public static final enum i:Lcom/umeng/commonsdk/stateless/b$e;

.field public static final enum j:Lcom/umeng/commonsdk/stateless/b$e;

.field public static final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/umeng/commonsdk/stateless/b$e;",
            ">;"
        }
    .end annotation
.end field

.field public static final synthetic n:[Lcom/umeng/commonsdk/stateless/b$e;


# instance fields
.field public final l:S

.field public final m:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v0, Lcom/umeng/commonsdk/stateless/b$e;

    const-string v1, "VERSION"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "version"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/umeng/commonsdk/stateless/b$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/commonsdk/stateless/b$e;->a:Lcom/umeng/commonsdk/stateless/b$e;

    new-instance v0, Lcom/umeng/commonsdk/stateless/b$e;

    const-string v1, "ADDRESS"

    const/4 v4, 0x2

    const-string v5, "address"

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/umeng/commonsdk/stateless/b$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/commonsdk/stateless/b$e;->b:Lcom/umeng/commonsdk/stateless/b$e;

    new-instance v0, Lcom/umeng/commonsdk/stateless/b$e;

    const-string v1, "SIGNATURE"

    const/4 v5, 0x3

    const-string v6, "signature"

    invoke-direct {v0, v1, v4, v5, v6}, Lcom/umeng/commonsdk/stateless/b$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/commonsdk/stateless/b$e;->c:Lcom/umeng/commonsdk/stateless/b$e;

    new-instance v0, Lcom/umeng/commonsdk/stateless/b$e;

    const-string v1, "SERIAL_NUM"

    const/4 v6, 0x4

    const-string v7, "serial_num"

    invoke-direct {v0, v1, v5, v6, v7}, Lcom/umeng/commonsdk/stateless/b$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/commonsdk/stateless/b$e;->d:Lcom/umeng/commonsdk/stateless/b$e;

    .line 2
    new-instance v0, Lcom/umeng/commonsdk/stateless/b$e;

    const-string v1, "TS_SECS"

    const/4 v7, 0x5

    const-string v8, "ts_secs"

    invoke-direct {v0, v1, v6, v7, v8}, Lcom/umeng/commonsdk/stateless/b$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/commonsdk/stateless/b$e;->e:Lcom/umeng/commonsdk/stateless/b$e;

    new-instance v0, Lcom/umeng/commonsdk/stateless/b$e;

    const-string v1, "LENGTH"

    const/4 v8, 0x6

    const-string v9, "length"

    invoke-direct {v0, v1, v7, v8, v9}, Lcom/umeng/commonsdk/stateless/b$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/commonsdk/stateless/b$e;->f:Lcom/umeng/commonsdk/stateless/b$e;

    new-instance v0, Lcom/umeng/commonsdk/stateless/b$e;

    const-string v1, "ENTITY"

    const/4 v9, 0x7

    const-string v10, "entity"

    invoke-direct {v0, v1, v8, v9, v10}, Lcom/umeng/commonsdk/stateless/b$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/commonsdk/stateless/b$e;->g:Lcom/umeng/commonsdk/stateless/b$e;

    .line 3
    new-instance v0, Lcom/umeng/commonsdk/stateless/b$e;

    const-string v1, "GUID"

    const/16 v10, 0x8

    const-string v11, "guid"

    invoke-direct {v0, v1, v9, v10, v11}, Lcom/umeng/commonsdk/stateless/b$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/commonsdk/stateless/b$e;->h:Lcom/umeng/commonsdk/stateless/b$e;

    new-instance v0, Lcom/umeng/commonsdk/stateless/b$e;

    const-string v1, "CHECKSUM"

    const/16 v11, 0x9

    const-string v12, "checksum"

    invoke-direct {v0, v1, v10, v11, v12}, Lcom/umeng/commonsdk/stateless/b$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/commonsdk/stateless/b$e;->i:Lcom/umeng/commonsdk/stateless/b$e;

    new-instance v0, Lcom/umeng/commonsdk/stateless/b$e;

    const-string v1, "CODEX"

    const/16 v12, 0xa

    const-string v13, "codex"

    invoke-direct {v0, v1, v11, v12, v13}, Lcom/umeng/commonsdk/stateless/b$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/commonsdk/stateless/b$e;->j:Lcom/umeng/commonsdk/stateless/b$e;

    new-array v1, v12, [Lcom/umeng/commonsdk/stateless/b$e;

    .line 4
    sget-object v12, Lcom/umeng/commonsdk/stateless/b$e;->a:Lcom/umeng/commonsdk/stateless/b$e;

    aput-object v12, v1, v2

    sget-object v2, Lcom/umeng/commonsdk/stateless/b$e;->b:Lcom/umeng/commonsdk/stateless/b$e;

    aput-object v2, v1, v3

    sget-object v2, Lcom/umeng/commonsdk/stateless/b$e;->c:Lcom/umeng/commonsdk/stateless/b$e;

    aput-object v2, v1, v4

    sget-object v2, Lcom/umeng/commonsdk/stateless/b$e;->d:Lcom/umeng/commonsdk/stateless/b$e;

    aput-object v2, v1, v5

    sget-object v2, Lcom/umeng/commonsdk/stateless/b$e;->e:Lcom/umeng/commonsdk/stateless/b$e;

    aput-object v2, v1, v6

    sget-object v2, Lcom/umeng/commonsdk/stateless/b$e;->f:Lcom/umeng/commonsdk/stateless/b$e;

    aput-object v2, v1, v7

    sget-object v2, Lcom/umeng/commonsdk/stateless/b$e;->g:Lcom/umeng/commonsdk/stateless/b$e;

    aput-object v2, v1, v8

    sget-object v2, Lcom/umeng/commonsdk/stateless/b$e;->h:Lcom/umeng/commonsdk/stateless/b$e;

    aput-object v2, v1, v9

    sget-object v2, Lcom/umeng/commonsdk/stateless/b$e;->i:Lcom/umeng/commonsdk/stateless/b$e;

    aput-object v2, v1, v10

    aput-object v0, v1, v11

    sput-object v1, Lcom/umeng/commonsdk/stateless/b$e;->n:[Lcom/umeng/commonsdk/stateless/b$e;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/stateless/b$e;->k:Ljava/util/Map;

    .line 6
    const-class v0, Lcom/umeng/commonsdk/stateless/b$e;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/umeng/commonsdk/stateless/b$e;

    .line 7
    sget-object v2, Lcom/umeng/commonsdk/stateless/b$e;->k:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/umeng/commonsdk/stateless/b$e;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ISLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-short p3, p0, Lcom/umeng/commonsdk/stateless/b$e;->l:S

    .line 3
    iput-object p4, p0, Lcom/umeng/commonsdk/stateless/b$e;->m:Ljava/lang/String;

    return-void
.end method

.method public static a(I)Lcom/umeng/commonsdk/stateless/b$e;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :pswitch_0
    sget-object p0, Lcom/umeng/commonsdk/stateless/b$e;->j:Lcom/umeng/commonsdk/stateless/b$e;

    return-object p0

    .line 2
    :pswitch_1
    sget-object p0, Lcom/umeng/commonsdk/stateless/b$e;->i:Lcom/umeng/commonsdk/stateless/b$e;

    return-object p0

    .line 3
    :pswitch_2
    sget-object p0, Lcom/umeng/commonsdk/stateless/b$e;->h:Lcom/umeng/commonsdk/stateless/b$e;

    return-object p0

    .line 4
    :pswitch_3
    sget-object p0, Lcom/umeng/commonsdk/stateless/b$e;->g:Lcom/umeng/commonsdk/stateless/b$e;

    return-object p0

    .line 5
    :pswitch_4
    sget-object p0, Lcom/umeng/commonsdk/stateless/b$e;->f:Lcom/umeng/commonsdk/stateless/b$e;

    return-object p0

    .line 6
    :pswitch_5
    sget-object p0, Lcom/umeng/commonsdk/stateless/b$e;->e:Lcom/umeng/commonsdk/stateless/b$e;

    return-object p0

    .line 7
    :pswitch_6
    sget-object p0, Lcom/umeng/commonsdk/stateless/b$e;->d:Lcom/umeng/commonsdk/stateless/b$e;

    return-object p0

    .line 8
    :pswitch_7
    sget-object p0, Lcom/umeng/commonsdk/stateless/b$e;->c:Lcom/umeng/commonsdk/stateless/b$e;

    return-object p0

    .line 9
    :pswitch_8
    sget-object p0, Lcom/umeng/commonsdk/stateless/b$e;->b:Lcom/umeng/commonsdk/stateless/b$e;

    return-object p0

    .line 10
    :pswitch_9
    sget-object p0, Lcom/umeng/commonsdk/stateless/b$e;->a:Lcom/umeng/commonsdk/stateless/b$e;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;)Lcom/umeng/commonsdk/stateless/b$e;
    .locals 1

    .line 11
    sget-object v0, Lcom/umeng/commonsdk/stateless/b$e;->k:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/umeng/commonsdk/stateless/b$e;

    return-object p0
.end method

.method public static b(I)Lcom/umeng/commonsdk/stateless/b$e;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/umeng/commonsdk/stateless/b$e;->a(I)Lcom/umeng/commonsdk/stateless/b$e;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Field "

    const-string v2, " doesn\'t exist!"

    invoke-static {v1, p0, v2}, Lf/b/a/a/a;->K(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/umeng/commonsdk/stateless/b$e;
    .locals 1

    .line 1
    const-class v0, Lcom/umeng/commonsdk/stateless/b$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/umeng/commonsdk/stateless/b$e;

    return-object p0
.end method

.method public static values()[Lcom/umeng/commonsdk/stateless/b$e;
    .locals 1

    .line 1
    sget-object v0, Lcom/umeng/commonsdk/stateless/b$e;->n:[Lcom/umeng/commonsdk/stateless/b$e;

    invoke-virtual {v0}, [Lcom/umeng/commonsdk/stateless/b$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/umeng/commonsdk/stateless/b$e;

    return-object v0
.end method


# virtual methods
.method public a()S
    .locals 1

    .line 12
    iget-short v0, p0, Lcom/umeng/commonsdk/stateless/b$e;->l:S

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/umeng/commonsdk/stateless/b$e;->m:Ljava/lang/String;

    return-object v0
.end method
