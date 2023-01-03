.class public Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;
.super Ljava/lang/Object;
.source "ExposeLinearLayoutManagerEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:Ljava/lang/reflect/Method;

.field public b:Z

.field public c:Z

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:Z

.field public l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;->a:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;->b:Z

    const/4 v2, 0x1

    .line 4
    iput-boolean v2, p0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;->c:Z

    .line 5
    iput v1, p0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;->j:I

    .line 6
    iput-boolean v1, p0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;->k:Z

    .line 7
    iput-object v0, p0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;->l:Ljava/util/List;

    .line 8
    :try_start_0
    const-class v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const-string v3, "isRemoved"

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;->a:Ljava/lang/reflect/Method;

    .line 9
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 11
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/RecyclerView$Recycler;)Landroid/view/View;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;->l:Ljava/util/List;

    if-eqz v0, :cond_6

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    const v1, 0x7fffffff

    const/4 v2, 0x0

    move-object v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p1, :cond_4

    .line 3
    iget-object v5, p0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;->l:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 4
    iget-boolean v6, p0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;->k:Z

    if-nez v6, :cond_0

    .line 5
    :try_start_0
    iget-object v6, p0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;->a:Ljava/lang/reflect/Method;

    new-array v7, v2, [Ljava/lang/Object;

    invoke-virtual {v6, v5, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v6

    .line 6
    invoke-virtual {v6}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v6

    .line 7
    invoke-virtual {v6}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :goto_1
    const/4 v6, 0x0

    .line 8
    :goto_2
    iget-boolean v7, p0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;->k:Z

    if-nez v7, :cond_0

    if-eqz v6, :cond_0

    goto :goto_3

    .line 9
    :cond_0
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getPosition()I

    move-result v6

    iget v7, p0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;->f:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;->g:I

    mul-int v6, v6, v7

    if-gez v6, :cond_1

    goto :goto_3

    :cond_1
    if-ge v6, v1, :cond_3

    move-object v4, v5

    if-nez v6, :cond_2

    goto :goto_4

    :cond_2
    move v1, v6

    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :goto_4
    if-eqz v4, :cond_5

    .line 10
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getPosition()I

    move-result p1

    iget v0, p0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;->g:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;->f:I

    .line 11
    iget-object v0, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    :cond_5
    return-object v0

    .line 12
    :cond_6
    iget v0, p0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;->f:I

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object p1

    .line 13
    iget v0, p0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;->f:I

    iget v1, p0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;->g:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;->f:I

    return-object p1
.end method
