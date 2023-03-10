.class public Lcom/comeback/data/ui/maomi/fragment/AnchorCardFragment;
.super Lcom/comeback/data/base/BaseFragment;
.source "AnchorCardFragment.java"


# instance fields
.field public g:Lcom/comeback/data/ui/maomi/bean/AnchorList$DataBean;

.field public mIvImg:Lcom/comeback/data/widget/RatioImageView;
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
    invoke-direct {p0}, Lcom/comeback/data/base/BaseFragment;-><init>()V

    return-void
.end method

.method public static h(Lcom/comeback/data/ui/maomi/bean/AnchorList$DataBean;)Lcom/comeback/data/ui/maomi/fragment/AnchorCardFragment;
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "UwMXBQ=="

    .line 2
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3
    new-instance p0, Lcom/comeback/data/ui/maomi/fragment/AnchorCardFragment;

    invoke-direct {p0}, Lcom/comeback/data/ui/maomi/fragment/AnchorCardFragment;-><init>()V

    .line 4
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "UwMXBQ=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/comeback/data/ui/maomi/bean/AnchorList$DataBean;

    iput-object v0, p0, Lcom/comeback/data/ui/maomi/fragment/AnchorCardFragment;->g:Lcom/comeback/data/ui/maomi/bean/AnchorList$DataBean;

    :cond_0
    return-void
.end method

.method public b()I
    .locals 1

    const v0, 0x7f0c012f

    return v0
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/fragment/AnchorCardFragment;->mTvTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/comeback/data/ui/maomi/fragment/AnchorCardFragment;->g:Lcom/comeback/data/ui/maomi/bean/AnchorList$DataBean;

    invoke-virtual {v1}, Lcom/comeback/data/ui/maomi/bean/AnchorList$DataBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/fragment/AnchorCardFragment;->g:Lcom/comeback/data/ui/maomi/bean/AnchorList$DataBean;

    invoke-virtual {v0}, Lcom/comeback/data/ui/maomi/bean/AnchorList$DataBean;->getAvatar()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/comeback/data/ui/maomi/fragment/AnchorCardFragment;->mIvImg:Lcom/comeback/data/widget/RatioImageView;

    const/4 v2, 0x6

    invoke-static {v0, v1, v2}, Lc/a/a/b/g/h;->N0(Ljava/lang/String;Landroid/widget/ImageView;I)V

    return-void
.end method
