.class public final enum Lf/j/a/a/g/b;
.super Ljava/lang/Enum;
.source "RefreshState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lf/j/a/a/g/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum h:Lf/j/a/a/g/b;

.field public static final enum i:Lf/j/a/a/g/b;

.field public static final enum j:Lf/j/a/a/g/b;

.field public static final enum k:Lf/j/a/a/g/b;

.field public static final enum l:Lf/j/a/a/g/b;

.field public static final enum m:Lf/j/a/a/g/b;

.field public static final enum n:Lf/j/a/a/g/b;

.field public static final enum o:Lf/j/a/a/g/b;

.field public static final enum p:Lf/j/a/a/g/b;

.field public static final enum q:Lf/j/a/a/g/b;

.field public static final enum r:Lf/j/a/a/g/b;

.field public static final enum s:Lf/j/a/a/g/b;

.field public static final enum t:Lf/j/a/a/g/b;

.field public static final enum u:Lf/j/a/a/g/b;

.field public static final enum v:Lf/j/a/a/g/b;

.field public static final enum w:Lf/j/a/a/g/b;

.field public static final enum x:Lf/j/a/a/g/b;

.field public static final synthetic y:[Lf/j/a/a/g/b;


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:Z

.field public final d:Z

.field public final e:Z

.field public final f:Z

.field public final g:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 19

    .line 1
    new-instance v9, Lf/j/a/a/g/b;

    const-string v1, "None"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lf/j/a/a/g/b;-><init>(Ljava/lang/String;IIZZZZZ)V

    sput-object v9, Lf/j/a/a/g/b;->h:Lf/j/a/a/g/b;

    .line 2
    new-instance v0, Lf/j/a/a/g/b;

    const-string v11, "PullDownToRefresh"

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lf/j/a/a/g/b;-><init>(Ljava/lang/String;IIZZZZZ)V

    sput-object v0, Lf/j/a/a/g/b;->i:Lf/j/a/a/g/b;

    new-instance v0, Lf/j/a/a/g/b;

    const-string v2, "PullUpToLoad"

    const/4 v3, 0x2

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v9, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lf/j/a/a/g/b;-><init>(Ljava/lang/String;IIZZZZZ)V

    sput-object v0, Lf/j/a/a/g/b;->j:Lf/j/a/a/g/b;

    .line 3
    new-instance v0, Lf/j/a/a/g/b;

    const-string v11, "PullDownCanceled"

    const/4 v12, 0x3

    const/4 v14, 0x0

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lf/j/a/a/g/b;-><init>(Ljava/lang/String;IIZZZZZ)V

    sput-object v0, Lf/j/a/a/g/b;->k:Lf/j/a/a/g/b;

    new-instance v0, Lf/j/a/a/g/b;

    const-string v2, "PullUpCanceled"

    const/4 v3, 0x4

    const/4 v5, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lf/j/a/a/g/b;-><init>(Ljava/lang/String;IIZZZZZ)V

    sput-object v0, Lf/j/a/a/g/b;->l:Lf/j/a/a/g/b;

    .line 4
    new-instance v0, Lf/j/a/a/g/b;

    const-string v11, "ReleaseToRefresh"

    const/4 v12, 0x5

    const/4 v14, 0x1

    const/16 v18, 0x1

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lf/j/a/a/g/b;-><init>(Ljava/lang/String;IIZZZZZ)V

    sput-object v0, Lf/j/a/a/g/b;->m:Lf/j/a/a/g/b;

    new-instance v0, Lf/j/a/a/g/b;

    const-string v2, "ReleaseToLoad"

    const/4 v3, 0x6

    const/4 v5, 0x1

    const/4 v9, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lf/j/a/a/g/b;-><init>(Ljava/lang/String;IIZZZZZ)V

    sput-object v0, Lf/j/a/a/g/b;->n:Lf/j/a/a/g/b;

    .line 5
    new-instance v0, Lf/j/a/a/g/b;

    const-string v11, "ReleaseToTwoLevel"

    const/4 v12, 0x7

    const/16 v17, 0x1

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lf/j/a/a/g/b;-><init>(Ljava/lang/String;IIZZZZZ)V

    sput-object v0, Lf/j/a/a/g/b;->o:Lf/j/a/a/g/b;

    new-instance v0, Lf/j/a/a/g/b;

    const-string v2, "TwoLevelReleased"

    const/16 v3, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lf/j/a/a/g/b;-><init>(Ljava/lang/String;IIZZZZZ)V

    sput-object v0, Lf/j/a/a/g/b;->p:Lf/j/a/a/g/b;

    .line 6
    new-instance v0, Lf/j/a/a/g/b;

    const-string v11, "RefreshReleased"

    const/16 v12, 0x9

    const/4 v14, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lf/j/a/a/g/b;-><init>(Ljava/lang/String;IIZZZZZ)V

    sput-object v0, Lf/j/a/a/g/b;->q:Lf/j/a/a/g/b;

    new-instance v0, Lf/j/a/a/g/b;

    const-string v2, "LoadReleased"

    const/16 v3, 0xa

    const/4 v4, 0x2

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lf/j/a/a/g/b;-><init>(Ljava/lang/String;IIZZZZZ)V

    sput-object v0, Lf/j/a/a/g/b;->r:Lf/j/a/a/g/b;

    .line 7
    new-instance v0, Lf/j/a/a/g/b;

    const-string v11, "Refreshing"

    const/16 v12, 0xb

    const/4 v15, 0x1

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lf/j/a/a/g/b;-><init>(Ljava/lang/String;IIZZZZZ)V

    sput-object v0, Lf/j/a/a/g/b;->s:Lf/j/a/a/g/b;

    new-instance v0, Lf/j/a/a/g/b;

    const-string v2, "Loading"

    const/16 v3, 0xc

    const/4 v6, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lf/j/a/a/g/b;-><init>(Ljava/lang/String;IIZZZZZ)V

    sput-object v0, Lf/j/a/a/g/b;->t:Lf/j/a/a/g/b;

    new-instance v0, Lf/j/a/a/g/b;

    const-string v11, "TwoLevel"

    const/16 v12, 0xd

    const/16 v17, 0x1

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lf/j/a/a/g/b;-><init>(Ljava/lang/String;IIZZZZZ)V

    sput-object v0, Lf/j/a/a/g/b;->u:Lf/j/a/a/g/b;

    .line 8
    new-instance v0, Lf/j/a/a/g/b;

    const-string v2, "RefreshFinish"

    const/16 v3, 0xe

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lf/j/a/a/g/b;-><init>(Ljava/lang/String;IIZZZZZ)V

    sput-object v0, Lf/j/a/a/g/b;->v:Lf/j/a/a/g/b;

    new-instance v0, Lf/j/a/a/g/b;

    const-string v11, "LoadFinish"

    const/16 v12, 0xf

    const/4 v13, 0x2

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lf/j/a/a/g/b;-><init>(Ljava/lang/String;IIZZZZZ)V

    sput-object v0, Lf/j/a/a/g/b;->w:Lf/j/a/a/g/b;

    new-instance v0, Lf/j/a/a/g/b;

    const-string v2, "TwoLevelFinish"

    const/16 v3, 0x10

    const/4 v8, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lf/j/a/a/g/b;-><init>(Ljava/lang/String;IIZZZZZ)V

    sput-object v0, Lf/j/a/a/g/b;->x:Lf/j/a/a/g/b;

    const/16 v1, 0x11

    new-array v1, v1, [Lf/j/a/a/g/b;

    .line 9
    sget-object v2, Lf/j/a/a/g/b;->h:Lf/j/a/a/g/b;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lf/j/a/a/g/b;->i:Lf/j/a/a/g/b;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lf/j/a/a/g/b;->j:Lf/j/a/a/g/b;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lf/j/a/a/g/b;->k:Lf/j/a/a/g/b;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sget-object v2, Lf/j/a/a/g/b;->l:Lf/j/a/a/g/b;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    sget-object v2, Lf/j/a/a/g/b;->m:Lf/j/a/a/g/b;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    sget-object v2, Lf/j/a/a/g/b;->n:Lf/j/a/a/g/b;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    sget-object v2, Lf/j/a/a/g/b;->o:Lf/j/a/a/g/b;

    const/4 v3, 0x7

    aput-object v2, v1, v3

    sget-object v2, Lf/j/a/a/g/b;->p:Lf/j/a/a/g/b;

    const/16 v3, 0x8

    aput-object v2, v1, v3

    sget-object v2, Lf/j/a/a/g/b;->q:Lf/j/a/a/g/b;

    const/16 v3, 0x9

    aput-object v2, v1, v3

    sget-object v2, Lf/j/a/a/g/b;->r:Lf/j/a/a/g/b;

    const/16 v3, 0xa

    aput-object v2, v1, v3

    sget-object v2, Lf/j/a/a/g/b;->s:Lf/j/a/a/g/b;

    const/16 v3, 0xb

    aput-object v2, v1, v3

    sget-object v2, Lf/j/a/a/g/b;->t:Lf/j/a/a/g/b;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    sget-object v2, Lf/j/a/a/g/b;->u:Lf/j/a/a/g/b;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v2, Lf/j/a/a/g/b;->v:Lf/j/a/a/g/b;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    sget-object v2, Lf/j/a/a/g/b;->w:Lf/j/a/a/g/b;

    const/16 v3, 0xf

    aput-object v2, v1, v3

    const/16 v2, 0x10

    aput-object v0, v1, v2

    sput-object v1, Lf/j/a/a/g/b;->y:[Lf/j/a/a/g/b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIZZZZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZZZZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    if-ne p3, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iput-boolean v0, p0, Lf/j/a/a/g/b;->a:Z

    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    const/4 p1, 0x1

    .line 3
    :cond_1
    iput-boolean p1, p0, Lf/j/a/a/g/b;->b:Z

    .line 4
    iput-boolean p4, p0, Lf/j/a/a/g/b;->d:Z

    .line 5
    iput-boolean p5, p0, Lf/j/a/a/g/b;->e:Z

    .line 6
    iput-boolean p6, p0, Lf/j/a/a/g/b;->f:Z

    .line 7
    iput-boolean p7, p0, Lf/j/a/a/g/b;->c:Z

    .line 8
    iput-boolean p8, p0, Lf/j/a/a/g/b;->g:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lf/j/a/a/g/b;
    .locals 1

    .line 1
    const-class v0, Lf/j/a/a/g/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lf/j/a/a/g/b;

    return-object p0
.end method

.method public static values()[Lf/j/a/a/g/b;
    .locals 1

    .line 1
    sget-object v0, Lf/j/a/a/g/b;->y:[Lf/j/a/a/g/b;

    invoke-virtual {v0}, [Lf/j/a/a/g/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lf/j/a/a/g/b;

    return-object v0
.end method


# virtual methods
.method public a()Lf/j/a/a/g/b;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lf/j/a/a/g/b;->a:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lf/j/a/a/g/b;->c:Z

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lf/j/a/a/g/b;->values()[Lf/j/a/a/g/b;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    return-object p0
.end method

.method public b()Lf/j/a/a/g/b;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lf/j/a/a/g/b;->b:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lf/j/a/a/g/b;->c:Z

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lf/j/a/a/g/b;->values()[Lf/j/a/a/g/b;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    return-object p0
.end method
