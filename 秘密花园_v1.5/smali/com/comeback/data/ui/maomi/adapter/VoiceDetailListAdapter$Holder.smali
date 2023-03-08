.class public Lcom/comeback/data/ui/maomi/adapter/VoiceDetailListAdapter$Holder;
.super Lcom/comeback/data/base/BaseViewHolder;
.source "VoiceDetailListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/maomi/adapter/VoiceDetailListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseViewHolder<",
        "Lcom/comeback/data/ui/maomi/bean/VoiceDetailList$DataBeanX$DataBean;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/comeback/data/ui/maomi/adapter/VoiceDetailListAdapter;

.field public b:Lcom/comeback/data/ui/maomi/bean/VoiceDetailList$DataBeanX$DataBean;

.field public mIvImg:Lcom/comeback/data/widget/RatioImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public mTvName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public mTvPlayCount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public mTvPraiseCount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/comeback/data/ui/maomi/adapter/VoiceDetailListAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p2, p0, Lcom/comeback/data/ui/maomi/adapter/VoiceDetailListAdapter$Holder;->a:Lcom/comeback/data/ui/maomi/adapter/VoiceDetailListAdapter;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/comeback/data/ui/maomi/bean/VoiceDetailList$DataBeanX$DataBean;

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/maomi/adapter/VoiceDetailListAdapter$Holder;->b:Lcom/comeback/data/ui/maomi/bean/VoiceDetailList$DataBeanX$DataBean;

    .line 3
    invoke-virtual {p1}, Lcom/comeback/data/ui/maomi/bean/VoiceDetailList$DataBeanX$DataBean;->getImage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/comeback/data/ui/maomi/adapter/VoiceDetailListAdapter$Holder;->mIvImg:Lcom/comeback/data/widget/RatioImageView;

    invoke-static {v0, v1}, Lc/a/a/b/g/h;->z0(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 4
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/adapter/VoiceDetailListAdapter$Holder;->mTvName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/maomi/bean/VoiceDetailList$DataBeanX$DataBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/adapter/VoiceDetailListAdapter$Holder;->mTvPlayCount:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/maomi/bean/VoiceDetailList$DataBeanX$DataBean;->getPlays()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/adapter/VoiceDetailListAdapter$Holder;->mTvPraiseCount:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/maomi/bean/VoiceDetailList$DataBeanX$DataBean;->getPraises()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
