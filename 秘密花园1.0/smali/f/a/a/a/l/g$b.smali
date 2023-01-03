.class public abstract Lf/a/a/a/l/g$b;
.super Ljava/lang/Object;
.source "GridLayoutHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/a/a/a/l/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation


# instance fields
.field public final a:Landroid/util/SparseIntArray;

.field public b:Z

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lf/a/a/a/l/g$b;->a:Landroid/util/SparseIntArray;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lf/a/a/a/l/g$b;->b:Z

    .line 4
    iput v0, p0, Lf/a/a/a/l/g$b;->c:I

    return-void
.end method


# virtual methods
.method public a(II)I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lf/a/a/a/l/g$b;->b:Z

    if-nez v0, :cond_0

    .line 2
    move-object v0, p0

    check-cast v0, Lf/a/a/a/l/g$a;

    .line 3
    iget v0, v0, Lf/a/a/a/l/g$b;->c:I

    sub-int/2addr p1, v0

    rem-int/2addr p1, p2

    return p1

    .line 4
    :cond_0
    iget-object v0, p0, Lf/a/a/a/l/g$b;->a:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, v1, :cond_1

    return v0

    .line 5
    :cond_1
    move-object v0, p0

    check-cast v0, Lf/a/a/a/l/g$a;

    .line 6
    iget v0, v0, Lf/a/a/a/l/g$b;->c:I

    sub-int v0, p1, v0

    rem-int/2addr v0, p2

    .line 7
    iget-object p2, p0, Lf/a/a/a/l/g$b;->a:Landroid/util/SparseIntArray;

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    return v0
.end method
