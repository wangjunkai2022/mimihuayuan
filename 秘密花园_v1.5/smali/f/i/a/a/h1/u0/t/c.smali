.class public final Lf/i/a/a/h1/u0/t/c;
.super Ljava/lang/Object;
.source "DefaultHlsPlaylistTracker.java"

# interfaces
.implements Lf/i/a/a/h1/u0/t/j;
.implements Lf/i/a/a/l1/c0$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/i/a/a/h1/u0/t/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf/i/a/a/h1/u0/t/j;",
        "Lf/i/a/a/l1/c0$b<",
        "Lf/i/a/a/l1/e0<",
        "Lf/i/a/a/h1/u0/t/g;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final q:Lf/i/a/a/h1/u0/t/j$a;


# instance fields
.field public final a:Lf/i/a/a/h1/u0/h;

.field public final b:Lf/i/a/a/h1/u0/t/i;

.field public final c:Lf/i/a/a/l1/b0;

.field public final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/net/Uri;",
            "Lf/i/a/a/h1/u0/t/c$a;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf/i/a/a/h1/u0/t/j$b;",
            ">;"
        }
    .end annotation
.end field

.field public final f:D

.field public g:Lf/i/a/a/l1/e0$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/i/a/a/l1/e0$a<",
            "Lf/i/a/a/h1/u0/t/g;",
            ">;"
        }
    .end annotation
.end field

.field public h:Lf/i/a/a/h1/f0$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public i:Lf/i/a/a/l1/c0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public j:Landroid/os/Handler;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public k:Lf/i/a/a/h1/u0/t/j$e;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public l:Lf/i/a/a/h1/u0/t/e;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public m:Landroid/net/Uri;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public n:Lf/i/a/a/h1/u0/t/f;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public o:Z

.field public p:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lf/i/a/a/h1/u0/t/a;->a:Lf/i/a/a/h1/u0/t/a;

    sput-object v0, Lf/i/a/a/h1/u0/t/c;->q:Lf/i/a/a/h1/u0/t/j$a;

    return-void
.end method

.method public constructor <init>(Lf/i/a/a/h1/u0/h;Lf/i/a/a/l1/b0;Lf/i/a/a/h1/u0/t/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf/i/a/a/h1/u0/t/c;->a:Lf/i/a/a/h1/u0/h;

    .line 3
    iput-object p3, p0, Lf/i/a/a/h1/u0/t/c;->b:Lf/i/a/a/h1/u0/t/i;

    .line 4
    iput-object p2, p0, Lf/i/a/a/h1/u0/t/c;->c:Lf/i/a/a/l1/b0;

    const-wide/high16 p1, 0x400c000000000000L    # 3.5

    .line 5
    iput-wide p1, p0, Lf/i/a/a/h1/u0/t/c;->f:D

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lf/i/a/a/h1/u0/t/c;->e:Ljava/util/List;

    .line 7
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lf/i/a/a/h1/u0/t/c;->d:Ljava/util/HashMap;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 8
    iput-wide p1, p0, Lf/i/a/a/h1/u0/t/c;->p:J

    return-void
.end method

.method public static a(Lf/i/a/a/h1/u0/t/c;Landroid/net/Uri;J)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/u0/t/c;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    iget-object v3, p0, Lf/i/a/a/h1/u0/t/c;->e:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf/i/a/a/h1/u0/t/j$b;

    invoke-interface {v3, p1, p2, p3}, Lf/i/a/a/h1/u0/t/j$b;->d(Landroid/net/Uri;J)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public static b(Lf/i/a/a/h1/u0/t/c;Lf/i/a/a/h1/u0/t/f;Lf/i/a/a/h1/u0/t/f;)Lf/i/a/a/h1/u0/t/f;
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    if-eqz v0, :cond_11

    if-eqz v2, :cond_10

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    .line 1
    iget-wide v5, v2, Lf/i/a/a/h1/u0/t/f;->i:J

    iget-wide v7, v1, Lf/i/a/a/h1/u0/t/f;->i:J

    cmp-long v9, v5, v7

    if-lez v9, :cond_0

    goto :goto_1

    :cond_0
    if-gez v9, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    iget-object v5, v2, Lf/i/a/a/h1/u0/t/f;->o:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    .line 3
    iget-object v6, v1, Lf/i/a/a/h1/u0/t/f;->o:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-gt v5, v6, :cond_3

    if-ne v5, v6, :cond_2

    .line 4
    iget-boolean v5, v2, Lf/i/a/a/h1/u0/t/f;->l:Z

    if-eqz v5, :cond_2

    iget-boolean v5, v1, Lf/i/a/a/h1/u0/t/f;->l:Z

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v3, 0x0

    :cond_3
    :goto_1
    if-nez v3, :cond_6

    .line 5
    iget-boolean v0, v2, Lf/i/a/a/h1/u0/t/f;->l:Z

    if-eqz v0, :cond_5

    .line 6
    iget-boolean v0, v1, Lf/i/a/a/h1/u0/t/f;->l:Z

    if-eqz v0, :cond_4

    goto :goto_2

    .line 7
    :cond_4
    new-instance v0, Lf/i/a/a/h1/u0/t/f;

    move-object v2, v0

    iget v3, v1, Lf/i/a/a/h1/u0/t/f;->d:I

    iget-object v4, v1, Lf/i/a/a/h1/u0/t/g;->a:Ljava/lang/String;

    iget-object v5, v1, Lf/i/a/a/h1/u0/t/g;->b:Ljava/util/List;

    iget-wide v6, v1, Lf/i/a/a/h1/u0/t/f;->e:J

    iget-wide v8, v1, Lf/i/a/a/h1/u0/t/f;->f:J

    iget-boolean v10, v1, Lf/i/a/a/h1/u0/t/f;->g:Z

    iget v11, v1, Lf/i/a/a/h1/u0/t/f;->h:I

    iget-wide v12, v1, Lf/i/a/a/h1/u0/t/f;->i:J

    iget v14, v1, Lf/i/a/a/h1/u0/t/f;->j:I

    move-object/from16 p0, v2

    move/from16 p2, v3

    iget-wide v2, v1, Lf/i/a/a/h1/u0/t/f;->k:J

    move-wide v15, v2

    iget-boolean v2, v1, Lf/i/a/a/h1/u0/t/g;->c:Z

    move/from16 v17, v2

    const/16 v18, 0x1

    iget-boolean v2, v1, Lf/i/a/a/h1/u0/t/f;->m:Z

    move/from16 v19, v2

    iget-object v2, v1, Lf/i/a/a/h1/u0/t/f;->n:Lf/i/a/a/z0/e;

    move-object/from16 v20, v2

    iget-object v1, v1, Lf/i/a/a/h1/u0/t/f;->o:Ljava/util/List;

    move-object/from16 v21, v1

    move-object/from16 v2, p0

    move/from16 v3, p2

    invoke-direct/range {v2 .. v21}, Lf/i/a/a/h1/u0/t/f;-><init>(ILjava/lang/String;Ljava/util/List;JJZIJIJZZZLf/i/a/a/z0/e;Ljava/util/List;)V

    goto/16 :goto_9

    :cond_5
    :goto_2
    move-object v0, v1

    goto/16 :goto_9

    .line 8
    :cond_6
    iget-boolean v3, v2, Lf/i/a/a/h1/u0/t/f;->m:Z

    if-eqz v3, :cond_8

    .line 9
    iget-wide v5, v2, Lf/i/a/a/h1/u0/t/f;->f:J

    :cond_7
    :goto_3
    move-wide v13, v5

    goto :goto_6

    .line 10
    :cond_8
    iget-object v3, v0, Lf/i/a/a/h1/u0/t/c;->n:Lf/i/a/a/h1/u0/t/f;

    if-eqz v3, :cond_9

    iget-wide v5, v3, Lf/i/a/a/h1/u0/t/f;->f:J

    goto :goto_4

    :cond_9
    const-wide/16 v5, 0x0

    :goto_4
    if-nez v1, :cond_a

    goto :goto_3

    .line 11
    :cond_a
    iget-object v3, v1, Lf/i/a/a/h1/u0/t/f;->o:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 12
    invoke-static/range {p1 .. p2}, Lf/i/a/a/h1/u0/t/c;->c(Lf/i/a/a/h1/u0/t/f;Lf/i/a/a/h1/u0/t/f;)Lf/i/a/a/h1/u0/t/f$a;

    move-result-object v7

    if-eqz v7, :cond_b

    .line 13
    iget-wide v5, v1, Lf/i/a/a/h1/u0/t/f;->f:J

    iget-wide v7, v7, Lf/i/a/a/h1/u0/t/f$a;->e:J

    goto :goto_5

    :cond_b
    int-to-long v7, v3

    .line 14
    iget-wide v9, v2, Lf/i/a/a/h1/u0/t/f;->i:J

    iget-wide v11, v1, Lf/i/a/a/h1/u0/t/f;->i:J

    sub-long/2addr v9, v11

    cmp-long v3, v7, v9

    if-nez v3, :cond_7

    .line 15
    iget-wide v5, v1, Lf/i/a/a/h1/u0/t/f;->f:J

    iget-wide v7, v1, Lf/i/a/a/h1/u0/t/f;->p:J

    :goto_5
    add-long/2addr v5, v7

    goto :goto_3

    .line 16
    :goto_6
    iget-boolean v3, v2, Lf/i/a/a/h1/u0/t/f;->g:Z

    if-eqz v3, :cond_c

    .line 17
    iget v0, v2, Lf/i/a/a/h1/u0/t/f;->h:I

    goto :goto_8

    .line 18
    :cond_c
    iget-object v0, v0, Lf/i/a/a/h1/u0/t/c;->n:Lf/i/a/a/h1/u0/t/f;

    if-eqz v0, :cond_d

    iget v0, v0, Lf/i/a/a/h1/u0/t/f;->h:I

    goto :goto_7

    :cond_d
    const/4 v0, 0x0

    :goto_7
    if-nez v1, :cond_e

    goto :goto_8

    .line 19
    :cond_e
    invoke-static/range {p1 .. p2}, Lf/i/a/a/h1/u0/t/c;->c(Lf/i/a/a/h1/u0/t/f;Lf/i/a/a/h1/u0/t/f;)Lf/i/a/a/h1/u0/t/f$a;

    move-result-object v3

    if-eqz v3, :cond_f

    .line 20
    iget v0, v1, Lf/i/a/a/h1/u0/t/f;->h:I

    iget v1, v3, Lf/i/a/a/h1/u0/t/f$a;->d:I

    add-int/2addr v0, v1

    iget-object v1, v2, Lf/i/a/a/h1/u0/t/f;->o:Ljava/util/List;

    .line 21
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/i/a/a/h1/u0/t/f$a;

    iget v1, v1, Lf/i/a/a/h1/u0/t/f$a;->d:I

    sub-int/2addr v0, v1

    :cond_f
    :goto_8
    move/from16 v16, v0

    .line 22
    new-instance v0, Lf/i/a/a/h1/u0/t/f;

    move-object v7, v0

    iget v8, v2, Lf/i/a/a/h1/u0/t/f;->d:I

    iget-object v9, v2, Lf/i/a/a/h1/u0/t/g;->a:Ljava/lang/String;

    iget-object v10, v2, Lf/i/a/a/h1/u0/t/g;->b:Ljava/util/List;

    iget-wide v11, v2, Lf/i/a/a/h1/u0/t/f;->e:J

    iget-wide v3, v2, Lf/i/a/a/h1/u0/t/f;->i:J

    move-wide/from16 v17, v3

    iget v1, v2, Lf/i/a/a/h1/u0/t/f;->j:I

    move/from16 v19, v1

    iget-wide v3, v2, Lf/i/a/a/h1/u0/t/f;->k:J

    move-wide/from16 v20, v3

    iget-boolean v1, v2, Lf/i/a/a/h1/u0/t/g;->c:Z

    move/from16 v22, v1

    iget-boolean v1, v2, Lf/i/a/a/h1/u0/t/f;->l:Z

    move/from16 v23, v1

    iget-boolean v1, v2, Lf/i/a/a/h1/u0/t/f;->m:Z

    move/from16 v24, v1

    iget-object v1, v2, Lf/i/a/a/h1/u0/t/f;->n:Lf/i/a/a/z0/e;

    move-object/from16 v25, v1

    iget-object v1, v2, Lf/i/a/a/h1/u0/t/f;->o:Ljava/util/List;

    move-object/from16 v26, v1

    const/4 v15, 0x1

    invoke-direct/range {v7 .. v26}, Lf/i/a/a/h1/u0/t/f;-><init>(ILjava/lang/String;Ljava/util/List;JJZIJIJZZZLf/i/a/a/z0/e;Ljava/util/List;)V

    :goto_9
    return-object v0

    .line 23
    :cond_10
    throw v3

    .line 24
    :cond_11
    throw v3
.end method

.method public static c(Lf/i/a/a/h1/u0/t/f;Lf/i/a/a/h1/u0/t/f;)Lf/i/a/a/h1/u0/t/f$a;
    .locals 4

    .line 1
    iget-wide v0, p1, Lf/i/a/a/h1/u0/t/f;->i:J

    iget-wide v2, p0, Lf/i/a/a/h1/u0/t/f;->i:J

    sub-long/2addr v0, v2

    long-to-int p1, v0

    .line 2
    iget-object p0, p0, Lf/i/a/a/h1/u0/t/f;->o:Ljava/util/List;

    .line 3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lf/i/a/a/h1/u0/t/f$a;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public d(Landroid/net/Uri;Z)Lf/i/a/a/h1/u0/t/f;
    .locals 4

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/u0/t/c;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/i/a/a/h1/u0/t/c$a;

    .line 2
    iget-object v0, v0, Lf/i/a/a/h1/u0/t/c$a;->d:Lf/i/a/a/h1/u0/t/f;

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    .line 3
    iget-object p2, p0, Lf/i/a/a/h1/u0/t/c;->m:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 4
    iget-object p2, p0, Lf/i/a/a/h1/u0/t/c;->l:Lf/i/a/a/h1/u0/t/e;

    iget-object p2, p2, Lf/i/a/a/h1/u0/t/e;->e:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 5
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 6
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf/i/a/a/h1/u0/t/e$b;

    iget-object v3, v3, Lf/i/a/a/h1/u0/t/e$b;->a:Landroid/net/Uri;

    invoke-virtual {p1, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v1, :cond_3

    .line 7
    iget-object p2, p0, Lf/i/a/a/h1/u0/t/c;->n:Lf/i/a/a/h1/u0/t/f;

    if-eqz p2, :cond_2

    iget-boolean p2, p2, Lf/i/a/a/h1/u0/t/f;->l:Z

    if-eqz p2, :cond_2

    goto :goto_2

    .line 8
    :cond_2
    iput-object p1, p0, Lf/i/a/a/h1/u0/t/c;->m:Landroid/net/Uri;

    .line 9
    iget-object p2, p0, Lf/i/a/a/h1/u0/t/c;->d:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf/i/a/a/h1/u0/t/c$a;

    invoke-virtual {p1}, Lf/i/a/a/h1/u0/t/c$a;->b()V

    :cond_3
    :goto_2
    return-object v0
.end method

.method public e(Landroid/net/Uri;)Z
    .locals 10

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/u0/t/c;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf/i/a/a/h1/u0/t/c$a;

    .line 2
    iget-object v0, p1, Lf/i/a/a/h1/u0/t/c$a;->d:Lf/i/a/a/h1/u0/t/f;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x7530

    .line 4
    iget-object v0, p1, Lf/i/a/a/h1/u0/t/c$a;->d:Lf/i/a/a/h1/u0/t/f;

    iget-wide v6, v0, Lf/i/a/a/h1/u0/t/f;->p:J

    invoke-static {v6, v7}, Lf/i/a/a/q;->b(J)J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 5
    iget-object v0, p1, Lf/i/a/a/h1/u0/t/c$a;->d:Lf/i/a/a/h1/u0/t/f;

    iget-boolean v6, v0, Lf/i/a/a/h1/u0/t/f;->l:Z

    const/4 v7, 0x1

    if-nez v6, :cond_1

    iget v0, v0, Lf/i/a/a/h1/u0/t/f;->d:I

    const/4 v6, 0x2

    if-eq v0, v6, :cond_1

    if-eq v0, v7, :cond_1

    iget-wide v8, p1, Lf/i/a/a/h1/u0/t/c$a;->e:J

    add-long/2addr v8, v4

    cmp-long p1, v8, v2

    if-lez p1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method public f(Landroid/net/Uri;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/u0/t/c;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf/i/a/a/h1/u0/t/c$a;

    .line 2
    iget-object v0, p1, Lf/i/a/a/h1/u0/t/c$a;->b:Lf/i/a/a/l1/c0;

    const/high16 v1, -0x80000000

    .line 3
    invoke-virtual {v0, v1}, Lf/i/a/a/l1/c0;->e(I)V

    .line 4
    iget-object p1, p1, Lf/i/a/a/h1/u0/t/c$a;->j:Ljava/io/IOException;

    if-nez p1, :cond_0

    return-void

    .line 5
    :cond_0
    throw p1
.end method

.method public k(Lf/i/a/a/l1/c0$e;JJZ)V
    .locals 13

    .line 1
    move-object v0, p1

    check-cast v0, Lf/i/a/a/l1/e0;

    move-object v1, p0

    .line 2
    iget-object v2, v1, Lf/i/a/a/h1/u0/t/c;->h:Lf/i/a/a/h1/f0$a;

    iget-object v3, v0, Lf/i/a/a/l1/e0;->a:Lf/i/a/a/l1/p;

    .line 3
    iget-object v0, v0, Lf/i/a/a/l1/e0;->c:Lf/i/a/a/l1/g0;

    .line 4
    iget-object v4, v0, Lf/i/a/a/l1/g0;->c:Landroid/net/Uri;

    .line 5
    iget-object v5, v0, Lf/i/a/a/l1/g0;->d:Ljava/util/Map;

    const/4 v6, 0x4

    .line 6
    iget-wide v11, v0, Lf/i/a/a/l1/g0;->b:J

    move-wide v7, p2

    move-wide/from16 v9, p4

    .line 7
    invoke-virtual/range {v2 .. v12}, Lf/i/a/a/h1/f0$a;->o(Lf/i/a/a/l1/p;Landroid/net/Uri;Ljava/util/Map;IJJJ)V

    return-void
.end method

.method public p(Lf/i/a/a/l1/c0$e;JJLjava/io/IOException;I)Lf/i/a/a/l1/c0$c;
    .locals 20

    move-object/from16 v0, p0

    .line 1
    move-object/from16 v1, p1

    check-cast v1, Lf/i/a/a/l1/e0;

    .line 2
    iget-object v2, v0, Lf/i/a/a/h1/u0/t/c;->c:Lf/i/a/a/l1/b0;

    iget v4, v1, Lf/i/a/a/l1/e0;->b:I

    .line 3
    move-object v3, v2

    check-cast v3, Lf/i/a/a/l1/w;

    move-wide/from16 v5, p4

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v3 .. v8}, Lf/i/a/a/l1/w;->c(IJLjava/io/IOException;I)J

    move-result-wide v2

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, 0x0

    cmp-long v7, v2, v4

    if-nez v7, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 4
    :goto_0
    iget-object v7, v0, Lf/i/a/a/h1/u0/t/c;->h:Lf/i/a/a/h1/f0$a;

    iget-object v8, v1, Lf/i/a/a/l1/e0;->a:Lf/i/a/a/l1/p;

    .line 5
    iget-object v1, v1, Lf/i/a/a/l1/e0;->c:Lf/i/a/a/l1/g0;

    .line 6
    iget-object v9, v1, Lf/i/a/a/l1/g0;->c:Landroid/net/Uri;

    .line 7
    iget-object v10, v1, Lf/i/a/a/l1/g0;->d:Ljava/util/Map;

    const/4 v11, 0x4

    .line 8
    iget-wide v14, v1, Lf/i/a/a/l1/g0;->b:J

    move-wide/from16 v12, p2

    move-wide/from16 v16, v14

    move-wide/from16 v14, p4

    move-object/from16 v18, p6

    move/from16 v19, v4

    .line 9
    invoke-virtual/range {v7 .. v19}, Lf/i/a/a/h1/f0$a;->u(Lf/i/a/a/l1/p;Landroid/net/Uri;Ljava/util/Map;IJJJLjava/io/IOException;Z)V

    if-eqz v4, :cond_1

    .line 10
    sget-object v1, Lf/i/a/a/l1/c0;->e:Lf/i/a/a/l1/c0$c;

    goto :goto_1

    .line 11
    :cond_1
    invoke-static {v6, v2, v3}, Lf/i/a/a/l1/c0;->c(ZJ)Lf/i/a/a/l1/c0$c;

    move-result-object v1

    :goto_1
    return-object v1
.end method

.method public r(Lf/i/a/a/l1/c0$e;JJ)V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    move-object/from16 v1, p1

    check-cast v1, Lf/i/a/a/l1/e0;

    .line 2
    iget-object v2, v1, Lf/i/a/a/l1/e0;->e:Ljava/lang/Object;

    .line 3
    check-cast v2, Lf/i/a/a/h1/u0/t/g;

    .line 4
    instance-of v3, v2, Lf/i/a/a/h1/u0/t/f;

    if-eqz v3, :cond_0

    .line 5
    iget-object v4, v2, Lf/i/a/a/h1/u0/t/g;->a:Ljava/lang/String;

    invoke-static {v4}, Lf/i/a/a/h1/u0/t/e;->d(Ljava/lang/String;)Lf/i/a/a/h1/u0/t/e;

    move-result-object v4

    goto :goto_0

    .line 6
    :cond_0
    move-object v4, v2

    check-cast v4, Lf/i/a/a/h1/u0/t/e;

    .line 7
    :goto_0
    iput-object v4, v0, Lf/i/a/a/h1/u0/t/c;->l:Lf/i/a/a/h1/u0/t/e;

    .line 8
    iget-object v5, v0, Lf/i/a/a/h1/u0/t/c;->b:Lf/i/a/a/h1/u0/t/i;

    invoke-interface {v5, v4}, Lf/i/a/a/h1/u0/t/i;->a(Lf/i/a/a/h1/u0/t/e;)Lf/i/a/a/l1/e0$a;

    move-result-object v5

    iput-object v5, v0, Lf/i/a/a/h1/u0/t/c;->g:Lf/i/a/a/l1/e0$a;

    .line 9
    iget-object v5, v4, Lf/i/a/a/h1/u0/t/e;->e:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lf/i/a/a/h1/u0/t/e$b;

    iget-object v5, v5, Lf/i/a/a/h1/u0/t/e$b;->a:Landroid/net/Uri;

    iput-object v5, v0, Lf/i/a/a/h1/u0/t/c;->m:Landroid/net/Uri;

    .line 10
    iget-object v4, v4, Lf/i/a/a/h1/u0/t/e;->d:Ljava/util/List;

    .line 11
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    :goto_1
    if-ge v6, v5, :cond_1

    .line 12
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    .line 13
    new-instance v8, Lf/i/a/a/h1/u0/t/c$a;

    invoke-direct {v8, v0, v7}, Lf/i/a/a/h1/u0/t/c$a;-><init>(Lf/i/a/a/h1/u0/t/c;Landroid/net/Uri;)V

    .line 14
    iget-object v9, v0, Lf/i/a/a/h1/u0/t/c;->d:Ljava/util/HashMap;

    invoke-virtual {v9, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 15
    :cond_1
    iget-object v4, v0, Lf/i/a/a/h1/u0/t/c;->d:Ljava/util/HashMap;

    iget-object v5, v0, Lf/i/a/a/h1/u0/t/c;->m:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lf/i/a/a/h1/u0/t/c$a;

    if-eqz v3, :cond_2

    .line 16
    check-cast v2, Lf/i/a/a/h1/u0/t/f;

    move-wide/from16 v12, p4

    .line 17
    invoke-virtual {v4, v2, v12, v13}, Lf/i/a/a/h1/u0/t/c$a;->d(Lf/i/a/a/h1/u0/t/f;J)V

    goto :goto_2

    :cond_2
    move-wide/from16 v12, p4

    .line 18
    invoke-virtual {v4}, Lf/i/a/a/h1/u0/t/c$a;->b()V

    .line 19
    :goto_2
    iget-object v5, v0, Lf/i/a/a/h1/u0/t/c;->h:Lf/i/a/a/h1/f0$a;

    iget-object v6, v1, Lf/i/a/a/l1/e0;->a:Lf/i/a/a/l1/p;

    .line 20
    iget-object v1, v1, Lf/i/a/a/l1/e0;->c:Lf/i/a/a/l1/g0;

    .line 21
    iget-object v7, v1, Lf/i/a/a/l1/g0;->c:Landroid/net/Uri;

    .line 22
    iget-object v8, v1, Lf/i/a/a/l1/g0;->d:Ljava/util/Map;

    const/4 v9, 0x4

    .line 23
    iget-wide v14, v1, Lf/i/a/a/l1/g0;->b:J

    move-wide/from16 v10, p2

    move-wide/from16 v12, p4

    .line 24
    invoke-virtual/range {v5 .. v15}, Lf/i/a/a/h1/f0$a;->r(Lf/i/a/a/l1/p;Landroid/net/Uri;Ljava/util/Map;IJJJ)V

    return-void
.end method
