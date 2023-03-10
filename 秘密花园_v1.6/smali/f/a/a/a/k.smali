.class public Lf/a/a/a/k;
.super Lf/a/a/a/b;
.source "RangeLayoutHelperFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/a/a/a/k$b;
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf/a/a/a/k$b;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/List;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf/a/a/a/a;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/Comparator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lf/a/a/a/k$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lf/a/a/a/b;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lf/a/a/a/k;->a:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lf/a/a/a/k;->b:Ljava/util/List;

    .line 4
    new-instance v0, Lf/a/a/a/k$a;

    invoke-direct {v0, p0}, Lf/a/a/a/k$a;-><init>(Lf/a/a/a/k;)V

    iput-object v0, p0, Lf/a/a/a/k;->c:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public b(I)Lf/a/a/a/a;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lf/a/a/a/k;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x0

    add-int/lit8 v0, v0, -0x1

    :cond_1
    :goto_0
    if-gt v2, v0, :cond_4

    add-int v3, v2, v0

    .line 2
    div-int/lit8 v3, v3, 0x2

    .line 3
    iget-object v4, p0, Lf/a/a/a/k;->a:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lf/a/a/a/k$b;

    .line 4
    invoke-virtual {v4}, Lf/a/a/a/k$b;->a()I

    move-result v5

    if-le v5, p1, :cond_2

    add-int/lit8 v0, v3, -0x1

    goto :goto_0

    .line 5
    :cond_2
    iget-object v5, v4, Lf/a/a/a/k$b;->a:Lf/a/a/a/a;

    .line 6
    iget-object v5, v5, Lf/a/a/a/a;->a:Lf/a/a/a/j;

    .line 7
    iget-object v5, v5, Lf/a/a/a/j;->b:Ljava/lang/Comparable;

    .line 8
    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ge v5, p1, :cond_3

    add-int/lit8 v2, v3, 0x1

    goto :goto_0

    .line 9
    :cond_3
    invoke-virtual {v4}, Lf/a/a/a/k$b;->a()I

    move-result v3

    if-gt v3, p1, :cond_1

    .line 10
    iget-object v3, v4, Lf/a/a/a/k$b;->a:Lf/a/a/a/a;

    .line 11
    iget-object v3, v3, Lf/a/a/a/a;->a:Lf/a/a/a/j;

    .line 12
    iget-object v3, v3, Lf/a/a/a/j;->b:Ljava/lang/Comparable;

    .line 13
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v3, p1, :cond_1

    goto :goto_1

    :cond_4
    move-object v4, v1

    :goto_1
    if-nez v4, :cond_5

    goto :goto_2

    .line 14
    :cond_5
    iget-object v1, v4, Lf/a/a/a/k$b;->a:Lf/a/a/a/a;

    :goto_2
    return-object v1
.end method

.method public c(Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lf/a/a/a/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/a/a/a/k;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lf/a/a/a/k;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_1

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/a/a/a/a;

    .line 4
    iget-object v1, p0, Lf/a/a/a/k;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v1, p0, Lf/a/a/a/k;->a:Ljava/util/List;

    new-instance v2, Lf/a/a/a/k$b;

    invoke-direct {v2, v0}, Lf/a/a/a/k$b;-><init>(Lf/a/a/a/a;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lf/a/a/a/k;->a:Ljava/util/List;

    iget-object v0, p0, Lf/a/a/a/k;->c:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_1
    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lf/a/a/a/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/a/a/a/k;->b:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
