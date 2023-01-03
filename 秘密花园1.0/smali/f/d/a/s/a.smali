.class public abstract Lf/d/a/s/a;
.super Ljava/lang/Object;
.source "BaseRequestOptions.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lf/d/a/s/a<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:F

.field public c:Lf/d/a/o/n/k;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public d:Lf/d/a/f;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public e:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public f:I

.field public g:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public h:I

.field public i:Z

.field public j:I

.field public k:I

.field public l:Lf/d/a/o/f;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public m:Z

.field public n:Z

.field public o:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public p:I

.field public q:Lf/d/a/o/h;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public r:Ljava/util/Map;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lf/d/a/o/l<",
            "*>;>;"
        }
    .end annotation
.end field

.field public s:Ljava/lang/Class;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public t:Z

.field public u:Landroid/content/res/Resources$Theme;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public v:Z

.field public w:Z

.field public x:Z

.field public y:Z

.field public z:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iput v0, p0, Lf/d/a/s/a;->b:F

    .line 3
    sget-object v0, Lf/d/a/o/n/k;->d:Lf/d/a/o/n/k;

    iput-object v0, p0, Lf/d/a/s/a;->c:Lf/d/a/o/n/k;

    .line 4
    sget-object v0, Lf/d/a/f;->c:Lf/d/a/f;

    iput-object v0, p0, Lf/d/a/s/a;->d:Lf/d/a/f;

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lf/d/a/s/a;->i:Z

    const/4 v1, -0x1

    .line 6
    iput v1, p0, Lf/d/a/s/a;->j:I

    .line 7
    iput v1, p0, Lf/d/a/s/a;->k:I

    .line 8
    sget-object v1, Lf/d/a/t/c;->b:Lf/d/a/t/c;

    .line 9
    iput-object v1, p0, Lf/d/a/s/a;->l:Lf/d/a/o/f;

    .line 10
    iput-boolean v0, p0, Lf/d/a/s/a;->n:Z

    .line 11
    new-instance v1, Lf/d/a/o/h;

    invoke-direct {v1}, Lf/d/a/o/h;-><init>()V

    iput-object v1, p0, Lf/d/a/s/a;->q:Lf/d/a/o/h;

    .line 12
    new-instance v1, Lcom/bumptech/glide/util/CachedHashCodeArrayMap;

    invoke-direct {v1}, Lcom/bumptech/glide/util/CachedHashCodeArrayMap;-><init>()V

    iput-object v1, p0, Lf/d/a/s/a;->r:Ljava/util/Map;

    .line 13
    const-class v1, Ljava/lang/Object;

    iput-object v1, p0, Lf/d/a/s/a;->s:Ljava/lang/Class;

    .line 14
    iput-boolean v0, p0, Lf/d/a/s/a;->y:Z

    return-void
.end method

.method public static j(II)Z
    .locals 0

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public A(Z)Lf/d/a/s/a;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lf/d/a/s/a;->v:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lf/d/a/s/a;->d()Lf/d/a/s/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lf/d/a/s/a;->A(Z)Lf/d/a/s/a;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iput-boolean p1, p0, Lf/d/a/s/a;->z:Z

    .line 4
    iget p1, p0, Lf/d/a/s/a;->a:I

    const/high16 v0, 0x100000

    or-int/2addr p1, v0

    iput p1, p0, Lf/d/a/s/a;->a:I

    .line 5
    invoke-virtual {p0}, Lf/d/a/s/a;->s()Lf/d/a/s/a;

    return-object p0
.end method

.method public a(Lf/d/a/s/a;)Lf/d/a/s/a;
    .locals 4
    .param p1    # Lf/d/a/s/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/d/a/s/a<",
            "*>;)TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lf/d/a/s/a;->v:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lf/d/a/s/a;->d()Lf/d/a/s/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lf/d/a/s/a;->a(Lf/d/a/s/a;)Lf/d/a/s/a;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget v0, p1, Lf/d/a/s/a;->a:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lf/d/a/s/a;->j(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget v0, p1, Lf/d/a/s/a;->b:F

    iput v0, p0, Lf/d/a/s/a;->b:F

    .line 5
    :cond_1
    iget v0, p1, Lf/d/a/s/a;->a:I

    const/high16 v1, 0x40000

    invoke-static {v0, v1}, Lf/d/a/s/a;->j(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iget-boolean v0, p1, Lf/d/a/s/a;->w:Z

    iput-boolean v0, p0, Lf/d/a/s/a;->w:Z

    .line 7
    :cond_2
    iget v0, p1, Lf/d/a/s/a;->a:I

    const/high16 v1, 0x100000

    invoke-static {v0, v1}, Lf/d/a/s/a;->j(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    iget-boolean v0, p1, Lf/d/a/s/a;->z:Z

    iput-boolean v0, p0, Lf/d/a/s/a;->z:Z

    .line 9
    :cond_3
    iget v0, p1, Lf/d/a/s/a;->a:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lf/d/a/s/a;->j(II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10
    iget-object v0, p1, Lf/d/a/s/a;->c:Lf/d/a/o/n/k;

    iput-object v0, p0, Lf/d/a/s/a;->c:Lf/d/a/o/n/k;

    .line 11
    :cond_4
    iget v0, p1, Lf/d/a/s/a;->a:I

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lf/d/a/s/a;->j(II)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 12
    iget-object v0, p1, Lf/d/a/s/a;->d:Lf/d/a/f;

    iput-object v0, p0, Lf/d/a/s/a;->d:Lf/d/a/f;

    .line 13
    :cond_5
    iget v0, p1, Lf/d/a/s/a;->a:I

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lf/d/a/s/a;->j(II)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 14
    iget-object v0, p1, Lf/d/a/s/a;->e:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lf/d/a/s/a;->e:Landroid/graphics/drawable/Drawable;

    .line 15
    iput v1, p0, Lf/d/a/s/a;->f:I

    .line 16
    iget v0, p0, Lf/d/a/s/a;->a:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lf/d/a/s/a;->a:I

    .line 17
    :cond_6
    iget v0, p1, Lf/d/a/s/a;->a:I

    const/16 v2, 0x20

    invoke-static {v0, v2}, Lf/d/a/s/a;->j(II)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    .line 18
    iget v0, p1, Lf/d/a/s/a;->f:I

    iput v0, p0, Lf/d/a/s/a;->f:I

    .line 19
    iput-object v2, p0, Lf/d/a/s/a;->e:Landroid/graphics/drawable/Drawable;

    .line 20
    iget v0, p0, Lf/d/a/s/a;->a:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lf/d/a/s/a;->a:I

    .line 21
    :cond_7
    iget v0, p1, Lf/d/a/s/a;->a:I

    const/16 v3, 0x40

    invoke-static {v0, v3}, Lf/d/a/s/a;->j(II)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 22
    iget-object v0, p1, Lf/d/a/s/a;->g:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lf/d/a/s/a;->g:Landroid/graphics/drawable/Drawable;

    .line 23
    iput v1, p0, Lf/d/a/s/a;->h:I

    .line 24
    iget v0, p0, Lf/d/a/s/a;->a:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lf/d/a/s/a;->a:I

    .line 25
    :cond_8
    iget v0, p1, Lf/d/a/s/a;->a:I

    const/16 v3, 0x80

    invoke-static {v0, v3}, Lf/d/a/s/a;->j(II)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 26
    iget v0, p1, Lf/d/a/s/a;->h:I

    iput v0, p0, Lf/d/a/s/a;->h:I

    .line 27
    iput-object v2, p0, Lf/d/a/s/a;->g:Landroid/graphics/drawable/Drawable;

    .line 28
    iget v0, p0, Lf/d/a/s/a;->a:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lf/d/a/s/a;->a:I

    .line 29
    :cond_9
    iget v0, p1, Lf/d/a/s/a;->a:I

    const/16 v3, 0x100

    invoke-static {v0, v3}, Lf/d/a/s/a;->j(II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 30
    iget-boolean v0, p1, Lf/d/a/s/a;->i:Z

    iput-boolean v0, p0, Lf/d/a/s/a;->i:Z

    .line 31
    :cond_a
    iget v0, p1, Lf/d/a/s/a;->a:I

    const/16 v3, 0x200

    invoke-static {v0, v3}, Lf/d/a/s/a;->j(II)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 32
    iget v0, p1, Lf/d/a/s/a;->k:I

    iput v0, p0, Lf/d/a/s/a;->k:I

    .line 33
    iget v0, p1, Lf/d/a/s/a;->j:I

    iput v0, p0, Lf/d/a/s/a;->j:I

    .line 34
    :cond_b
    iget v0, p1, Lf/d/a/s/a;->a:I

    const/16 v3, 0x400

    invoke-static {v0, v3}, Lf/d/a/s/a;->j(II)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 35
    iget-object v0, p1, Lf/d/a/s/a;->l:Lf/d/a/o/f;

    iput-object v0, p0, Lf/d/a/s/a;->l:Lf/d/a/o/f;

    .line 36
    :cond_c
    iget v0, p1, Lf/d/a/s/a;->a:I

    const/16 v3, 0x1000

    invoke-static {v0, v3}, Lf/d/a/s/a;->j(II)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 37
    iget-object v0, p1, Lf/d/a/s/a;->s:Ljava/lang/Class;

    iput-object v0, p0, Lf/d/a/s/a;->s:Ljava/lang/Class;

    .line 38
    :cond_d
    iget v0, p1, Lf/d/a/s/a;->a:I

    const/16 v3, 0x2000

    invoke-static {v0, v3}, Lf/d/a/s/a;->j(II)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 39
    iget-object v0, p1, Lf/d/a/s/a;->o:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lf/d/a/s/a;->o:Landroid/graphics/drawable/Drawable;

    .line 40
    iput v1, p0, Lf/d/a/s/a;->p:I

    .line 41
    iget v0, p0, Lf/d/a/s/a;->a:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lf/d/a/s/a;->a:I

    .line 42
    :cond_e
    iget v0, p1, Lf/d/a/s/a;->a:I

    const/16 v3, 0x4000

    invoke-static {v0, v3}, Lf/d/a/s/a;->j(II)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 43
    iget v0, p1, Lf/d/a/s/a;->p:I

    iput v0, p0, Lf/d/a/s/a;->p:I

    .line 44
    iput-object v2, p0, Lf/d/a/s/a;->o:Landroid/graphics/drawable/Drawable;

    .line 45
    iget v0, p0, Lf/d/a/s/a;->a:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lf/d/a/s/a;->a:I

    .line 46
    :cond_f
    iget v0, p1, Lf/d/a/s/a;->a:I

    const v2, 0x8000

    invoke-static {v0, v2}, Lf/d/a/s/a;->j(II)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 47
    iget-object v0, p1, Lf/d/a/s/a;->u:Landroid/content/res/Resources$Theme;

    iput-object v0, p0, Lf/d/a/s/a;->u:Landroid/content/res/Resources$Theme;

    .line 48
    :cond_10
    iget v0, p1, Lf/d/a/s/a;->a:I

    const/high16 v2, 0x10000

    invoke-static {v0, v2}, Lf/d/a/s/a;->j(II)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 49
    iget-boolean v0, p1, Lf/d/a/s/a;->n:Z

    iput-boolean v0, p0, Lf/d/a/s/a;->n:Z

    .line 50
    :cond_11
    iget v0, p1, Lf/d/a/s/a;->a:I

    const/high16 v2, 0x20000

    invoke-static {v0, v2}, Lf/d/a/s/a;->j(II)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 51
    iget-boolean v0, p1, Lf/d/a/s/a;->m:Z

    iput-boolean v0, p0, Lf/d/a/s/a;->m:Z

    .line 52
    :cond_12
    iget v0, p1, Lf/d/a/s/a;->a:I

    const/16 v2, 0x800

    invoke-static {v0, v2}, Lf/d/a/s/a;->j(II)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 53
    iget-object v0, p0, Lf/d/a/s/a;->r:Ljava/util/Map;

    iget-object v2, p1, Lf/d/a/s/a;->r:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 54
    iget-boolean v0, p1, Lf/d/a/s/a;->y:Z

    iput-boolean v0, p0, Lf/d/a/s/a;->y:Z

    .line 55
    :cond_13
    iget v0, p1, Lf/d/a/s/a;->a:I

    const/high16 v2, 0x80000

    invoke-static {v0, v2}, Lf/d/a/s/a;->j(II)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 56
    iget-boolean v0, p1, Lf/d/a/s/a;->x:Z

    iput-boolean v0, p0, Lf/d/a/s/a;->x:Z

    .line 57
    :cond_14
    iget-boolean v0, p0, Lf/d/a/s/a;->n:Z

    if-nez v0, :cond_15

    .line 58
    iget-object v0, p0, Lf/d/a/s/a;->r:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 59
    iget v0, p0, Lf/d/a/s/a;->a:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lf/d/a/s/a;->a:I

    .line 60
    iput-boolean v1, p0, Lf/d/a/s/a;->m:Z

    const v1, -0x20001

    and-int/2addr v0, v1

    .line 61
    iput v0, p0, Lf/d/a/s/a;->a:I

    const/4 v0, 0x1

    .line 62
    iput-boolean v0, p0, Lf/d/a/s/a;->y:Z

    .line 63
    :cond_15
    iget v0, p0, Lf/d/a/s/a;->a:I

    iget v1, p1, Lf/d/a/s/a;->a:I

    or-int/2addr v0, v1

    iput v0, p0, Lf/d/a/s/a;->a:I

    .line 64
    iget-object v0, p0, Lf/d/a/s/a;->q:Lf/d/a/o/h;

    iget-object p1, p1, Lf/d/a/s/a;->q:Lf/d/a/o/h;

    invoke-virtual {v0, p1}, Lf/d/a/o/h;->d(Lf/d/a/o/h;)V

    .line 65
    invoke-virtual {p0}, Lf/d/a/s/a;->s()Lf/d/a/s/a;

    return-object p0
.end method

.method public b()Lf/d/a/s/a;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lf/d/a/s/a;->t:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lf/d/a/s/a;->v:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot auto lock an already locked options object, try clone() first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lf/d/a/s/a;->v:Z

    .line 4
    invoke-virtual {p0}, Lf/d/a/s/a;->k()Lf/d/a/s/a;

    move-result-object v0

    return-object v0
.end method

.method public c()Lf/d/a/s/a;
    .locals 2
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    sget-object v0, Lf/d/a/o/p/c/m;->b:Lf/d/a/o/p/c/m;

    new-instance v1, Lf/d/a/o/p/c/k;

    invoke-direct {v1}, Lf/d/a/o/p/c/k;-><init>()V

    invoke-virtual {p0, v0, v1}, Lf/d/a/s/a;->y(Lf/d/a/o/p/c/m;Lf/d/a/o/l;)Lf/d/a/s/a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lf/d/a/s/a;->d()Lf/d/a/s/a;

    move-result-object v0

    return-object v0
.end method

.method public d()Lf/d/a/s/a;
    .locals 3
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/d/a/s/a;

    .line 2
    new-instance v1, Lf/d/a/o/h;

    invoke-direct {v1}, Lf/d/a/o/h;-><init>()V

    iput-object v1, v0, Lf/d/a/s/a;->q:Lf/d/a/o/h;

    .line 3
    iget-object v2, p0, Lf/d/a/s/a;->q:Lf/d/a/o/h;

    invoke-virtual {v1, v2}, Lf/d/a/o/h;->d(Lf/d/a/o/h;)V

    .line 4
    new-instance v1, Lcom/bumptech/glide/util/CachedHashCodeArrayMap;

    invoke-direct {v1}, Lcom/bumptech/glide/util/CachedHashCodeArrayMap;-><init>()V

    iput-object v1, v0, Lf/d/a/s/a;->r:Ljava/util/Map;

    .line 5
    iget-object v2, p0, Lf/d/a/s/a;->r:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const/4 v1, 0x0

    .line 6
    iput-boolean v1, v0, Lf/d/a/s/a;->t:Z

    .line 7
    iput-boolean v1, v0, Lf/d/a/s/a;->v:Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 8
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public e(Ljava/lang/Class;)Lf/d/a/s/a;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lf/d/a/s/a;->v:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lf/d/a/s/a;->d()Lf/d/a/s/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lf/d/a/s/a;->e(Ljava/lang/Class;)Lf/d/a/s/a;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "Argument must not be null"

    .line 3
    invoke-static {p1, v0}, Lc/a/a/b/g/h;->s(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Lf/d/a/s/a;->s:Ljava/lang/Class;

    .line 5
    iget p1, p0, Lf/d/a/s/a;->a:I

    or-int/lit16 p1, p1, 0x1000

    iput p1, p0, Lf/d/a/s/a;->a:I

    .line 6
    invoke-virtual {p0}, Lf/d/a/s/a;->s()Lf/d/a/s/a;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lf/d/a/s/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lf/d/a/s/a;

    .line 3
    iget v0, p1, Lf/d/a/s/a;->b:F

    iget v2, p0, Lf/d/a/s/a;->b:F

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lf/d/a/s/a;->f:I

    iget v2, p1, Lf/d/a/s/a;->f:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lf/d/a/s/a;->e:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lf/d/a/s/a;->e:Landroid/graphics/drawable/Drawable;

    .line 4
    invoke-static {v0, v2}, Lf/d/a/u/i;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lf/d/a/s/a;->h:I

    iget v2, p1, Lf/d/a/s/a;->h:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lf/d/a/s/a;->g:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lf/d/a/s/a;->g:Landroid/graphics/drawable/Drawable;

    .line 5
    invoke-static {v0, v2}, Lf/d/a/u/i;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lf/d/a/s/a;->p:I

    iget v2, p1, Lf/d/a/s/a;->p:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lf/d/a/s/a;->o:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lf/d/a/s/a;->o:Landroid/graphics/drawable/Drawable;

    .line 6
    invoke-static {v0, v2}, Lf/d/a/u/i;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lf/d/a/s/a;->i:Z

    iget-boolean v2, p1, Lf/d/a/s/a;->i:Z

    if-ne v0, v2, :cond_0

    iget v0, p0, Lf/d/a/s/a;->j:I

    iget v2, p1, Lf/d/a/s/a;->j:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lf/d/a/s/a;->k:I

    iget v2, p1, Lf/d/a/s/a;->k:I

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lf/d/a/s/a;->m:Z

    iget-boolean v2, p1, Lf/d/a/s/a;->m:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lf/d/a/s/a;->n:Z

    iget-boolean v2, p1, Lf/d/a/s/a;->n:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lf/d/a/s/a;->w:Z

    iget-boolean v2, p1, Lf/d/a/s/a;->w:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lf/d/a/s/a;->x:Z

    iget-boolean v2, p1, Lf/d/a/s/a;->x:Z

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lf/d/a/s/a;->c:Lf/d/a/o/n/k;

    iget-object v2, p1, Lf/d/a/s/a;->c:Lf/d/a/o/n/k;

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf/d/a/s/a;->d:Lf/d/a/f;

    iget-object v2, p1, Lf/d/a/s/a;->d:Lf/d/a/f;

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lf/d/a/s/a;->q:Lf/d/a/o/h;

    iget-object v2, p1, Lf/d/a/s/a;->q:Lf/d/a/o/h;

    .line 8
    invoke-virtual {v0, v2}, Lf/d/a/o/h;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf/d/a/s/a;->r:Ljava/util/Map;

    iget-object v2, p1, Lf/d/a/s/a;->r:Ljava/util/Map;

    .line 9
    invoke-interface {v0, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf/d/a/s/a;->s:Ljava/lang/Class;

    iget-object v2, p1, Lf/d/a/s/a;->s:Ljava/lang/Class;

    .line 10
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf/d/a/s/a;->l:Lf/d/a/o/f;

    iget-object v2, p1, Lf/d/a/s/a;->l:Lf/d/a/o/f;

    .line 11
    invoke-static {v0, v2}, Lf/d/a/u/i;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf/d/a/s/a;->u:Landroid/content/res/Resources$Theme;

    iget-object p1, p1, Lf/d/a/s/a;->u:Landroid/content/res/Resources$Theme;

    .line 12
    invoke-static {v0, p1}, Lf/d/a/u/i;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public f(Lf/d/a/o/n/k;)Lf/d/a/s/a;
    .locals 1
    .param p1    # Lf/d/a/o/n/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/d/a/o/n/k;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lf/d/a/s/a;->v:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lf/d/a/s/a;->d()Lf/d/a/s/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lf/d/a/s/a;->f(Lf/d/a/o/n/k;)Lf/d/a/s/a;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "Argument must not be null"

    .line 3
    invoke-static {p1, v0}, Lc/a/a/b/g/h;->s(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Lf/d/a/s/a;->c:Lf/d/a/o/n/k;

    .line 5
    iget p1, p0, Lf/d/a/s/a;->a:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lf/d/a/s/a;->a:I

    .line 6
    invoke-virtual {p0}, Lf/d/a/s/a;->s()Lf/d/a/s/a;

    return-object p0
.end method

.method public g(Lf/d/a/o/p/c/m;)Lf/d/a/s/a;
    .locals 2
    .param p1    # Lf/d/a/o/p/c/m;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/d/a/o/p/c/m;",
            ")TT;"
        }
    .end annotation

    .line 1
    sget-object v0, Lf/d/a/o/p/c/m;->f:Lf/d/a/o/g;

    const-string v1, "Argument must not be null"

    .line 2
    invoke-static {p1, v1}, Lc/a/a/b/g/h;->s(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0, v0, p1}, Lf/d/a/s/a;->t(Lf/d/a/o/g;Ljava/lang/Object;)Lf/d/a/s/a;

    move-result-object p1

    return-object p1
.end method

.method public h()Lf/d/a/s/a;
    .locals 2
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    sget-object v0, Lf/d/a/o/p/c/m;->a:Lf/d/a/o/p/c/m;

    new-instance v1, Lf/d/a/o/p/c/r;

    invoke-direct {v1}, Lf/d/a/o/p/c/r;-><init>()V

    .line 2
    invoke-virtual {p0, v0, v1}, Lf/d/a/s/a;->y(Lf/d/a/o/p/c/m;Lf/d/a/o/l;)Lf/d/a/s/a;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, v0, Lf/d/a/s/a;->y:Z

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lf/d/a/s/a;->b:F

    invoke-static {v0}, Lf/d/a/u/i;->h(F)I

    move-result v0

    .line 2
    iget v1, p0, Lf/d/a/s/a;->f:I

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    .line 3
    iget-object v1, p0, Lf/d/a/s/a;->e:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lf/d/a/u/i;->j(Ljava/lang/Object;I)I

    move-result v0

    .line 4
    iget v1, p0, Lf/d/a/s/a;->h:I

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    .line 5
    iget-object v1, p0, Lf/d/a/s/a;->g:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lf/d/a/u/i;->j(Ljava/lang/Object;I)I

    move-result v0

    .line 6
    iget v1, p0, Lf/d/a/s/a;->p:I

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    .line 7
    iget-object v1, p0, Lf/d/a/s/a;->o:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lf/d/a/u/i;->j(Ljava/lang/Object;I)I

    move-result v0

    .line 8
    iget-boolean v1, p0, Lf/d/a/s/a;->i:Z

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    .line 9
    iget v1, p0, Lf/d/a/s/a;->j:I

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    .line 10
    iget v1, p0, Lf/d/a/s/a;->k:I

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    .line 11
    iget-boolean v1, p0, Lf/d/a/s/a;->m:Z

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    .line 12
    iget-boolean v1, p0, Lf/d/a/s/a;->n:Z

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    .line 13
    iget-boolean v1, p0, Lf/d/a/s/a;->w:Z

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    .line 14
    iget-boolean v1, p0, Lf/d/a/s/a;->x:Z

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    .line 15
    iget-object v1, p0, Lf/d/a/s/a;->c:Lf/d/a/o/n/k;

    invoke-static {v1, v0}, Lf/d/a/u/i;->j(Ljava/lang/Object;I)I

    move-result v0

    .line 16
    iget-object v1, p0, Lf/d/a/s/a;->d:Lf/d/a/f;

    invoke-static {v1, v0}, Lf/d/a/u/i;->j(Ljava/lang/Object;I)I

    move-result v0

    .line 17
    iget-object v1, p0, Lf/d/a/s/a;->q:Lf/d/a/o/h;

    invoke-static {v1, v0}, Lf/d/a/u/i;->j(Ljava/lang/Object;I)I

    move-result v0

    .line 18
    iget-object v1, p0, Lf/d/a/s/a;->r:Ljava/util/Map;

    invoke-static {v1, v0}, Lf/d/a/u/i;->j(Ljava/lang/Object;I)I

    move-result v0

    .line 19
    iget-object v1, p0, Lf/d/a/s/a;->s:Ljava/lang/Class;

    invoke-static {v1, v0}, Lf/d/a/u/i;->j(Ljava/lang/Object;I)I

    move-result v0

    .line 20
    iget-object v1, p0, Lf/d/a/s/a;->l:Lf/d/a/o/f;

    invoke-static {v1, v0}, Lf/d/a/u/i;->j(Ljava/lang/Object;I)I

    move-result v0

    .line 21
    iget-object v1, p0, Lf/d/a/s/a;->u:Landroid/content/res/Resources$Theme;

    invoke-static {v1, v0}, Lf/d/a/u/i;->j(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public i(Lf/d/a/o/b;)Lf/d/a/s/a;
    .locals 2
    .param p1    # Lf/d/a/o/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/d/a/o/b;",
            ")TT;"
        }
    .end annotation

    const-string v0, "Argument must not be null"

    .line 1
    invoke-static {p1, v0}, Lc/a/a/b/g/h;->s(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    sget-object v0, Lf/d/a/o/p/c/n;->f:Lf/d/a/o/g;

    invoke-virtual {p0, v0, p1}, Lf/d/a/s/a;->t(Lf/d/a/o/g;Ljava/lang/Object;)Lf/d/a/s/a;

    move-result-object v0

    sget-object v1, Lf/d/a/o/p/g/h;->a:Lf/d/a/o/g;

    invoke-virtual {v0, v1, p1}, Lf/d/a/s/a;->t(Lf/d/a/o/g;Ljava/lang/Object;)Lf/d/a/s/a;

    move-result-object p1

    return-object p1
.end method

.method public k()Lf/d/a/s/a;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lf/d/a/s/a;->t:Z

    return-object p0
.end method

.method public l()Lf/d/a/s/a;
    .locals 2
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    sget-object v0, Lf/d/a/o/p/c/m;->c:Lf/d/a/o/p/c/m;

    new-instance v1, Lf/d/a/o/p/c/i;

    invoke-direct {v1}, Lf/d/a/o/p/c/i;-><init>()V

    invoke-virtual {p0, v0, v1}, Lf/d/a/s/a;->o(Lf/d/a/o/p/c/m;Lf/d/a/o/l;)Lf/d/a/s/a;

    move-result-object v0

    return-object v0
.end method

.method public m()Lf/d/a/s/a;
    .locals 2
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    sget-object v0, Lf/d/a/o/p/c/m;->b:Lf/d/a/o/p/c/m;

    new-instance v1, Lf/d/a/o/p/c/j;

    invoke-direct {v1}, Lf/d/a/o/p/c/j;-><init>()V

    .line 2
    invoke-virtual {p0, v0, v1}, Lf/d/a/s/a;->o(Lf/d/a/o/p/c/m;Lf/d/a/o/l;)Lf/d/a/s/a;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, v0, Lf/d/a/s/a;->y:Z

    return-object v0
.end method

.method public n()Lf/d/a/s/a;
    .locals 2
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    sget-object v0, Lf/d/a/o/p/c/m;->a:Lf/d/a/o/p/c/m;

    new-instance v1, Lf/d/a/o/p/c/r;

    invoke-direct {v1}, Lf/d/a/o/p/c/r;-><init>()V

    .line 2
    invoke-virtual {p0, v0, v1}, Lf/d/a/s/a;->o(Lf/d/a/o/p/c/m;Lf/d/a/o/l;)Lf/d/a/s/a;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, v0, Lf/d/a/s/a;->y:Z

    return-object v0
.end method

.method public final o(Lf/d/a/o/p/c/m;Lf/d/a/o/l;)Lf/d/a/s/a;
    .locals 1
    .param p1    # Lf/d/a/o/p/c/m;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lf/d/a/o/l;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/d/a/o/p/c/m;",
            "Lf/d/a/o/l<",
            "Landroid/graphics/Bitmap;",
            ">;)TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lf/d/a/s/a;->v:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lf/d/a/s/a;->d()Lf/d/a/s/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lf/d/a/s/a;->o(Lf/d/a/o/p/c/m;Lf/d/a/o/l;)Lf/d/a/s/a;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lf/d/a/s/a;->g(Lf/d/a/o/p/c/m;)Lf/d/a/s/a;

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p2, p1}, Lf/d/a/s/a;->x(Lf/d/a/o/l;Z)Lf/d/a/s/a;

    move-result-object p1

    return-object p1
.end method

.method public p(II)Lf/d/a/s/a;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lf/d/a/s/a;->v:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lf/d/a/s/a;->d()Lf/d/a/s/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lf/d/a/s/a;->p(II)Lf/d/a/s/a;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iput p1, p0, Lf/d/a/s/a;->k:I

    .line 4
    iput p2, p0, Lf/d/a/s/a;->j:I

    .line 5
    iget p1, p0, Lf/d/a/s/a;->a:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Lf/d/a/s/a;->a:I

    .line 6
    invoke-virtual {p0}, Lf/d/a/s/a;->s()Lf/d/a/s/a;

    return-object p0
.end method

.method public q(I)Lf/d/a/s/a;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lf/d/a/s/a;->v:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lf/d/a/s/a;->d()Lf/d/a/s/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lf/d/a/s/a;->q(I)Lf/d/a/s/a;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iput p1, p0, Lf/d/a/s/a;->h:I

    .line 4
    iget p1, p0, Lf/d/a/s/a;->a:I

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, Lf/d/a/s/a;->a:I

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lf/d/a/s/a;->g:Landroid/graphics/drawable/Drawable;

    and-int/lit8 p1, p1, -0x41

    .line 6
    iput p1, p0, Lf/d/a/s/a;->a:I

    .line 7
    invoke-virtual {p0}, Lf/d/a/s/a;->s()Lf/d/a/s/a;

    return-object p0
.end method

.method public r(Lf/d/a/f;)Lf/d/a/s/a;
    .locals 1
    .param p1    # Lf/d/a/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/d/a/f;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lf/d/a/s/a;->v:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lf/d/a/s/a;->d()Lf/d/a/s/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lf/d/a/s/a;->r(Lf/d/a/f;)Lf/d/a/s/a;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "Argument must not be null"

    .line 3
    invoke-static {p1, v0}, Lc/a/a/b/g/h;->s(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Lf/d/a/s/a;->d:Lf/d/a/f;

    .line 5
    iget p1, p0, Lf/d/a/s/a;->a:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lf/d/a/s/a;->a:I

    .line 6
    invoke-virtual {p0}, Lf/d/a/s/a;->s()Lf/d/a/s/a;

    return-object p0
.end method

.method public final s()Lf/d/a/s/a;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lf/d/a/s/a;->t:Z

    if-nez v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot modify locked T, consider clone()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public t(Lf/d/a/o/g;Ljava/lang/Object;)Lf/d/a/s/a;
    .locals 1
    .param p1    # Lf/d/a/o/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y:",
            "Ljava/lang/Object;",
            ">(",
            "Lf/d/a/o/g<",
            "TY;>;TY;)TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lf/d/a/s/a;->v:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lf/d/a/s/a;->d()Lf/d/a/s/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lf/d/a/s/a;->t(Lf/d/a/o/g;Ljava/lang/Object;)Lf/d/a/s/a;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "Argument must not be null"

    .line 3
    invoke-static {p1, v0}, Lc/a/a/b/g/h;->s(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    invoke-static {p2, v0}, Lc/a/a/b/g/h;->s(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lf/d/a/s/a;->q:Lf/d/a/o/h;

    .line 6
    iget-object v0, v0, Lf/d/a/o/h;->b:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p0}, Lf/d/a/s/a;->s()Lf/d/a/s/a;

    return-object p0
.end method

.method public u(Lf/d/a/o/f;)Lf/d/a/s/a;
    .locals 1
    .param p1    # Lf/d/a/o/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/d/a/o/f;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lf/d/a/s/a;->v:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lf/d/a/s/a;->d()Lf/d/a/s/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lf/d/a/s/a;->u(Lf/d/a/o/f;)Lf/d/a/s/a;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "Argument must not be null"

    .line 3
    invoke-static {p1, v0}, Lc/a/a/b/g/h;->s(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Lf/d/a/s/a;->l:Lf/d/a/o/f;

    .line 5
    iget p1, p0, Lf/d/a/s/a;->a:I

    or-int/lit16 p1, p1, 0x400

    iput p1, p0, Lf/d/a/s/a;->a:I

    .line 6
    invoke-virtual {p0}, Lf/d/a/s/a;->s()Lf/d/a/s/a;

    return-object p0
.end method

.method public v(Z)Lf/d/a/s/a;
    .locals 2
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lf/d/a/s/a;->v:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lf/d/a/s/a;->d()Lf/d/a/s/a;

    move-result-object p1

    invoke-virtual {p1, v1}, Lf/d/a/s/a;->v(Z)Lf/d/a/s/a;

    move-result-object p1

    return-object p1

    :cond_0
    xor-int/2addr p1, v1

    .line 3
    iput-boolean p1, p0, Lf/d/a/s/a;->i:Z

    .line 4
    iget p1, p0, Lf/d/a/s/a;->a:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Lf/d/a/s/a;->a:I

    .line 5
    invoke-virtual {p0}, Lf/d/a/s/a;->s()Lf/d/a/s/a;

    return-object p0
.end method

.method public w(Lf/d/a/o/l;)Lf/d/a/s/a;
    .locals 1
    .param p1    # Lf/d/a/o/l;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/d/a/o/l<",
            "Landroid/graphics/Bitmap;",
            ">;)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lf/d/a/s/a;->x(Lf/d/a/o/l;Z)Lf/d/a/s/a;

    move-result-object p1

    return-object p1
.end method

.method public x(Lf/d/a/o/l;Z)Lf/d/a/s/a;
    .locals 2
    .param p1    # Lf/d/a/o/l;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/d/a/o/l<",
            "Landroid/graphics/Bitmap;",
            ">;Z)TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lf/d/a/s/a;->v:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lf/d/a/s/a;->d()Lf/d/a/s/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lf/d/a/s/a;->x(Lf/d/a/o/l;Z)Lf/d/a/s/a;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Lf/d/a/o/p/c/p;

    invoke-direct {v0, p1, p2}, Lf/d/a/o/p/c/p;-><init>(Lf/d/a/o/l;Z)V

    .line 4
    const-class v1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1, p1, p2}, Lf/d/a/s/a;->z(Ljava/lang/Class;Lf/d/a/o/l;Z)Lf/d/a/s/a;

    .line 5
    const-class v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1, v0, p2}, Lf/d/a/s/a;->z(Ljava/lang/Class;Lf/d/a/o/l;Z)Lf/d/a/s/a;

    .line 6
    const-class v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0, v1, v0, p2}, Lf/d/a/s/a;->z(Ljava/lang/Class;Lf/d/a/o/l;Z)Lf/d/a/s/a;

    .line 7
    const-class v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    new-instance v1, Lf/d/a/o/p/g/e;

    invoke-direct {v1, p1}, Lf/d/a/o/p/g/e;-><init>(Lf/d/a/o/l;)V

    invoke-virtual {p0, v0, v1, p2}, Lf/d/a/s/a;->z(Ljava/lang/Class;Lf/d/a/o/l;Z)Lf/d/a/s/a;

    .line 8
    invoke-virtual {p0}, Lf/d/a/s/a;->s()Lf/d/a/s/a;

    return-object p0
.end method

.method public final y(Lf/d/a/o/p/c/m;Lf/d/a/o/l;)Lf/d/a/s/a;
    .locals 1
    .param p1    # Lf/d/a/o/p/c/m;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lf/d/a/o/l;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/d/a/o/p/c/m;",
            "Lf/d/a/o/l<",
            "Landroid/graphics/Bitmap;",
            ">;)TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lf/d/a/s/a;->v:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lf/d/a/s/a;->d()Lf/d/a/s/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lf/d/a/s/a;->y(Lf/d/a/o/p/c/m;Lf/d/a/o/l;)Lf/d/a/s/a;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lf/d/a/s/a;->g(Lf/d/a/o/p/c/m;)Lf/d/a/s/a;

    .line 4
    invoke-virtual {p0, p2}, Lf/d/a/s/a;->w(Lf/d/a/o/l;)Lf/d/a/s/a;

    move-result-object p1

    return-object p1
.end method

.method public z(Ljava/lang/Class;Lf/d/a/o/l;Z)Lf/d/a/s/a;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lf/d/a/o/l;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TY;>;",
            "Lf/d/a/o/l<",
            "TY;>;Z)TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lf/d/a/s/a;->v:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lf/d/a/s/a;->d()Lf/d/a/s/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lf/d/a/s/a;->z(Ljava/lang/Class;Lf/d/a/o/l;Z)Lf/d/a/s/a;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "Argument must not be null"

    .line 3
    invoke-static {p1, v0}, Lc/a/a/b/g/h;->s(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    invoke-static {p2, v0}, Lc/a/a/b/g/h;->s(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lf/d/a/s/a;->r:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget p1, p0, Lf/d/a/s/a;->a:I

    or-int/lit16 p1, p1, 0x800

    iput p1, p0, Lf/d/a/s/a;->a:I

    const/4 p2, 0x1

    .line 7
    iput-boolean p2, p0, Lf/d/a/s/a;->n:Z

    const/high16 v0, 0x10000

    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lf/d/a/s/a;->a:I

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lf/d/a/s/a;->y:Z

    if-eqz p3, :cond_1

    const/high16 p3, 0x20000

    or-int/2addr p1, p3

    .line 10
    iput p1, p0, Lf/d/a/s/a;->a:I

    .line 11
    iput-boolean p2, p0, Lf/d/a/s/a;->m:Z

    .line 12
    :cond_1
    invoke-virtual {p0}, Lf/d/a/s/a;->s()Lf/d/a/s/a;

    return-object p0
.end method
