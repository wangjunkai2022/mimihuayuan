.class public Lcom/comeback/data/ui/gdian/ImageReadActivity;
.super Lcom/comeback/data/base/BaseActivity;
.source "ImageReadActivity.java"


# instance fields
.field public b:Lcom/comeback/data/ui/commom/PicBrowseAdapter;

.field public c:Ljava/lang/String;

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

.method public static l(Lcom/comeback/data/ui/gdian/ImageReadActivity;Lcom/comeback/data/ui/gdian/bean/Image;)V
    .locals 3

    if-eqz p0, :cond_0

    .line 1
    new-instance v0, Lcom/comeback/data/ui/commom/PicBrowseAdapter;

    invoke-direct {v0, p0}, Lcom/comeback/data/ui/commom/PicBrowseAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/comeback/data/ui/gdian/ImageReadActivity;->b:Lcom/comeback/data/ui/commom/PicBrowseAdapter;

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/gdian/ImageReadActivity;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/gdian/ImageReadActivity;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lf/e/a/j/l/c;

    invoke-direct {v1, p0}, Lf/e/a/j/l/c;-><init>(Lcom/comeback/data/ui/gdian/ImageReadActivity;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 4
    iget-object v0, p0, Lcom/comeback/data/ui/gdian/ImageReadActivity;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/comeback/data/ui/gdian/ImageReadActivity;->b:Lcom/comeback/data/ui/commom/PicBrowseAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 5
    iget-object v0, p0, Lcom/comeback/data/ui/gdian/ImageReadActivity;->b:Lcom/comeback/data/ui/commom/PicBrowseAdapter;

    invoke-virtual {p1}, Lcom/comeback/data/ui/gdian/bean/Image;->getData()Lcom/comeback/data/ui/gdian/bean/Image$DataEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/comeback/data/ui/gdian/bean/Image$DataEntity;->getAtlas_img()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/comeback/data/base/BaseAbstractAdapter;->a(Ljava/util/List;)V

    .line 6
    iget-object v0, p0, Lcom/comeback/data/ui/gdian/ImageReadActivity;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/gdian/bean/Image;->getData()Lcom/comeback/data/ui/gdian/bean/Image$DataEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/comeback/data/ui/gdian/bean/Image$DataEntity;->getAtlas_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lcom/comeback/data/ui/gdian/ImageReadActivity;->tvType:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0NPYgfX41o/p"

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/comeback/data/ui/gdian/bean/Image;->getData()Lcom/comeback/data/ui/gdian/bean/Image$DataEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/comeback/data/ui/gdian/bean/Image$DataEntity;->getLabelsText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v0, p0, Lcom/comeback/data/ui/gdian/ImageReadActivity;->tvCount:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0ffTjez81o/p"

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/comeback/data/ui/gdian/bean/Image;->getData()Lcom/comeback/data/ui/gdian/bean/Image$DataEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/comeback/data/ui/gdian/bean/Image$DataEntity;->getAtlas_img()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object p0, p0, Lcom/comeback/data/ui/gdian/ImageReadActivity;->tvTime:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0fXVjfzH1o/p"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/comeback/data/ui/gdian/bean/Image;->getData()Lcom/comeback/data/ui/gdian/bean/Image$DataEntity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/comeback/data/ui/gdian/bean/Image$DataEntity;->getPush_time()I

    move-result p1

    int-to-long v1, p1

    invoke-static {v1, v2}, Lc/a/a/b/g/h;->O0(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 10
    throw p0
.end method

.method public static m(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/comeback/data/ui/gdian/ImageReadActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "UwMXBQ=="

    .line 2
    invoke-static {v1, v0, p1, p0, v0}, Lf/b/a/a/a;->v(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public c(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "UwMXBQ=="

    .line 1
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/comeback/data/ui/gdian/ImageReadActivity;->c:Ljava/lang/String;

    return-void
.end method

.method public d()I
    .locals 1

    const v0, 0x7f0c0052

    return v0
.end method

.method public e()V
    .locals 2

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/comeback/data/base/BaseActivity;->j(I)V

    .line 2
    invoke-static {}, Lf/e/a/j/l/e/e;->a()Lf/e/a/j/l/e/b;

    move-result-object v0

    iget-object v1, p0, Lcom/comeback/data/ui/gdian/ImageReadActivity;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Lf/e/a/j/l/e/b;->b(Ljava/lang/String;)Lm/e;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/comeback/data/ui/gdian/ImageReadActivity$a;

    invoke-direct {v1, p0}, Lcom/comeback/data/ui/gdian/ImageReadActivity$a;-><init>(Lcom/comeback/data/ui/gdian/ImageReadActivity;)V

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/base/BaseActivity;->k(Lm/e;Lm/j;)V

    return-void
.end method
