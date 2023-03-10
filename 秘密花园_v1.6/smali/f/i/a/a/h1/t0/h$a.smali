.class public final Lf/i/a/a/h1/t0/h$a;
.super Ljava/lang/Object;
.source "DefaultDashChunkSource.java"

# interfaces
.implements Lf/i/a/a/h1/t0/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/i/a/a/h1/t0/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lf/i/a/a/l1/m$a;

.field public final b:I


# direct methods
.method public constructor <init>(Lf/i/a/a/l1/m$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf/i/a/a/h1/t0/h$a;->a:Lf/i/a/a/l1/m$a;

    const/4 p1, 0x1

    .line 3
    iput p1, p0, Lf/i/a/a/h1/t0/h$a;->b:I

    return-void
.end method


# virtual methods
.method public a(Lf/i/a/a/l1/d0;Lf/i/a/a/h1/t0/k/b;I[ILf/i/a/a/j1/j;IJZLjava/util/List;Lf/i/a/a/h1/t0/j$c;Lf/i/a/a/l1/i0;)Lf/i/a/a/h1/t0/c;
    .locals 17
    .param p11    # Lf/i/a/a/h1/t0/j$c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p12    # Lf/i/a/a/l1/i0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/i/a/a/l1/d0;",
            "Lf/i/a/a/h1/t0/k/b;",
            "I[I",
            "Lf/i/a/a/j1/j;",
            "IJZ",
            "Ljava/util/List<",
            "Lf/i/a/a/b0;",
            ">;",
            "Lf/i/a/a/h1/t0/j$c;",
            "Lf/i/a/a/l1/i0;",
            ")",
            "Lf/i/a/a/h1/t0/c;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p12

    .line 1
    iget-object v2, v0, Lf/i/a/a/h1/t0/h$a;->a:Lf/i/a/a/l1/m$a;

    invoke-interface {v2}, Lf/i/a/a/l1/m$a;->createDataSource()Lf/i/a/a/l1/m;

    move-result-object v10

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {v10, v1}, Lf/i/a/a/l1/m;->c(Lf/i/a/a/l1/i0;)V

    .line 3
    :cond_0
    new-instance v1, Lf/i/a/a/h1/t0/h;

    iget v13, v0, Lf/i/a/a/h1/t0/h$a;->b:I

    move-object v3, v1

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-wide/from16 v11, p7

    move/from16 v14, p9

    move-object/from16 v15, p10

    move-object/from16 v16, p11

    invoke-direct/range {v3 .. v16}, Lf/i/a/a/h1/t0/h;-><init>(Lf/i/a/a/l1/d0;Lf/i/a/a/h1/t0/k/b;I[ILf/i/a/a/j1/j;ILf/i/a/a/l1/m;JIZLjava/util/List;Lf/i/a/a/h1/t0/j$c;)V

    return-object v1
.end method
