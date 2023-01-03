.class public Lcom/comeback/data/ui/hgl/adapter/HotListAdapter$Holder;
.super Lcom/comeback/data/base/BaseViewHolder;
.source "HotListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/hgl/adapter/HotListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseViewHolder<",
        "Lcom/comeback/data/ui/hgl/bean/ListBean$DataBean$InfoBean$ListBeanS;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/comeback/data/ui/hgl/bean/ListBean$DataBean$InfoBean$ListBeanS;

.field public b:Lcom/comeback/data/ui/hgl/adapter/HotListAdapter;

.field public ivHead:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public ivImg:Lcom/comeback/data/widget/RatioImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvPlayCount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/comeback/data/ui/hgl/adapter/HotListAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p2, p0, Lcom/comeback/data/ui/hgl/adapter/HotListAdapter$Holder;->b:Lcom/comeback/data/ui/hgl/adapter/HotListAdapter;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/comeback/data/ui/hgl/bean/ListBean$DataBean$InfoBean$ListBeanS;

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/hgl/adapter/HotListAdapter$Holder;->a:Lcom/comeback/data/ui/hgl/bean/ListBean$DataBean$InfoBean$ListBeanS;

    .line 3
    invoke-virtual {p1}, Lcom/comeback/data/ui/hgl/bean/ListBean$DataBean$InfoBean$ListBeanS;->getThumb()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/comeback/data/ui/hgl/adapter/HotListAdapter$Holder;->ivImg:Lcom/comeback/data/widget/RatioImageView;

    invoke-static {v0, v1}, Lc/a/a/b/g/h;->u0(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 4
    invoke-virtual {p1}, Lcom/comeback/data/ui/hgl/bean/ListBean$DataBean$InfoBean$ListBeanS;->getAvatar_thumb()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/comeback/data/ui/hgl/adapter/HotListAdapter$Holder;->ivHead:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lc/a/a/b/g/h;->u0(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 5
    iget-object v0, p0, Lcom/comeback/data/ui/hgl/adapter/HotListAdapter$Holder;->tvName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/hgl/bean/ListBean$DataBean$InfoBean$ListBeanS;->getUser_nicename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcom/comeback/data/ui/hgl/adapter/HotListAdapter$Holder;->tvPlayCount:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/hgl/bean/ListBean$DataBean$InfoBean$ListBeanS;->getNums()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
