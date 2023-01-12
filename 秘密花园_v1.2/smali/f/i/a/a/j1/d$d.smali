.class public final Lf/i/a/a/j1/d$d;
.super Lf/i/a/a/j1/l$b;
.source "DefaultTrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/i/a/a/j1/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:I

.field public m:I

.field public n:Z

.field public o:I

.field public p:I

.field public q:Z

.field public r:Z

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:I

.field public final x:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Lf/i/a/a/h1/p0;",
            "Lf/i/a/a/j1/d$e;",
            ">;>;"
        }
    .end annotation
.end field

.field public final y:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>(Lf/i/a/a/j1/d$c;)V
    .locals 6

    .line 1
    invoke-direct {p0, p1}, Lf/i/a/a/j1/l$b;-><init>(Lf/i/a/a/j1/l;)V

    .line 2
    iget v0, p1, Lf/i/a/a/j1/d$c;->f:I

    iput v0, p0, Lf/i/a/a/j1/d$d;->e:I

    .line 3
    iget v0, p1, Lf/i/a/a/j1/d$c;->g:I

    iput v0, p0, Lf/i/a/a/j1/d$d;->f:I

    .line 4
    iget v0, p1, Lf/i/a/a/j1/d$c;->h:I

    iput v0, p0, Lf/i/a/a/j1/d$d;->g:I

    .line 5
    iget v0, p1, Lf/i/a/a/j1/d$c;->i:I

    iput v0, p0, Lf/i/a/a/j1/d$d;->h:I

    .line 6
    iget-boolean v0, p1, Lf/i/a/a/j1/d$c;->j:Z

    iput-boolean v0, p0, Lf/i/a/a/j1/d$d;->i:Z

    .line 7
    iget-boolean v0, p1, Lf/i/a/a/j1/d$c;->k:Z

    iput-boolean v0, p0, Lf/i/a/a/j1/d$d;->j:Z

    .line 8
    iget-boolean v0, p1, Lf/i/a/a/j1/d$c;->l:Z

    iput-boolean v0, p0, Lf/i/a/a/j1/d$d;->k:Z

    .line 9
    iget v0, p1, Lf/i/a/a/j1/d$c;->m:I

    iput v0, p0, Lf/i/a/a/j1/d$d;->l:I

    .line 10
    iget v0, p1, Lf/i/a/a/j1/d$c;->n:I

    iput v0, p0, Lf/i/a/a/j1/d$d;->m:I

    .line 11
    iget-boolean v0, p1, Lf/i/a/a/j1/d$c;->o:Z

    iput-boolean v0, p0, Lf/i/a/a/j1/d$d;->n:Z

    .line 12
    iget v0, p1, Lf/i/a/a/j1/d$c;->p:I

    iput v0, p0, Lf/i/a/a/j1/d$d;->o:I

    .line 13
    iget v0, p1, Lf/i/a/a/j1/d$c;->q:I

    iput v0, p0, Lf/i/a/a/j1/d$d;->p:I

    .line 14
    iget-boolean v0, p1, Lf/i/a/a/j1/d$c;->r:Z

    iput-boolean v0, p0, Lf/i/a/a/j1/d$d;->q:Z

    .line 15
    iget-boolean v0, p1, Lf/i/a/a/j1/d$c;->s:Z

    iput-boolean v0, p0, Lf/i/a/a/j1/d$d;->r:Z

    .line 16
    iget-boolean v0, p1, Lf/i/a/a/j1/d$c;->t:Z

    iput-boolean v0, p0, Lf/i/a/a/j1/d$d;->s:Z

    .line 17
    iget-boolean v0, p1, Lf/i/a/a/j1/d$c;->u:Z

    iput-boolean v0, p0, Lf/i/a/a/j1/d$d;->t:Z

    .line 18
    iget-boolean v0, p1, Lf/i/a/a/j1/d$c;->v:Z

    iput-boolean v0, p0, Lf/i/a/a/j1/d$d;->u:Z

    .line 19
    iget-boolean v0, p1, Lf/i/a/a/j1/d$c;->w:Z

    iput-boolean v0, p0, Lf/i/a/a/j1/d$d;->v:Z

    .line 20
    iget v0, p1, Lf/i/a/a/j1/d$c;->x:I

    iput v0, p0, Lf/i/a/a/j1/d$d;->w:I

    .line 21
    iget-object v0, p1, Lf/i/a/a/j1/d$c;->y:Landroid/util/SparseArray;

    .line 22
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    const/4 v2, 0x0

    .line 23
    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 24
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    new-instance v4, Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 25
    :cond_0
    iput-object v1, p0, Lf/i/a/a/j1/d$d;->x:Landroid/util/SparseArray;

    .line 26
    iget-object p1, p1, Lf/i/a/a/j1/d$c;->z:Landroid/util/SparseBooleanArray;

    .line 27
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object p1

    iput-object p1, p0, Lf/i/a/a/j1/d$d;->y:Landroid/util/SparseBooleanArray;

    return-void
.end method


# virtual methods
.method public a()Lf/i/a/a/j1/d$c;
    .locals 29

    move-object/from16 v0, p0

    .line 1
    new-instance v27, Lf/i/a/a/j1/d$c;

    move-object/from16 v1, v27

    iget v2, v0, Lf/i/a/a/j1/d$d;->e:I

    iget v3, v0, Lf/i/a/a/j1/d$d;->f:I

    iget v4, v0, Lf/i/a/a/j1/d$d;->g:I

    iget v5, v0, Lf/i/a/a/j1/d$d;->h:I

    iget-boolean v6, v0, Lf/i/a/a/j1/d$d;->i:Z

    iget-boolean v7, v0, Lf/i/a/a/j1/d$d;->j:Z

    iget-boolean v8, v0, Lf/i/a/a/j1/d$d;->k:Z

    iget v9, v0, Lf/i/a/a/j1/d$d;->l:I

    iget v10, v0, Lf/i/a/a/j1/d$d;->m:I

    iget-boolean v11, v0, Lf/i/a/a/j1/d$d;->n:Z

    iget-object v12, v0, Lf/i/a/a/j1/l$b;->a:Ljava/lang/String;

    iget v13, v0, Lf/i/a/a/j1/d$d;->o:I

    iget v14, v0, Lf/i/a/a/j1/d$d;->p:I

    iget-boolean v15, v0, Lf/i/a/a/j1/d$d;->q:Z

    move-object/from16 v28, v1

    iget-boolean v1, v0, Lf/i/a/a/j1/d$d;->r:Z

    move/from16 v16, v1

    iget-boolean v1, v0, Lf/i/a/a/j1/d$d;->s:Z

    move/from16 v17, v1

    iget-object v1, v0, Lf/i/a/a/j1/l$b;->b:Ljava/lang/String;

    move-object/from16 v18, v1

    iget-boolean v1, v0, Lf/i/a/a/j1/l$b;->c:Z

    move/from16 v19, v1

    iget v1, v0, Lf/i/a/a/j1/l$b;->d:I

    move/from16 v20, v1

    iget-boolean v1, v0, Lf/i/a/a/j1/d$d;->t:Z

    move/from16 v21, v1

    iget-boolean v1, v0, Lf/i/a/a/j1/d$d;->u:Z

    move/from16 v22, v1

    iget-boolean v1, v0, Lf/i/a/a/j1/d$d;->v:Z

    move/from16 v23, v1

    iget v1, v0, Lf/i/a/a/j1/d$d;->w:I

    move/from16 v24, v1

    iget-object v1, v0, Lf/i/a/a/j1/d$d;->x:Landroid/util/SparseArray;

    move-object/from16 v25, v1

    iget-object v1, v0, Lf/i/a/a/j1/d$d;->y:Landroid/util/SparseBooleanArray;

    move-object/from16 v26, v1

    move-object/from16 v1, v28

    invoke-direct/range {v1 .. v26}, Lf/i/a/a/j1/d$c;-><init>(IIIIZZZIIZLjava/lang/String;IIZZZLjava/lang/String;ZIZZZILandroid/util/SparseArray;Landroid/util/SparseBooleanArray;)V

    return-object v27
.end method

.method public final b(IZ)Lf/i/a/a/j1/d$d;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/j1/d$d;->y:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-ne v0, p2, :cond_0

    return-object p0

    :cond_0
    if-eqz p2, :cond_1

    .line 2
    iget-object p2, p0, Lf/i/a/a/j1/d$d;->y:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object p2, p0, Lf/i/a/a/j1/d$d;->y:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    :goto_0
    return-object p0
.end method

.method public final c(ILf/i/a/a/h1/p0;Lf/i/a/a/j1/d$e;)Lf/i/a/a/j1/d$d;
    .locals 2

    .line 1
    iget-object v0, p0, Lf/i/a/a/j1/d$d;->x:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    iget-object v1, p0, Lf/i/a/a/j1/d$d;->x:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, p3}, Lf/i/a/a/m1/h0;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object p0

    .line 5
    :cond_1
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
