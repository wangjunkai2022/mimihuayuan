.class public Lf/e/a/j/l/c;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "ImageReadActivity.java"


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/gdian/ImageReadActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroidx/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    if-eqz p2, :cond_0

    const/16 p2, 0xe

    .line 2
    iput p2, p1, Landroid/graphics/Rect;->top:I

    :cond_0
    const/16 p2, 0x8

    .line 3
    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 4
    iput p2, p1, Landroid/graphics/Rect;->right:I

    return-void
.end method
