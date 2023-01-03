.class public abstract Lf/a/a/a/a;
.super Ljava/lang/Object;
.source "LayoutHelper.java"


# static fields
.field public static final b:Lf/a/a/a/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/a/a/a/j<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Lf/a/a/a/j;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/a/a/a/j<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/high16 v0, -0x80000000

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x7fffffff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v0, :cond_2

    if-eqz v1, :cond_1

    .line 2
    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, -0x1

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 4
    new-instance v2, Lf/a/a/a/j;

    invoke-direct {v2, v1, v0}, Lf/a/a/a/j;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 5
    sput-object v2, Lf/a/a/a/a;->b:Lf/a/a/a/j;

    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "lower must be less than or equal to upper"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "upper must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "lower must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lf/a/a/a/a;->b:Lf/a/a/a/j;

    iput-object v0, p0, Lf/a/a/a/a;->a:Lf/a/a/a/j;

    .line 3
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;IIILf/a/a/a/c;)V
.end method

.method public abstract b(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Lf/a/a/a/c;)V
.end method

.method public c(Landroidx/recyclerview/widget/RecyclerView$State;Lcom/alibaba/android/vlayout/VirtualLayoutManager$d;Lf/a/a/a/c;)V
    .locals 0

    return-void
.end method

.method public abstract d(IZZLf/a/a/a/c;)I
.end method

.method public abstract e()Z
.end method

.method public f(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lf/a/a/a/a;->a:Lf/a/a/a/j;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lf/a/a/a/j;->b(Ljava/lang/Comparable;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public g(IIILf/a/a/a/c;Z)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public h(Lf/a/a/a/c;)V
    .locals 0

    return-void
.end method

.method public i(II)V
    .locals 0

    return-void
.end method

.method public abstract j(I)V
.end method

.method public k(II)V
    .locals 3

    if-lt p2, p1, :cond_3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    if-ne p2, v0, :cond_0

    .line 1
    sget-object v0, Lf/a/a/a/a;->b:Lf/a/a/a/j;

    iput-object v0, p0, Lf/a/a/a/a;->a:Lf/a/a/a/j;

    .line 2
    invoke-virtual {p0, p1, p2}, Lf/a/a/a/a;->i(II)V

    return-void

    :cond_0
    sub-int v0, p2, p1

    add-int/lit8 v0, v0, 0x1

    .line 3
    move-object v1, p0

    check-cast v1, Lf/a/a/a/l/b;

    .line 4
    iget v2, v1, Lf/a/a/a/l/b;->n:I

    if-ne v0, v2, :cond_2

    .line 5
    iget-object v0, p0, Lf/a/a/a/a;->a:Lf/a/a/a/j;

    .line 6
    iget-object v0, v0, Lf/a/a/a/j;->b:Ljava/lang/Comparable;

    .line 7
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lf/a/a/a/a;->a:Lf/a/a/a/j;

    .line 8
    iget-object v0, v0, Lf/a/a/a/j;->a:Ljava/lang/Comparable;

    .line 9
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p2, v0, :cond_1

    return-void

    .line 10
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 11
    new-instance v2, Lf/a/a/a/j;

    invoke-direct {v2, v0, v1}, Lf/a/a/a/j;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 12
    iput-object v2, p0, Lf/a/a/a/a;->a:Lf/a/a/a/j;

    .line 13
    invoke-virtual {p0, p1, p2}, Lf/a/a/a/a;->i(II)V

    return-void

    .line 14
    :cond_2
    new-instance p1, Lf/a/a/a/f;

    const-string p2, "ItemCount mismatch when range: "

    invoke-static {p2}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lf/a/a/a/a;->a:Lf/a/a/a/j;

    invoke-virtual {v0}, Lf/a/a/a/j;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " childCount: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    iget v0, v1, Lf/a/a/a/l/b;->n:I

    .line 16
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lf/a/a/a/f;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "end should be larger or equeal then start position"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
