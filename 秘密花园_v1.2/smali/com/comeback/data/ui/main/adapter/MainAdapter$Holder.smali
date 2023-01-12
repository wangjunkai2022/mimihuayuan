.class public Lcom/comeback/data/ui/main/adapter/MainAdapter$Holder;
.super Lcom/comeback/data/base/BaseViewHolder;
.source "MainAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/main/adapter/MainAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseViewHolder<",
        "Lcom/comeback/data/ui/main/bean/HomeBean;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/comeback/data/ui/main/bean/HomeBean;

.field public b:Lcom/comeback/data/ui/main/adapter/MainAdapter;

.field public ivHead:Lcom/comeback/data/widget/RatioImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/comeback/data/ui/main/adapter/MainAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p2, p0, Lcom/comeback/data/ui/main/adapter/MainAdapter$Holder;->b:Lcom/comeback/data/ui/main/adapter/MainAdapter;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/comeback/data/ui/main/bean/HomeBean;

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/main/adapter/MainAdapter$Holder;->a:Lcom/comeback/data/ui/main/bean/HomeBean;

    .line 3
    invoke-virtual {p1}, Lcom/comeback/data/ui/main/bean/HomeBean;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/comeback/data/ui/main/bean/HomeBean;->getTask()Lcom/comeback/data/ui/main/bean/InstallTask;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/comeback/data/ui/main/adapter/MainAdapter$Holder;->ivHead:Lcom/comeback/data/widget/RatioImageView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/main/bean/HomeBean;->getRes()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Lf/e/a/i/c/d;

    invoke-direct {v0}, Lf/e/a/i/c/d;-><init>()V

    .line 7
    invoke-static {v0}, Lf/d/a/s/e;->B(Lf/d/a/o/l;)Lf/d/a/s/e;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/comeback/data/ui/main/adapter/MainAdapter$Holder;->b:Lcom/comeback/data/ui/main/adapter/MainAdapter;

    iget-object v1, v1, Lcom/comeback/data/base/BaseAbstractAdapter;->a:Landroid/content/Context;

    invoke-static {v1}, Lf/d/a/c;->d(Landroid/content/Context;)Lf/d/a/j;

    move-result-object v1

    .line 9
    invoke-virtual {p1}, Lcom/comeback/data/ui/main/bean/HomeBean;->getRes()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lf/d/a/j;->n(Ljava/lang/Integer;)Lf/d/a/i;

    move-result-object v1

    .line 10
    invoke-virtual {v1, v0}, Lf/d/a/i;->C(Lf/d/a/s/a;)Lf/d/a/i;

    move-result-object v0

    iget-object v1, p0, Lcom/comeback/data/ui/main/adapter/MainAdapter$Holder;->ivHead:Lcom/comeback/data/widget/RatioImageView;

    .line 11
    invoke-virtual {v0, v1}, Lf/d/a/i;->G(Landroid/widget/ImageView;)Lf/d/a/s/h/i;

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p1}, Lcom/comeback/data/ui/main/bean/HomeBean;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/comeback/data/ui/main/adapter/MainAdapter$Holder;->ivHead:Lcom/comeback/data/widget/RatioImageView;

    invoke-static {v0, v1}, Lc/a/a/b/g/h;->u0(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 13
    :goto_0
    iget-object v0, p0, Lcom/comeback/data/ui/main/adapter/MainAdapter$Holder;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/main/bean/HomeBean;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
