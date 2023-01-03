.class public Lcom/comeback/data/ui/maomi/VoiceAnchorDetailActivity;
.super Lcom/comeback/data/base/BaseViewPagerActivity;
.source "VoiceAnchorDetailActivity.java"


# instance fields
.field public b:Lcom/comeback/data/ui/maomi/bean/AnchorList$DataBean;

.field public mIvHeader:Landroid/widget/ImageView;
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
    invoke-direct {p0}, Lcom/comeback/data/base/BaseViewPagerActivity;-><init>()V

    return-void
.end method

.method public static n(Landroid/content/Context;Lcom/comeback/data/ui/maomi/bean/AnchorList$DataBean;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/comeback/data/ui/maomi/VoiceAnchorDetailActivity;

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

    check-cast p1, Lcom/comeback/data/ui/maomi/bean/AnchorList$DataBean;

    iput-object p1, p0, Lcom/comeback/data/ui/maomi/VoiceAnchorDetailActivity;->b:Lcom/comeback/data/ui/maomi/bean/AnchorList$DataBean;

    return-void
.end method

.method public d()I
    .locals 1

    const v0, 0x7f0c00a2

    return v0
.end method

.method public e()V
    .locals 2

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/comeback/data/base/BaseActivity;->j(I)V

    .line 2
    invoke-super {p0}, Lcom/comeback/data/base/BaseViewPagerActivity;->e()V

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/VoiceAnchorDetailActivity;->mTvTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/comeback/data/ui/maomi/VoiceAnchorDetailActivity;->b:Lcom/comeback/data/ui/maomi/bean/AnchorList$DataBean;

    invoke-virtual {v1}, Lcom/comeback/data/ui/maomi/bean/AnchorList$DataBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/VoiceAnchorDetailActivity;->b:Lcom/comeback/data/ui/maomi/bean/AnchorList$DataBean;

    invoke-virtual {v0}, Lcom/comeback/data/ui/maomi/bean/AnchorList$DataBean;->getAvatar()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/comeback/data/ui/maomi/VoiceAnchorDetailActivity;->mIvHeader:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lc/a/a/b/g/h;->z0(Ljava/lang/String;Landroid/widget/ImageView;)V

    return-void
.end method

.method public l()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/comeback/data/base/BaseFragment;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/comeback/data/ui/maomi/VoiceAnchorDetailActivity;->b:Lcom/comeback/data/ui/maomi/bean/AnchorList$DataBean;

    invoke-virtual {v1}, Lcom/comeback/data/ui/maomi/bean/AnchorList$DataBean;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/comeback/data/ui/maomi/fragment/VoiceDetailListFragment;->o(Ljava/lang/String;Z)Lcom/comeback/data/ui/maomi/fragment/VoiceDetailListFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v1, p0, Lcom/comeback/data/ui/maomi/VoiceAnchorDetailActivity;->b:Lcom/comeback/data/ui/maomi/bean/AnchorList$DataBean;

    invoke-virtual {v1}, Lcom/comeback/data/ui/maomi/bean/AnchorList$DataBean;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/comeback/data/ui/maomi/fragment/VoiceDetailListFragment;->o(Ljava/lang/String;Z)Lcom/comeback/data/ui/maomi/fragment/VoiceDetailListFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public m()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "0P3Og8T0"

    .line 1
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "3vfcg8T0"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method
