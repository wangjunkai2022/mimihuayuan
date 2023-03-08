.class public Lchuangyuan/ycj/videolibrary/widget/BelowView;
.super Ljava/lang/Object;
.source "BelowView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lchuangyuan/ycj/videolibrary/widget/BelowView$OnItemClickListener;
    }
.end annotation


# instance fields
.field public adapter:Lchuangyuan/ycj/videolibrary/widget/SwitchAdapter;

.field public convertView:Landroid/view/View;

.field public listView:Landroid/widget/ListView;

.field public onItemClickListener:Lchuangyuan/ycj/videolibrary/widget/BelowView$OnItemClickListener;

.field public pw:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Lchuangyuan/ycj/videolibrary/R$layout;->simple_exo_belowview:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/BelowView;->convertView:Landroid/view/View;

    .line 3
    sget v1, Lchuangyuan/ycj/videolibrary/R$id;->list_item:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/BelowView;->listView:Landroid/widget/ListView;

    if-nez p2, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lchuangyuan/ycj/videolibrary/R$array;->exo_video_switch_text:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 5
    :cond_0
    new-instance v0, Lchuangyuan/ycj/videolibrary/widget/SwitchAdapter;

    invoke-direct {v0, p1, p2}, Lchuangyuan/ycj/videolibrary/widget/SwitchAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/BelowView;->adapter:Lchuangyuan/ycj/videolibrary/widget/SwitchAdapter;

    .line 6
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/BelowView;->listView:Landroid/widget/ListView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2}, Landroid/widget/ListView;->measure(II)V

    .line 7
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/BelowView;->listView:Landroid/widget/ListView;

    iget-object p2, p0, Lchuangyuan/ycj/videolibrary/widget/BelowView;->adapter:Lchuangyuan/ycj/videolibrary/widget/SwitchAdapter;

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public static synthetic access$000(Lchuangyuan/ycj/videolibrary/widget/BelowView;)Lchuangyuan/ycj/videolibrary/widget/BelowView$OnItemClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lchuangyuan/ycj/videolibrary/widget/BelowView;->onItemClickListener:Lchuangyuan/ycj/videolibrary/widget/BelowView$OnItemClickListener;

    return-object p0
.end method

.method public static synthetic access$100(Lchuangyuan/ycj/videolibrary/widget/BelowView;)Lchuangyuan/ycj/videolibrary/widget/SwitchAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lchuangyuan/ycj/videolibrary/widget/BelowView;->adapter:Lchuangyuan/ycj/videolibrary/widget/SwitchAdapter;

    return-object p0
.end method


# virtual methods
.method public dismissBelowView()V
    .locals 1

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/BelowView;->pw:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/BelowView;->pw:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public setOnItemClickListener(Lchuangyuan/ycj/videolibrary/widget/BelowView$OnItemClickListener;)V
    .locals 0
    .param p1    # Lchuangyuan/ycj/videolibrary/widget/BelowView$OnItemClickListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/BelowView;->onItemClickListener:Lchuangyuan/ycj/videolibrary/widget/BelowView$OnItemClickListener;

    return-void
.end method

.method public showBelowView(Landroid/view/View;ZI)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/BelowView;->pw:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lchuangyuan/ycj/videolibrary/R$dimen;->dp30:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iget-object v2, p0, Lchuangyuan/ycj/videolibrary/widget/BelowView;->adapter:Lchuangyuan/ycj/videolibrary/widget/SwitchAdapter;

    invoke-virtual {v2}, Lchuangyuan/ycj/videolibrary/widget/SwitchAdapter;->getCount()I

    move-result v2

    int-to-float v2, v2

    mul-float v0, v0, v2

    float-to-int v0, v0

    .line 3
    iget-object v2, p0, Lchuangyuan/ycj/videolibrary/widget/BelowView;->adapter:Lchuangyuan/ycj/videolibrary/widget/SwitchAdapter;

    invoke-virtual {v2, p3}, Lchuangyuan/ycj/videolibrary/widget/SwitchAdapter;->setSelectIndex(I)V

    .line 4
    new-instance p3, Landroid/widget/PopupWindow;

    iget-object v2, p0, Lchuangyuan/ycj/videolibrary/widget/BelowView;->convertView:Landroid/view/View;

    const/4 v3, -0x2

    invoke-direct {p3, v2, v3, v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object p3, p0, Lchuangyuan/ycj/videolibrary/widget/BelowView;->pw:Landroid/widget/PopupWindow;

    .line 5
    invoke-virtual {p3, p2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 6
    iget-object p2, p0, Lchuangyuan/ycj/videolibrary/widget/BelowView;->pw:Landroid/widget/PopupWindow;

    new-instance p3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p3, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p2, p3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7
    iget-object p2, p0, Lchuangyuan/ycj/videolibrary/widget/BelowView;->onItemClickListener:Lchuangyuan/ycj/videolibrary/widget/BelowView$OnItemClickListener;

    if-eqz p2, :cond_0

    .line 8
    iget-object p2, p0, Lchuangyuan/ycj/videolibrary/widget/BelowView;->listView:Landroid/widget/ListView;

    new-instance p3, Lchuangyuan/ycj/videolibrary/widget/BelowView$1;

    invoke-direct {p3, p0}, Lchuangyuan/ycj/videolibrary/widget/BelowView$1;-><init>(Lchuangyuan/ycj/videolibrary/widget/BelowView;)V

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 9
    :cond_0
    iget-object p2, p0, Lchuangyuan/ycj/videolibrary/widget/BelowView;->pw:Landroid/widget/PopupWindow;

    invoke-virtual {p2, v1}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    const/4 p2, 0x2

    new-array p2, p2, [I

    .line 10
    invoke-virtual {p1, p2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 11
    iget-object p3, p0, Lchuangyuan/ycj/videolibrary/widget/BelowView;->pw:Landroid/widget/PopupWindow;

    aget v0, p2, v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x6

    sub-int/2addr v0, v2

    const/4 v2, 0x1

    aget p2, p2, v2

    iget-object v2, p0, Lchuangyuan/ycj/videolibrary/widget/BelowView;->pw:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v2

    sub-int/2addr p2, v2

    invoke-virtual {p3, p1, v1, v0, p2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method
