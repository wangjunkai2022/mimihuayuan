.class public Lcom/comeback/data/ui/aimeiju/adapter/VideoAdapter$Holder;
.super Lcom/comeback/data/base/BaseViewHolder;
.source "VideoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/aimeiju/adapter/VideoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseViewHolder<",
        "Lcom/comeback/data/ui/aimeiju/bean/ListBean$DataBean$VodBean;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/comeback/data/ui/aimeiju/adapter/VideoAdapter;

.field public b:Lcom/comeback/data/ui/aimeiju/bean/ListBean$DataBean$VodBean;

.field public ivCover:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tv_tag:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tv_tag2:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tv_title:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/comeback/data/ui/aimeiju/adapter/VideoAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p2, p0, Lcom/comeback/data/ui/aimeiju/adapter/VideoAdapter$Holder;->a:Lcom/comeback/data/ui/aimeiju/adapter/VideoAdapter;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/comeback/data/ui/aimeiju/bean/ListBean$DataBean$VodBean;

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/aimeiju/adapter/VideoAdapter$Holder;->b:Lcom/comeback/data/ui/aimeiju/bean/ListBean$DataBean$VodBean;

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/aimeiju/adapter/VideoAdapter$Holder;->tv_title:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/aimeiju/bean/ListBean$DataBean$VodBean;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p0, Lcom/comeback/data/ui/aimeiju/adapter/VideoAdapter$Holder;->b:Lcom/comeback/data/ui/aimeiju/bean/ListBean$DataBean$VodBean;

    invoke-virtual {p1}, Lcom/comeback/data/ui/aimeiju/bean/ListBean$DataBean$VodBean;->getPic()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/comeback/data/ui/aimeiju/adapter/VideoAdapter$Holder;->ivCover:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lc/a/a/b/g/h;->u0(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 5
    iget-object p1, p0, Lcom/comeback/data/ui/aimeiju/adapter/VideoAdapter$Holder;->tv_tag:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/comeback/data/ui/aimeiju/adapter/VideoAdapter$Holder;->b:Lcom/comeback/data/ui/aimeiju/bean/ListBean$DataBean$VodBean;

    invoke-virtual {v0}, Lcom/comeback/data/ui/aimeiju/bean/ListBean$DataBean$VodBean;->getPf()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p1, p0, Lcom/comeback/data/ui/aimeiju/adapter/VideoAdapter$Holder;->tv_tag2:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/comeback/data/ui/aimeiju/adapter/VideoAdapter$Holder;->b:Lcom/comeback/data/ui/aimeiju/bean/ListBean$DataBean$VodBean;

    invoke-virtual {v0}, Lcom/comeback/data/ui/aimeiju/bean/ListBean$DataBean$VodBean;->getState()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
