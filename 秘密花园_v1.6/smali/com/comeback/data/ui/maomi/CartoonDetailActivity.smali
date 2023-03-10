.class public Lcom/comeback/data/ui/maomi/CartoonDetailActivity;
.super Lcom/comeback/data/base/BaseRefreshActivity;
.source "CartoonDetailActivity.java"


# instance fields
.field public d:Lcom/comeback/data/ui/maomi/bean/Cartoon$DataBeanX$DataBean;

.field public mIvBg:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public mTvDetail:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public mTvTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseRefreshActivity;-><init>()V

    return-void
.end method

.method public static synthetic r(Lcom/comeback/data/ui/maomi/CartoonDetailActivity;)Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/base/BaseRefreshActivity;->c:Lcom/comeback/data/base/BaseAbstractAdapter;

    return-object p0
.end method

.method public static synthetic s(Lcom/comeback/data/ui/maomi/CartoonDetailActivity;)Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/base/BaseRefreshActivity;->c:Lcom/comeback/data/base/BaseAbstractAdapter;

    return-object p0
.end method

.method public static t(Landroid/content/Context;Lcom/comeback/data/ui/maomi/bean/Cartoon$DataBeanX$DataBean;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/comeback/data/ui/maomi/CartoonDetailActivity;

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

    check-cast p1, Lcom/comeback/data/ui/maomi/bean/Cartoon$DataBeanX$DataBean;

    iput-object p1, p0, Lcom/comeback/data/ui/maomi/CartoonDetailActivity;->d:Lcom/comeback/data/ui/maomi/bean/Cartoon$DataBeanX$DataBean;

    return-void
.end method

.method public d()I
    .locals 1

    const v0, 0x7f0c009c

    return v0
.end method

.method public e()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/comeback/data/base/BaseRefreshActivity;->e()V

    .line 2
    invoke-virtual {p0}, Lcom/comeback/data/base/BaseActivity;->i()V

    const/4 v0, 0x1

    .line 3
    invoke-static {p0, v0}, Lcom/comeback/data/base/BaseActivity;->f(Landroid/app/Activity;Z)V

    .line 4
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/CartoonDetailActivity;->mTvTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/comeback/data/ui/maomi/CartoonDetailActivity;->d:Lcom/comeback/data/ui/maomi/bean/Cartoon$DataBeanX$DataBean;

    invoke-virtual {v1}, Lcom/comeback/data/ui/maomi/bean/Cartoon$DataBeanX$DataBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/CartoonDetailActivity;->mTvDetail:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/comeback/data/ui/maomi/CartoonDetailActivity;->d:Lcom/comeback/data/ui/maomi/bean/Cartoon$DataBeanX$DataBean;

    invoke-virtual {v1}, Lcom/comeback/data/ui/maomi/bean/Cartoon$DataBeanX$DataBean;->getDescriptions()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/CartoonDetailActivity;->mTvDetail:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/comeback/data/ui/maomi/CartoonDetailActivity;->d:Lcom/comeback/data/ui/maomi/bean/Cartoon$DataBeanX$DataBean;

    invoke-virtual {v1}, Lcom/comeback/data/ui/maomi/bean/Cartoon$DataBeanX$DataBean;->getDescriptions()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/CartoonDetailActivity;->d:Lcom/comeback/data/ui/maomi/bean/Cartoon$DataBeanX$DataBean;

    invoke-virtual {v0}, Lcom/comeback/data/ui/maomi/bean/Cartoon$DataBeanX$DataBean;->getThumb()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/comeback/data/ui/maomi/CartoonDetailActivity;->mIvBg:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lc/a/a/b/g/h;->u0(Ljava/lang/String;Landroid/widget/ImageView;)V

    return-void
.end method

.method public l()Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 1

    .line 1
    new-instance v0, Lcom/comeback/data/ui/maomi/adapter/CartoonDetailListAdapter;

    invoke-direct {v0, p0}, Lcom/comeback/data/ui/maomi/adapter/CartoonDetailListAdapter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public p(I)V
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "RwMEAQ=="

    .line 2
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "RA0REA=="

    .line 3
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "XgY="

    .line 4
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/comeback/data/ui/maomi/CartoonDetailActivity;->d:Lcom/comeback/data/ui/maomi/bean/Cartoon$DataBeanX$DataBean;

    invoke-virtual {v2}, Lcom/comeback/data/ui/maomi/bean/Cartoon$DataBeanX$DataBean;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 5
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 6
    :goto_0
    invoke-static {}, Lf/e/a/j/d0/m/d;->a()Lf/e/a/j/d0/m/a;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lf/e/a/j/d0/m/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lf/e/a/j/d0/m/a;->b(Ljava/lang/String;)Lm/e;

    move-result-object v0

    .line 7
    new-instance v1, Lcom/comeback/data/ui/maomi/CartoonDetailActivity$a;

    invoke-direct {v1, p0, p1}, Lcom/comeback/data/ui/maomi/CartoonDetailActivity$a;-><init>(Lcom/comeback/data/ui/maomi/CartoonDetailActivity;I)V

    .line 8
    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/base/BaseActivity;->k(Lm/e;Lm/j;)V

    return-void
.end method
