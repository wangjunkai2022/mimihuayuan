.class public Lcom/comeback/data/ui/fruitPie/fragment/H5Fragment;
.super Lcom/comeback/data/base/BaseFragment;
.source "H5Fragment.java"


# instance fields
.field public flPlay:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public g:I

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public ivCover:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public ivHead:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public j:Z

.field public k:Z

.field public l:I

.field public m:Ljava/lang/String;

.field public tvAuthor:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvDate:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public webView1:Lcom/tencent/smtt/sdk/WebView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public webView2:Lcom/tencent/smtt/sdk/WebView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseFragment;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/comeback/data/ui/fruitPie/fragment/H5Fragment;->l:I

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/comeback/data/ui/fruitPie/fragment/H5Fragment;->m:Ljava/lang/String;

    return-void
.end method

.method public static h(Lcom/comeback/data/ui/fruitPie/fragment/H5Fragment;Lcom/comeback/data/ui/fruitPie/bean/IdDetail;)V
    .locals 11

    if-eqz p0, :cond_6

    .line 1
    invoke-virtual {p1}, Lcom/comeback/data/ui/fruitPie/bean/IdDetail;->getData()Lcom/comeback/data/ui/fruitPie/bean/IdDetail$DataEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/comeback/data/ui/fruitPie/bean/IdDetail$DataEntity;->getFilm_id()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/comeback/data/ui/fruitPie/fragment/NativePlayFragment;->h:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/fruitPie/fragment/H5Fragment;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/fruitPie/bean/IdDetail;->getData()Lcom/comeback/data/ui/fruitPie/bean/IdDetail$DataEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/comeback/data/ui/fruitPie/bean/IdDetail$DataEntity;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p1}, Lcom/comeback/data/ui/fruitPie/bean/IdDetail;->getData()Lcom/comeback/data/ui/fruitPie/bean/IdDetail$DataEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/comeback/data/ui/fruitPie/bean/IdDetail$DataEntity;->getColumnist()Ljava/util/List;

    move-result-object v0

    const-string v1, "0f78"

    const-string v2, "F4XPyA=="

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_0

    .line 5
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/comeback/data/ui/fruitPie/bean/Columnist;

    .line 6
    iput-boolean v3, p0, Lcom/comeback/data/ui/fruitPie/fragment/H5Fragment;->k:Z

    .line 7
    invoke-virtual {v0}, Lcom/comeback/data/ui/fruitPie/bean/Columnist;->getColumnist_id()I

    move-result v4

    iput v4, p0, Lcom/comeback/data/ui/fruitPie/fragment/H5Fragment;->l:I

    .line 8
    invoke-virtual {v0}, Lcom/comeback/data/ui/fruitPie/bean/Columnist;->getColumnist_name()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/comeback/data/ui/fruitPie/fragment/H5Fragment;->m:Ljava/lang/String;

    .line 9
    invoke-virtual {v0}, Lcom/comeback/data/ui/fruitPie/bean/Columnist;->getColumnist_img()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/comeback/data/ui/fruitPie/fragment/H5Fragment;->ivHead:Landroid/widget/ImageView;

    invoke-static {v4, v5}, Lc/a/a/b/g/h;->z0(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 10
    iget-object v4, p0, Lcom/comeback/data/ui/fruitPie/fragment/H5Fragment;->tvAuthor:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/comeback/data/ui/fruitPie/bean/Columnist;->getColumnist_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v0, p0, Lcom/comeback/data/ui/fruitPie/fragment/H5Fragment;->tvDate:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/comeback/data/ui/fruitPie/bean/IdDetail;->getData()Lcom/comeback/data/ui/fruitPie/bean/IdDetail$DataEntity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/comeback/data/ui/fruitPie/bean/IdDetail$DataEntity;->getShow_time()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/comeback/data/ui/fruitPie/bean/IdDetail;->getData()Lcom/comeback/data/ui/fruitPie/bean/IdDetail$DataEntity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/comeback/data/ui/fruitPie/bean/IdDetail$DataEntity;->getDate_number()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    :cond_0
    invoke-virtual {p1}, Lcom/comeback/data/ui/fruitPie/bean/IdDetail;->getData()Lcom/comeback/data/ui/fruitPie/bean/IdDetail$DataEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/comeback/data/ui/fruitPie/bean/IdDetail$DataEntity;->getAnchors()Ljava/util/List;

    move-result-object v0

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    .line 13
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_1

    .line 14
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/comeback/data/ui/fruitPie/bean/AuthorBean;

    .line 15
    iput-boolean v4, p0, Lcom/comeback/data/ui/fruitPie/fragment/H5Fragment;->k:Z

    .line 16
    invoke-virtual {v0}, Lcom/comeback/data/ui/fruitPie/bean/AuthorBean;->getAnchors_id()I

    move-result v5

    iput v5, p0, Lcom/comeback/data/ui/fruitPie/fragment/H5Fragment;->l:I

    .line 17
    invoke-virtual {v0}, Lcom/comeback/data/ui/fruitPie/bean/AuthorBean;->getAnchors_name()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/comeback/data/ui/fruitPie/fragment/H5Fragment;->m:Ljava/lang/String;

    .line 18
    invoke-virtual {v0}, Lcom/comeback/data/ui/fruitPie/bean/AuthorBean;->getAnchors_img()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/comeback/data/ui/fruitPie/fragment/H5Fragment;->ivHead:Landroid/widget/ImageView;

    invoke-static {v5, v6}, Lc/a/a/b/g/h;->z0(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 19
    iget-object v5, p0, Lcom/comeback/data/ui/fruitPie/fragment/H5Fragment;->tvAuthor:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/comeback/data/ui/fruitPie/bean/AuthorBean;->getAnchors_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    iget-object v0, p0, Lcom/comeback/data/ui/fruitPie/fragment/H5Fragment;->tvDate:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/comeback/data/ui/fruitPie/bean/IdDetail;->getData()Lcom/comeback/data/ui/fruitPie/bean/IdDetail$DataEntity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/comeback/data/ui/fruitPie/bean/IdDetail$DataEntity;->getShow_time()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/comeback/data/ui/fruitPie/bean/IdDetail;->getData()Lcom/comeback/data/ui/fruitPie/bean/IdDetail$DataEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/comeback/data/ui/fruitPie/bean/IdDetail$DataEntity;->getDate_number()I

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    :cond_1
    invoke-virtual {p1}, Lcom/comeback/data/ui/fruitPie/bean/IdDetail;->getData()Lcom/comeback/data/ui/fruitPie/bean/IdDetail$DataEntity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/comeback/data/ui/fruitPie/bean/IdDetail$DataEntity;->getDetail()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 22
    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 23
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/comeback/data/ui/fruitPie/bean/IdDetail$DataEntity$DetailEntity;

    .line 24
    invoke-virtual {v0}, Lcom/comeback/data/ui/fruitPie/bean/IdDetail$DataEntity$DetailEntity;->getType()I

    move-result v1

    if-ne v1, v4, :cond_4

    invoke-virtual {v0}, Lcom/comeback/data/ui/fruitPie/bean/IdDetail$DataEntity$DetailEntity;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 25
    invoke-virtual {v0}, Lcom/comeback/data/ui/fruitPie/bean/IdDetail$DataEntity$DetailEntity;->getContent()Ljava/lang/String;

    move-result-object v7

    .line 26
    iget-boolean v0, p0, Lcom/comeback/data/ui/fruitPie/fragment/H5Fragment;->j:Z

    const-string v1, "QhYFSVM="

    const-string v2, "QwcbEEQbTV4f"

    if-nez v0, :cond_3

    .line 27
    iput-boolean v4, p0, Lcom/comeback/data/ui/fruitPie/fragment/H5Fragment;->j:Z

    .line 28
    iget-object v5, p0, Lcom/comeback/data/ui/fruitPie/fragment/H5Fragment;->webView1:Lcom/tencent/smtt/sdk/WebView;

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v6, ""

    const-string v10, ""

    invoke-virtual/range {v5 .. v10}, Lcom/tencent/smtt/sdk/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 29
    :cond_3
    iget-object v5, p0, Lcom/comeback/data/ui/fruitPie/fragment/H5Fragment;->webView2:Lcom/tencent/smtt/sdk/WebView;

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v6, ""

    const-string v10, ""

    invoke-virtual/range {v5 .. v10}, Lcom/tencent/smtt/sdk/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 30
    :cond_4
    invoke-virtual {v0}, Lcom/comeback/data/ui/fruitPie/bean/IdDetail$DataEntity$DetailEntity;->getType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    invoke-virtual {v0}, Lcom/comeback/data/ui/fruitPie/bean/IdDetail$DataEntity$DetailEntity;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 31
    iget-object v1, p0, Lcom/comeback/data/ui/fruitPie/fragment/H5Fragment;->flPlay:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 32
    invoke-virtual {v0}, Lcom/comeback/data/ui/fruitPie/bean/IdDetail$DataEntity$DetailEntity;->getImg_url()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/comeback/data/ui/fruitPie/fragment/H5Fragment;->ivCover:Landroid/widget/ImageView;

    invoke-static {v1, v2}, Lc/a/a/b/g/h;->u0(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 33
    invoke-virtual {v0}, Lcom/comeback/data/ui/fruitPie/bean/IdDetail$DataEntity$DetailEntity;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/fruitPie/fragment/H5Fragment;->i:Ljava/lang/String;

    goto :goto_0

    :cond_5
    return-void

    :cond_6
    const/4 p0, 0x0

    .line 34
    throw p0
.end method

.method public static i(ILjava/lang/String;)Lcom/comeback/data/ui/fruitPie/fragment/H5Fragment;
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "XgY="

    .line 2
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "QxsTAQ=="

    .line 3
    invoke-static {p0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance p0, Lcom/comeback/data/ui/fruitPie/fragment/H5Fragment;

    invoke-direct {p0}, Lcom/comeback/data/ui/fruitPie/fragment/H5Fragment;-><init>()V

    .line 5
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "XgY="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/comeback/data/ui/fruitPie/fragment/H5Fragment;->g:I

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "QxsTAQ=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Bg=="

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/fruitPie/fragment/H5Fragment;->h:Ljava/lang/String;

    return-void
.end method

.method public b()I
    .locals 1

    const v0, 0x7f0c0136

    return v0
.end method

.method public e()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "WwsBFgoBQGwaAg=="

    .line 2
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/comeback/data/ui/fruitPie/fragment/H5Fragment;->g:I

    const-string v3, "WxYaFA4="

    invoke-static {v2, v0, v1, v3}, Lf/b/a/a/a;->G(ILjava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/comeback/data/ui/fruitPie/fragment/H5Fragment;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "QhEGFj8cUlYd"

    .line 4
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Xw8="

    .line 5
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "B1JbSQoDUA=="

    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "UwcVDQgWZloX"

    .line 6
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {}, Lf/e/a/j/k/b/b;->a()Lf/e/a/j/k/b/a;

    move-result-object v1

    invoke-interface {v1, v0}, Lf/e/a/j/k/b/a;->c(Ljava/util/HashMap;)Lm/e;

    move-result-object v0

    .line 8
    new-instance v1, Lcom/comeback/data/ui/fruitPie/fragment/H5Fragment$a;

    invoke-direct {v1, p0}, Lcom/comeback/data/ui/fruitPie/fragment/H5Fragment$a;-><init>(Lcom/comeback/data/ui/fruitPie/fragment/H5Fragment;)V

    .line 9
    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/base/BaseFragment;->g(Lm/e;Lm/j;)V

    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method
