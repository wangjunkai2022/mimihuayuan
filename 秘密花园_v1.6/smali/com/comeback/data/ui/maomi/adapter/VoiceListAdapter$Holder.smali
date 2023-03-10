.class public Lcom/comeback/data/ui/maomi/adapter/VoiceListAdapter$Holder;
.super Lcom/comeback/data/base/BaseViewHolder;
.source "VoiceListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/maomi/adapter/VoiceListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseViewHolder<",
        "Lcom/comeback/data/ui/maomi/bean/VoiceList$DataBeanX$DataBean;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/comeback/data/ui/maomi/adapter/VoiceListAdapter;

.field public b:Lcom/comeback/data/ui/maomi/bean/VoiceList$DataBeanX$DataBean;

.field public mIvImg:Lcom/comeback/data/widget/RatioImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public mTvPlayCount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public mTvTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/comeback/data/ui/maomi/adapter/VoiceListAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p2, p0, Lcom/comeback/data/ui/maomi/adapter/VoiceListAdapter$Holder;->a:Lcom/comeback/data/ui/maomi/adapter/VoiceListAdapter;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/comeback/data/ui/maomi/bean/VoiceList$DataBeanX$DataBean;

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/maomi/adapter/VoiceListAdapter$Holder;->b:Lcom/comeback/data/ui/maomi/bean/VoiceList$DataBeanX$DataBean;

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/adapter/VoiceListAdapter$Holder;->mTvTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/maomi/bean/VoiceList$DataBeanX$DataBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/adapter/VoiceListAdapter$Holder;->mTvPlayCount:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/maomi/bean/VoiceList$DataBeanX$DataBean;->getBrowses()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-virtual {p1}, Lcom/comeback/data/ui/maomi/bean/VoiceList$DataBeanX$DataBean;->getThumb()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/comeback/data/ui/maomi/adapter/VoiceListAdapter$Holder;->mIvImg:Lcom/comeback/data/widget/RatioImageView;

    const/4 v1, 0x4

    invoke-static {p1, v0, v1}, Lc/a/a/b/g/h;->N0(Ljava/lang/String;Landroid/widget/ImageView;I)V

    return-void
.end method
