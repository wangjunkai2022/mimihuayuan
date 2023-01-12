.class public Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$a;
.super Ljava/lang/Object;
.source "ExposeLinearLayoutManagerEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:Z

.field public final synthetic d:Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$a;->d:Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$a;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$a;->d:Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;

    .line 2
    invoke-static {v0}, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;->access$000(Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;)Lf/a/a/a/i;

    move-result-object v0

    invoke-virtual {v0}, Lf/a/a/a/i;->g()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$a;->d:Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;

    .line 3
    invoke-static {v0}, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;->access$000(Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;)Lf/a/a/a/i;

    move-result-object v0

    invoke-virtual {v0}, Lf/a/a/a/i;->i()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$a;->b:I

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$a;->c:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$a;->d:Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;

    invoke-static {v0}, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;->access$000(Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;)Lf/a/a/a/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lf/a/a/a/i;->b(Landroid/view/View;)I

    move-result v0

    iget-object v2, p0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$a;->d:Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;

    iget-boolean v3, p0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$a;->c:Z

    invoke-virtual {v2, p1, v3, v1}, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;->computeAlignOffset(Landroid/view/View;ZZ)I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$a;->d:Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;

    .line 3
    invoke-static {v0}, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;->access$000(Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;)Lf/a/a/a/i;

    move-result-object v0

    .line 4
    iget v2, v0, Lf/a/a/a/i;->b:I

    const/high16 v3, -0x80000000

    if-ne v3, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lf/a/a/a/i;->j()I

    move-result v2

    iget v0, v0, Lf/a/a/a/i;->b:I

    sub-int v0, v2, v0

    :goto_0
    add-int/2addr v1, v0

    .line 5
    iput v1, p0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$a;->b:I

    goto :goto_1

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$a;->d:Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;

    invoke-static {v0}, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;->access$000(Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;)Lf/a/a/a/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lf/a/a/a/i;->e(Landroid/view/View;)I

    move-result v0

    iget-object v2, p0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$a;->d:Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;

    iget-boolean v3, p0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$a;->c:Z

    invoke-virtual {v2, p1, v3, v1}, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;->computeAlignOffset(Landroid/view/View;ZZ)I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$a;->b:I

    .line 7
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$a;->d:Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p1

    iput p1, p0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$a;->a:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "AnchorInfo{mPosition="

    .line 1
    invoke-static {v0}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCoordinate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mLayoutFromEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$a;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
