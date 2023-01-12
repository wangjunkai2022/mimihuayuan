.class public final Lf/i/a/a/j1/d$c;
.super Lf/i/a/a/j1/l;
.source "DefaultTrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/i/a/a/j1/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field public static final A:Lf/i/a/a/j1/d$c;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lf/i/a/a/j1/d$c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:Z

.field public final k:Z

.field public final l:Z

.field public final m:I

.field public final n:I

.field public final o:Z

.field public final p:I

.field public final q:I

.field public final r:Z

.field public final s:Z

.field public final t:Z

.field public final u:Z

.field public final v:Z

.field public final w:Z

.field public final x:I

.field public final y:Landroid/util/SparseArray;
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

.field public final z:Landroid/util/SparseBooleanArray;


# direct methods
.method public static constructor <clinit>()V
    .locals 27

    .line 1
    new-instance v26, Lf/i/a/a/j1/d$c;

    .line 2
    sget-object v0, Lf/i/a/a/j1/l;->e:Lf/i/a/a/j1/l;

    iget-object v11, v0, Lf/i/a/a/j1/l;->a:Ljava/lang/String;

    iget-object v1, v0, Lf/i/a/a/j1/l;->b:Ljava/lang/String;

    move-object/from16 v17, v1

    iget-boolean v1, v0, Lf/i/a/a/j1/l;->c:Z

    move/from16 v18, v1

    iget v0, v0, Lf/i/a/a/j1/l;->d:I

    move/from16 v19, v0

    new-instance v0, Landroid/util/SparseArray;

    move-object/from16 v24, v0

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    new-instance v0, Landroid/util/SparseBooleanArray;

    move-object/from16 v25, v0

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    const v1, 0x7fffffff

    const v2, 0x7fffffff

    const v3, 0x7fffffff

    const v4, 0x7fffffff

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const v8, 0x7fffffff

    const v9, 0x7fffffff

    const/4 v10, 0x1

    const v12, 0x7fffffff

    const v13, 0x7fffffff

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x1

    const/16 v23, 0x0

    move-object/from16 v0, v26

    invoke-direct/range {v0 .. v25}, Lf/i/a/a/j1/d$c;-><init>(IIIIZZZIIZLjava/lang/String;IIZZZLjava/lang/String;ZIZZZILandroid/util/SparseArray;Landroid/util/SparseBooleanArray;)V

    .line 3
    sput-object v26, Lf/i/a/a/j1/d$c;->A:Lf/i/a/a/j1/d$c;

    .line 4
    new-instance v0, Lf/i/a/a/j1/d$c$a;

    invoke-direct {v0}, Lf/i/a/a/j1/d$c$a;-><init>()V

    sput-object v0, Lf/i/a/a/j1/d$c;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 26

    move-object/from16 v0, p0

    .line 1
    sget-object v1, Lf/i/a/a/j1/l;->e:Lf/i/a/a/j1/l;

    iget-object v11, v1, Lf/i/a/a/j1/l;->a:Ljava/lang/String;

    iget-object v2, v1, Lf/i/a/a/j1/l;->b:Ljava/lang/String;

    move-object/from16 v17, v2

    iget-boolean v2, v1, Lf/i/a/a/j1/l;->c:Z

    move/from16 v18, v2

    iget v1, v1, Lf/i/a/a/j1/l;->d:I

    move/from16 v19, v1

    new-instance v1, Landroid/util/SparseArray;

    move-object/from16 v24, v1

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    new-instance v1, Landroid/util/SparseBooleanArray;

    move-object/from16 v25, v1

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    const v1, 0x7fffffff

    const v2, 0x7fffffff

    const v3, 0x7fffffff

    const v4, 0x7fffffff

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const v8, 0x7fffffff

    const v9, 0x7fffffff

    const/4 v10, 0x1

    const v12, 0x7fffffff

    const v13, 0x7fffffff

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x1

    const/16 v23, 0x0

    invoke-direct/range {v0 .. v25}, Lf/i/a/a/j1/d$c;-><init>(IIIIZZZIIZLjava/lang/String;IIZZZLjava/lang/String;ZIZZZILandroid/util/SparseArray;Landroid/util/SparseBooleanArray;)V

    return-void
.end method

.method public constructor <init>(IIIIZZZIIZLjava/lang/String;IIZZZLjava/lang/String;ZIZZZILandroid/util/SparseArray;Landroid/util/SparseBooleanArray;)V
    .locals 5
    .param p11    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p17    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIZZZIIZ",
            "Ljava/lang/String;",
            "IIZZZ",
            "Ljava/lang/String;",
            "ZIZZZI",
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Lf/i/a/a/h1/p0;",
            "Lf/i/a/a/j1/d$e;",
            ">;>;",
            "Landroid/util/SparseBooleanArray;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p11

    move-object/from16 v2, p17

    move/from16 v3, p18

    move/from16 v4, p19

    .line 2
    invoke-direct {p0, v1, v2, v3, v4}, Lf/i/a/a/j1/l;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    move v1, p1

    .line 3
    iput v1, v0, Lf/i/a/a/j1/d$c;->f:I

    move v1, p2

    .line 4
    iput v1, v0, Lf/i/a/a/j1/d$c;->g:I

    move v1, p3

    .line 5
    iput v1, v0, Lf/i/a/a/j1/d$c;->h:I

    move v1, p4

    .line 6
    iput v1, v0, Lf/i/a/a/j1/d$c;->i:I

    move v1, p5

    .line 7
    iput-boolean v1, v0, Lf/i/a/a/j1/d$c;->j:Z

    move v1, p6

    .line 8
    iput-boolean v1, v0, Lf/i/a/a/j1/d$c;->k:Z

    move v1, p7

    .line 9
    iput-boolean v1, v0, Lf/i/a/a/j1/d$c;->l:Z

    move v1, p8

    .line 10
    iput v1, v0, Lf/i/a/a/j1/d$c;->m:I

    move v1, p9

    .line 11
    iput v1, v0, Lf/i/a/a/j1/d$c;->n:I

    move v1, p10

    .line 12
    iput-boolean v1, v0, Lf/i/a/a/j1/d$c;->o:Z

    move/from16 v1, p12

    .line 13
    iput v1, v0, Lf/i/a/a/j1/d$c;->p:I

    move/from16 v1, p13

    .line 14
    iput v1, v0, Lf/i/a/a/j1/d$c;->q:I

    move/from16 v1, p14

    .line 15
    iput-boolean v1, v0, Lf/i/a/a/j1/d$c;->r:Z

    move/from16 v1, p15

    .line 16
    iput-boolean v1, v0, Lf/i/a/a/j1/d$c;->s:Z

    move/from16 v1, p16

    .line 17
    iput-boolean v1, v0, Lf/i/a/a/j1/d$c;->t:Z

    move/from16 v1, p20

    .line 18
    iput-boolean v1, v0, Lf/i/a/a/j1/d$c;->u:Z

    move/from16 v1, p21

    .line 19
    iput-boolean v1, v0, Lf/i/a/a/j1/d$c;->v:Z

    move/from16 v1, p22

    .line 20
    iput-boolean v1, v0, Lf/i/a/a/j1/d$c;->w:Z

    move/from16 v1, p23

    .line 21
    iput v1, v0, Lf/i/a/a/j1/d$c;->x:I

    move-object/from16 v1, p24

    .line 22
    iput-object v1, v0, Lf/i/a/a/j1/d$c;->y:Landroid/util/SparseArray;

    move-object/from16 v1, p25

    .line 23
    iput-object v1, v0, Lf/i/a/a/j1/d$c;->z:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 10

    .line 24
    invoke-direct {p0, p1}, Lf/i/a/a/j1/l;-><init>(Landroid/os/Parcel;)V

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lf/i/a/a/j1/d$c;->f:I

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lf/i/a/a/j1/d$c;->g:I

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lf/i/a/a/j1/d$c;->h:I

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lf/i/a/a/j1/d$c;->i:I

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 30
    :goto_0
    iput-boolean v0, p0, Lf/i/a/a/j1/d$c;->j:Z

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 32
    :goto_1
    iput-boolean v0, p0, Lf/i/a/a/j1/d$c;->k:Z

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 34
    :goto_2
    iput-boolean v0, p0, Lf/i/a/a/j1/d$c;->l:Z

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lf/i/a/a/j1/d$c;->m:I

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lf/i/a/a/j1/d$c;->n:I

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    .line 38
    :goto_3
    iput-boolean v0, p0, Lf/i/a/a/j1/d$c;->o:Z

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lf/i/a/a/j1/d$c;->p:I

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lf/i/a/a/j1/d$c;->q:I

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    .line 42
    :goto_4
    iput-boolean v0, p0, Lf/i/a/a/j1/d$c;->r:Z

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    .line 44
    :goto_5
    iput-boolean v0, p0, Lf/i/a/a/j1/d$c;->s:Z

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_6

    :cond_6
    const/4 v0, 0x0

    .line 46
    :goto_6
    iput-boolean v0, p0, Lf/i/a/a/j1/d$c;->t:Z

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_7

    :cond_7
    const/4 v0, 0x0

    .line 48
    :goto_7
    iput-boolean v0, p0, Lf/i/a/a/j1/d$c;->u:Z

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_8

    :cond_8
    const/4 v0, 0x0

    .line 50
    :goto_8
    iput-boolean v0, p0, Lf/i/a/a/j1/d$c;->v:Z

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_9

    :cond_9
    const/4 v1, 0x0

    .line 52
    :goto_9
    iput-boolean v1, p0, Lf/i/a/a/j1/d$c;->w:Z

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lf/i/a/a/j1/d$c;->x:I

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 55
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v0}, Landroid/util/SparseArray;-><init>(I)V

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v0, :cond_b

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 58
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6, v5}, Ljava/util/HashMap;-><init>(I)V

    const/4 v7, 0x0

    :goto_b
    if-ge v7, v5, :cond_a

    .line 59
    const-class v8, Lf/i/a/a/h1/p0;

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Lf/i/a/a/h1/p0;

    .line 60
    const-class v9, Lf/i/a/a/j1/d$e;

    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-virtual {p1, v9}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Lf/i/a/a/j1/d$e;

    .line 61
    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    .line 62
    :cond_a
    invoke-virtual {v1, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 63
    :cond_b
    iput-object v1, p0, Lf/i/a/a/j1/d$c;->y:Landroid/util/SparseArray;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readSparseBooleanArray()Landroid/util/SparseBooleanArray;

    move-result-object p1

    iput-object p1, p0, Lf/i/a/a/j1/d$c;->z:Landroid/util/SparseBooleanArray;

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/j1/d$c;->z:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1

    return p1
.end method

.method public final b(ILf/i/a/a/h1/p0;)Lf/i/a/a/j1/d$e;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/a/a/j1/d$c;->y:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf/i/a/a/j1/d$e;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 10
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_e

    .line 1
    const-class v2, Lf/i/a/a/j1/d$c;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_9

    .line 2
    :cond_1
    move-object v2, p1

    check-cast v2, Lf/i/a/a/j1/d$c;

    .line 3
    invoke-super {p0, p1}, Lf/i/a/a/j1/l;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    iget p1, p0, Lf/i/a/a/j1/d$c;->f:I

    iget v3, v2, Lf/i/a/a/j1/d$c;->f:I

    if-ne p1, v3, :cond_d

    iget p1, p0, Lf/i/a/a/j1/d$c;->g:I

    iget v3, v2, Lf/i/a/a/j1/d$c;->g:I

    if-ne p1, v3, :cond_d

    iget p1, p0, Lf/i/a/a/j1/d$c;->h:I

    iget v3, v2, Lf/i/a/a/j1/d$c;->h:I

    if-ne p1, v3, :cond_d

    iget p1, p0, Lf/i/a/a/j1/d$c;->i:I

    iget v3, v2, Lf/i/a/a/j1/d$c;->i:I

    if-ne p1, v3, :cond_d

    iget-boolean p1, p0, Lf/i/a/a/j1/d$c;->j:Z

    iget-boolean v3, v2, Lf/i/a/a/j1/d$c;->j:Z

    if-ne p1, v3, :cond_d

    iget-boolean p1, p0, Lf/i/a/a/j1/d$c;->k:Z

    iget-boolean v3, v2, Lf/i/a/a/j1/d$c;->k:Z

    if-ne p1, v3, :cond_d

    iget-boolean p1, p0, Lf/i/a/a/j1/d$c;->l:Z

    iget-boolean v3, v2, Lf/i/a/a/j1/d$c;->l:Z

    if-ne p1, v3, :cond_d

    iget-boolean p1, p0, Lf/i/a/a/j1/d$c;->o:Z

    iget-boolean v3, v2, Lf/i/a/a/j1/d$c;->o:Z

    if-ne p1, v3, :cond_d

    iget p1, p0, Lf/i/a/a/j1/d$c;->m:I

    iget v3, v2, Lf/i/a/a/j1/d$c;->m:I

    if-ne p1, v3, :cond_d

    iget p1, p0, Lf/i/a/a/j1/d$c;->n:I

    iget v3, v2, Lf/i/a/a/j1/d$c;->n:I

    if-ne p1, v3, :cond_d

    iget p1, p0, Lf/i/a/a/j1/d$c;->p:I

    iget v3, v2, Lf/i/a/a/j1/d$c;->p:I

    if-ne p1, v3, :cond_d

    iget p1, p0, Lf/i/a/a/j1/d$c;->q:I

    iget v3, v2, Lf/i/a/a/j1/d$c;->q:I

    if-ne p1, v3, :cond_d

    iget-boolean p1, p0, Lf/i/a/a/j1/d$c;->r:Z

    iget-boolean v3, v2, Lf/i/a/a/j1/d$c;->r:Z

    if-ne p1, v3, :cond_d

    iget-boolean p1, p0, Lf/i/a/a/j1/d$c;->s:Z

    iget-boolean v3, v2, Lf/i/a/a/j1/d$c;->s:Z

    if-ne p1, v3, :cond_d

    iget-boolean p1, p0, Lf/i/a/a/j1/d$c;->t:Z

    iget-boolean v3, v2, Lf/i/a/a/j1/d$c;->t:Z

    if-ne p1, v3, :cond_d

    iget-boolean p1, p0, Lf/i/a/a/j1/d$c;->u:Z

    iget-boolean v3, v2, Lf/i/a/a/j1/d$c;->u:Z

    if-ne p1, v3, :cond_d

    iget-boolean p1, p0, Lf/i/a/a/j1/d$c;->v:Z

    iget-boolean v3, v2, Lf/i/a/a/j1/d$c;->v:Z

    if-ne p1, v3, :cond_d

    iget-boolean p1, p0, Lf/i/a/a/j1/d$c;->w:Z

    iget-boolean v3, v2, Lf/i/a/a/j1/d$c;->w:Z

    if-ne p1, v3, :cond_d

    iget p1, p0, Lf/i/a/a/j1/d$c;->x:I

    iget v3, v2, Lf/i/a/a/j1/d$c;->x:I

    if-ne p1, v3, :cond_d

    iget-object p1, p0, Lf/i/a/a/j1/d$c;->z:Landroid/util/SparseBooleanArray;

    iget-object v3, v2, Lf/i/a/a/j1/d$c;->z:Landroid/util/SparseBooleanArray;

    .line 4
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    .line 5
    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v5

    if-eq v5, v4, :cond_2

    :goto_0
    const/4 p1, 0x0

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_4

    .line 6
    invoke-virtual {p1, v5}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v6

    if-gez v6, :cond_3

    goto :goto_0

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    const/4 p1, 0x1

    :goto_2
    if-eqz p1, :cond_d

    .line 7
    iget-object p1, p0, Lf/i/a/a/j1/d$c;->y:Landroid/util/SparseArray;

    iget-object v2, v2, Lf/i/a/a/j1/d$c;->y:Landroid/util/SparseArray;

    .line 8
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 9
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-eq v4, v3, :cond_6

    :cond_5
    :goto_3
    const/4 p1, 0x0

    goto :goto_7

    :cond_6
    const/4 v4, 0x0

    :goto_4
    if-ge v4, v3, :cond_c

    .line 10
    invoke-virtual {p1, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v5

    if-ltz v5, :cond_5

    .line 11
    invoke-virtual {p1, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 12
    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v7

    .line 13
    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v8

    if-eq v8, v7, :cond_7

    goto :goto_5

    .line 14
    :cond_7
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 15
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lf/i/a/a/h1/p0;

    .line 16
    invoke-interface {v5, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v7, v8}, Lf/i/a/a/m1/h0;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    :cond_9
    :goto_5
    const/4 v5, 0x0

    goto :goto_6

    :cond_a
    const/4 v5, 0x1

    :goto_6
    if-nez v5, :cond_b

    goto :goto_3

    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_c
    const/4 p1, 0x1

    :goto_7
    if-eqz p1, :cond_d

    goto :goto_8

    :cond_d
    const/4 v0, 0x0

    :goto_8
    return v0

    :cond_e
    :goto_9
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    invoke-super {p0}, Lf/i/a/a/j1/l;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget v1, p0, Lf/i/a/a/j1/d$c;->f:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget v1, p0, Lf/i/a/a/j1/d$c;->g:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget v1, p0, Lf/i/a/a/j1/d$c;->h:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget v1, p0, Lf/i/a/a/j1/d$c;->i:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 6
    iget-boolean v1, p0, Lf/i/a/a/j1/d$c;->j:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 7
    iget-boolean v1, p0, Lf/i/a/a/j1/d$c;->k:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget-boolean v1, p0, Lf/i/a/a/j1/d$c;->l:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 9
    iget-boolean v1, p0, Lf/i/a/a/j1/d$c;->o:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 10
    iget v1, p0, Lf/i/a/a/j1/d$c;->m:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 11
    iget v1, p0, Lf/i/a/a/j1/d$c;->n:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 12
    iget v1, p0, Lf/i/a/a/j1/d$c;->p:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 13
    iget v1, p0, Lf/i/a/a/j1/d$c;->q:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 14
    iget-boolean v1, p0, Lf/i/a/a/j1/d$c;->r:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 15
    iget-boolean v1, p0, Lf/i/a/a/j1/d$c;->s:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 16
    iget-boolean v1, p0, Lf/i/a/a/j1/d$c;->t:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 17
    iget-boolean v1, p0, Lf/i/a/a/j1/d$c;->u:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 18
    iget-boolean v1, p0, Lf/i/a/a/j1/d$c;->v:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 19
    iget-boolean v1, p0, Lf/i/a/a/j1/d$c;->w:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 20
    iget v1, p0, Lf/i/a/a/j1/d$c;->x:I

    add-int/2addr v0, v1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .line 1
    iget-object p2, p0, Lf/i/a/a/j1/l;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lf/i/a/a/j1/l;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-boolean p2, p0, Lf/i/a/a/j1/l;->c:Z

    invoke-static {p1, p2}, Lf/i/a/a/m1/h0;->s0(Landroid/os/Parcel;Z)V

    .line 4
    iget p2, p0, Lf/i/a/a/j1/l;->d:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget p2, p0, Lf/i/a/a/j1/d$c;->f:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget p2, p0, Lf/i/a/a/j1/d$c;->g:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    iget p2, p0, Lf/i/a/a/j1/d$c;->h:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    iget p2, p0, Lf/i/a/a/j1/d$c;->i:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget-boolean p2, p0, Lf/i/a/a/j1/d$c;->j:Z

    .line 10
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11
    iget-boolean p2, p0, Lf/i/a/a/j1/d$c;->k:Z

    .line 12
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13
    iget-boolean p2, p0, Lf/i/a/a/j1/d$c;->l:Z

    .line 14
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 15
    iget p2, p0, Lf/i/a/a/j1/d$c;->m:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 16
    iget p2, p0, Lf/i/a/a/j1/d$c;->n:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 17
    iget-boolean p2, p0, Lf/i/a/a/j1/d$c;->o:Z

    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    iget p2, p0, Lf/i/a/a/j1/d$c;->p:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 20
    iget p2, p0, Lf/i/a/a/j1/d$c;->q:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 21
    iget-boolean p2, p0, Lf/i/a/a/j1/d$c;->r:Z

    .line 22
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 23
    iget-boolean p2, p0, Lf/i/a/a/j1/d$c;->s:Z

    .line 24
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 25
    iget-boolean p2, p0, Lf/i/a/a/j1/d$c;->t:Z

    .line 26
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 27
    iget-boolean p2, p0, Lf/i/a/a/j1/d$c;->u:Z

    .line 28
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    iget-boolean p2, p0, Lf/i/a/a/j1/d$c;->v:Z

    .line 30
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 31
    iget-boolean p2, p0, Lf/i/a/a/j1/d$c;->w:Z

    .line 32
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 33
    iget p2, p0, Lf/i/a/a/j1/d$c;->x:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    iget-object p2, p0, Lf/i/a/a/j1/d$c;->y:Landroid/util/SparseArray;

    .line 35
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 36
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 37
    invoke-virtual {p2, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 38
    invoke-virtual {p2, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 39
    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v5

    .line 40
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 43
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Parcelable;

    invoke-virtual {p1, v5, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 44
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Parcelable;

    invoke-virtual {p1, v4, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 45
    :cond_1
    iget-object p2, p0, Lf/i/a/a/j1/d$c;->z:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSparseBooleanArray(Landroid/util/SparseBooleanArray;)V

    return-void
.end method
