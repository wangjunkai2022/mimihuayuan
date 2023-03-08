.class public final Lf/i/a/a/h1/u0/t/f;
.super Lf/i/a/a/h1/u0/t/g;
.source "HlsMediaPlaylist.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/i/a/a/h1/u0/t/f$a;
    }
.end annotation


# instance fields
.field public final d:I

.field public final e:J

.field public final f:J

.field public final g:Z

.field public final h:I

.field public final i:J

.field public final j:I

.field public final k:J

.field public final l:Z

.field public final m:Z

.field public final n:Lf/i/a/a/z0/e;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf/i/a/a/h1/u0/t/f$a;",
            ">;"
        }
    .end annotation
.end field

.field public final p:J


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/util/List;JJZIJIJZZZLf/i/a/a/z0/e;Ljava/util/List;)V
    .locals 8
    .param p18    # Lf/i/a/a/z0/e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;JJZIJIJZZZ",
            "Lf/i/a/a/z0/e;",
            "Ljava/util/List<",
            "Lf/i/a/a/h1/u0/t/f$a;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move/from16 v3, p15

    .line 1
    invoke-direct {p0, p2, p3, v3}, Lf/i/a/a/h1/u0/t/g;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    move v1, p1

    .line 2
    iput v1, v0, Lf/i/a/a/h1/u0/t/f;->d:I

    move-wide v1, p6

    .line 3
    iput-wide v1, v0, Lf/i/a/a/h1/u0/t/f;->f:J

    move/from16 v1, p8

    .line 4
    iput-boolean v1, v0, Lf/i/a/a/h1/u0/t/f;->g:Z

    move/from16 v1, p9

    .line 5
    iput v1, v0, Lf/i/a/a/h1/u0/t/f;->h:I

    move-wide/from16 v1, p10

    .line 6
    iput-wide v1, v0, Lf/i/a/a/h1/u0/t/f;->i:J

    move/from16 v1, p12

    .line 7
    iput v1, v0, Lf/i/a/a/h1/u0/t/f;->j:I

    move-wide/from16 v1, p13

    .line 8
    iput-wide v1, v0, Lf/i/a/a/h1/u0/t/f;->k:J

    move/from16 v1, p16

    .line 9
    iput-boolean v1, v0, Lf/i/a/a/h1/u0/t/f;->l:Z

    move/from16 v1, p17

    .line 10
    iput-boolean v1, v0, Lf/i/a/a/h1/u0/t/f;->m:Z

    move-object/from16 v1, p18

    .line 11
    iput-object v1, v0, Lf/i/a/a/h1/u0/t/f;->n:Lf/i/a/a/z0/e;

    .line 12
    invoke-static/range {p19 .. p19}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lf/i/a/a/h1/u0/t/f;->o:Ljava/util/List;

    .line 13
    invoke-interface/range {p19 .. p19}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const-wide/16 v2, 0x0

    if-nez v1, :cond_0

    .line 14
    invoke-interface/range {p19 .. p19}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v4, p19

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/i/a/a/h1/u0/t/f$a;

    .line 15
    iget-wide v4, v1, Lf/i/a/a/h1/u0/t/f$a;->e:J

    iget-wide v6, v1, Lf/i/a/a/h1/u0/t/f$a;->c:J

    add-long/2addr v4, v6

    iput-wide v4, v0, Lf/i/a/a/h1/u0/t/f;->p:J

    goto :goto_0

    .line 16
    :cond_0
    iput-wide v2, v0, Lf/i/a/a/h1/u0/t/f;->p:J

    :goto_0
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, p4, v4

    if-nez v1, :cond_1

    move-wide v1, v4

    goto :goto_1

    :cond_1
    cmp-long v1, p4, v2

    if-ltz v1, :cond_2

    move-wide v1, p4

    goto :goto_1

    .line 17
    :cond_2
    iget-wide v1, v0, Lf/i/a/a/h1/u0/t/f;->p:J

    add-long/2addr v1, p4

    :goto_1
    iput-wide v1, v0, Lf/i/a/a/h1/u0/t/f;->e:J

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)Ljava/lang/Object;
    .locals 0

    return-object p0
.end method
