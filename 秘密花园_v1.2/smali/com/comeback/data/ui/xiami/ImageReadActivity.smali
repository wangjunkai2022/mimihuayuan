.class public Lcom/comeback/data/ui/xiami/ImageReadActivity;
.super Lcom/comeback/data/base/BaseActivity;
.source "ImageReadActivity.java"


# instance fields
.field public b:Lcom/comeback/data/ui/xiami/adapter/PicAdapter;

.field public c:Lcom/comeback/data/ui/xiami/bean/ImageList$DataBean;

.field public rvList:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvCount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvTime:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvType:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseActivity;-><init>()V

    return-void
.end method

.method public static l(Lcom/comeback/data/ui/xiami/ImageReadActivity;Lcom/comeback/data/ui/xiami/bean/ImageDetail;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 1
    new-instance v0, Lcom/comeback/data/ui/xiami/adapter/PicAdapter;

    invoke-direct {v0, p0}, Lcom/comeback/data/ui/xiami/adapter/PicAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/comeback/data/ui/xiami/ImageReadActivity;->b:Lcom/comeback/data/ui/xiami/adapter/PicAdapter;

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/xiami/ImageReadActivity;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/xiami/ImageReadActivity;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lf/e/a/j/q0/e;

    invoke-direct {v1, p0}, Lf/e/a/j/q0/e;-><init>(Lcom/comeback/data/ui/xiami/ImageReadActivity;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 4
    iget-object v0, p0, Lcom/comeback/data/ui/xiami/ImageReadActivity;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/comeback/data/ui/xiami/ImageReadActivity;->b:Lcom/comeback/data/ui/xiami/adapter/PicAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 5
    iget-object p0, p0, Lcom/comeback/data/ui/xiami/ImageReadActivity;->b:Lcom/comeback/data/ui/xiami/adapter/PicAdapter;

    invoke-virtual {p1}, Lcom/comeback/data/ui/xiami/bean/ImageDetail;->getData()Lcom/comeback/data/ui/xiami/bean/ImageDetail$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/comeback/data/ui/xiami/bean/ImageDetail$DataBean;->getGroup()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/comeback/data/base/BaseAbstractAdapter;->a(Ljava/util/List;)V

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 6
    throw p0
.end method

.method public static m(Landroid/content/Context;Lcom/comeback/data/ui/xiami/bean/ImageList$DataBean;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/comeback/data/ui/xiami/ImageReadActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "UwMXBQ=="

    .line 2
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public c(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "UwMXBQ=="

    .line 1
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/comeback/data/ui/xiami/bean/ImageList$DataBean;

    iput-object p1, p0, Lcom/comeback/data/ui/xiami/ImageReadActivity;->c:Lcom/comeback/data/ui/xiami/bean/ImageList$DataBean;

    return-void
.end method

.method public d()I
    .locals 1

    const v0, 0x7f0c00cd

    return v0
.end method

.method public e()V
    .locals 4

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/comeback/data/base/BaseActivity;->j(I)V

    .line 2
    invoke-static {}, Lf/e/a/j/q0/f/d;->a()Lf/e/a/j/q0/f/b;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "UAMPCA4BQHoX"

    .line 4
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/comeback/data/ui/xiami/ImageReadActivity;->c:Lcom/comeback/data/ui/xiami/bean/ImageList$DataBean;

    invoke-virtual {v3}, Lcom/comeback/data/ui/xiami/bean/ImageList$DataBean;->getGalleryId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "VAoCCgUWVQ=="

    .line 5
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "QAcBOwQVX1oQD1UL"

    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-interface {v0, v1}, Lf/e/a/j/q0/f/b;->i(Ljava/util/Map;)Lm/e;

    move-result-object v0

    .line 7
    new-instance v1, Lcom/comeback/data/ui/xiami/ImageReadActivity$a;

    invoke-direct {v1, p0}, Lcom/comeback/data/ui/xiami/ImageReadActivity$a;-><init>(Lcom/comeback/data/ui/xiami/ImageReadActivity;)V

    .line 8
    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/base/BaseActivity;->k(Lm/e;Lm/j;)V

    .line 9
    iget-object v0, p0, Lcom/comeback/data/ui/xiami/ImageReadActivity;->tvTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/comeback/data/ui/xiami/ImageReadActivity;->c:Lcom/comeback/data/ui/xiami/bean/ImageList$DataBean;

    invoke-virtual {v1}, Lcom/comeback/data/ui/xiami/bean/ImageList$DataBean;->getGalleryTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v0, p0, Lcom/comeback/data/ui/xiami/ImageReadActivity;->tvType:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0NPYgfX41o/p"

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/comeback/data/ui/xiami/ImageReadActivity;->c:Lcom/comeback/data/ui/xiami/bean/ImageList$DataBean;

    invoke-virtual {v2}, Lcom/comeback/data/ui/xiami/bean/ImageList$DataBean;->getCategoryTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v0, p0, Lcom/comeback/data/ui/xiami/ImageReadActivity;->tvCount:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0ffTjez81o/p"

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/comeback/data/ui/xiami/ImageReadActivity;->c:Lcom/comeback/data/ui/xiami/bean/ImageList$DataBean;

    invoke-virtual {v2}, Lcom/comeback/data/ui/xiami/bean/ImageList$DataBean;->getGalleryCounts()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v0, p0, Lcom/comeback/data/ui/xiami/ImageReadActivity;->tvTime:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0fXVjfzH1o/p"

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/comeback/data/ui/xiami/ImageReadActivity;->c:Lcom/comeback/data/ui/xiami/bean/ImageList$DataBean;

    invoke-virtual {v2}, Lcom/comeback/data/ui/xiami/bean/ImageList$DataBean;->getAddTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Lc/a/a/b/g/h;->O0(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
