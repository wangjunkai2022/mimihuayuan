.class public Lcom/comeback/data/widget/RecycleGridDivider;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "RecycleGridDivider.java"


# instance fields
.field public a:I

.field public b:I

.field public c:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/comeback/data/widget/RecycleGridDivider;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 3
    iput p1, p0, Lcom/comeback/data/widget/RecycleGridDivider;->a:I

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/comeback/data/widget/RecycleGridDivider;->b:I

    .line 5
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/comeback/data/widget/RecycleGridDivider;->c:Landroid/graphics/Paint;

    .line 6
    iget v0, p0, Lcom/comeback/data/widget/RecycleGridDivider;->b:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 7
    iget-object p1, p0, Lcom/comeback/data/widget/RecycleGridDivider;->c:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 8
    iget-object p1, p0, Lcom/comeback/data/widget/RecycleGridDivider;->c:Landroid/graphics/Paint;

    iget v0, p0, Lcom/comeback/data/widget/RecycleGridDivider;->a:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    .line 1
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p4

    .line 2
    instance-of v0, p4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v0, :cond_0

    .line 3
    check-cast p4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {p4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getSpanCount()I

    move-result p4

    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p4, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_6

    .line 5
    check-cast p4, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p4}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p4

    .line 6
    :goto_0
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getChildCount()I

    .line 7
    iget v0, p0, Lcom/comeback/data/widget/RecycleGridDivider;->a:I

    div-int/lit8 v0, v0, 0x2

    .line 8
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    const/4 p3, 0x0

    if-ge p2, p4, :cond_3

    .line 9
    rem-int/2addr p2, p4

    if-nez p2, :cond_1

    .line 10
    invoke-virtual {p1, p3, p3, v0, p3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    :cond_1
    add-int/lit8 p4, p4, -0x1

    if-ne p2, p4, :cond_2

    .line 11
    invoke-virtual {p1, v0, p3, p3, p3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .line 12
    :cond_2
    invoke-virtual {p1, v0, p3, v0, p3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .line 13
    :cond_3
    rem-int/2addr p2, p4

    if-nez p2, :cond_4

    .line 14
    iget p2, p0, Lcom/comeback/data/widget/RecycleGridDivider;->a:I

    invoke-virtual {p1, p3, p2, v0, p3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    :cond_4
    add-int/lit8 p4, p4, -0x1

    if-ne p2, p4, :cond_5

    .line 15
    iget p2, p0, Lcom/comeback/data/widget/RecycleGridDivider;->a:I

    invoke-virtual {p1, v0, p2, p3, p3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .line 16
    :cond_5
    iget p2, p0, Lcom/comeback/data/widget/RecycleGridDivider;->a:I

    invoke-virtual {p1, v0, p2, v0, p3}, Landroid/graphics/Rect;->set(IIII)V

    :cond_6
    :goto_1
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    return-void
.end method
