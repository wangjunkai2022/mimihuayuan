.class public Lcom/comeback/data/ui/maomi/VoiceActivity$a;
.super Ljava/lang/Object;
.source "VoiceActivity.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/maomi/VoiceActivity;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/comeback/data/ui/maomi/VoiceActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/maomi/VoiceActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/maomi/VoiceActivity$a;->a:Lcom/comeback/data/ui/maomi/VoiceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/VoiceActivity$a;->a:Lcom/comeback/data/ui/maomi/VoiceActivity;

    iget-object v1, v0, Lcom/comeback/data/ui/maomi/VoiceActivity;->mTvType1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/comeback/data/ui/maomi/VoiceActivity;->m(Landroid/widget/TextView;)V

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/VoiceActivity$a;->a:Lcom/comeback/data/ui/maomi/VoiceActivity;

    iget-object v1, v0, Lcom/comeback/data/ui/maomi/VoiceActivity;->mTvType2:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/comeback/data/ui/maomi/VoiceActivity;->m(Landroid/widget/TextView;)V

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/VoiceActivity$a;->a:Lcom/comeback/data/ui/maomi/VoiceActivity;

    iget-object v1, v0, Lcom/comeback/data/ui/maomi/VoiceActivity;->mTvType3:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/comeback/data/ui/maomi/VoiceActivity;->m(Landroid/widget/TextView;)V

    .line 4
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/VoiceActivity$a;->a:Lcom/comeback/data/ui/maomi/VoiceActivity;

    iget-object v1, v0, Lcom/comeback/data/ui/maomi/VoiceActivity;->mTvType4:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/comeback/data/ui/maomi/VoiceActivity;->m(Landroid/widget/TextView;)V

    .line 5
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/VoiceActivity$a;->a:Lcom/comeback/data/ui/maomi/VoiceActivity;

    iget-object v1, v0, Lcom/comeback/data/ui/maomi/VoiceActivity;->mTvType5:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/comeback/data/ui/maomi/VoiceActivity;->m(Landroid/widget/TextView;)V

    if-nez p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/comeback/data/ui/maomi/VoiceActivity$a;->a:Lcom/comeback/data/ui/maomi/VoiceActivity;

    iget-object v0, p1, Lcom/comeback/data/ui/maomi/VoiceActivity;->mTvType1:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Lcom/comeback/data/ui/maomi/VoiceActivity;->l(Landroid/widget/TextView;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 7
    iget-object p1, p0, Lcom/comeback/data/ui/maomi/VoiceActivity$a;->a:Lcom/comeback/data/ui/maomi/VoiceActivity;

    iget-object v0, p1, Lcom/comeback/data/ui/maomi/VoiceActivity;->mTvType2:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Lcom/comeback/data/ui/maomi/VoiceActivity;->l(Landroid/widget/TextView;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 8
    iget-object p1, p0, Lcom/comeback/data/ui/maomi/VoiceActivity$a;->a:Lcom/comeback/data/ui/maomi/VoiceActivity;

    iget-object v0, p1, Lcom/comeback/data/ui/maomi/VoiceActivity;->mTvType3:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Lcom/comeback/data/ui/maomi/VoiceActivity;->l(Landroid/widget/TextView;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 9
    iget-object p1, p0, Lcom/comeback/data/ui/maomi/VoiceActivity$a;->a:Lcom/comeback/data/ui/maomi/VoiceActivity;

    iget-object v0, p1, Lcom/comeback/data/ui/maomi/VoiceActivity;->mTvType4:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Lcom/comeback/data/ui/maomi/VoiceActivity;->l(Landroid/widget/TextView;)V

    goto :goto_0

    .line 10
    :cond_3
    iget-object p1, p0, Lcom/comeback/data/ui/maomi/VoiceActivity$a;->a:Lcom/comeback/data/ui/maomi/VoiceActivity;

    iget-object v0, p1, Lcom/comeback/data/ui/maomi/VoiceActivity;->mTvType5:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Lcom/comeback/data/ui/maomi/VoiceActivity;->l(Landroid/widget/TextView;)V

    :goto_0
    return-void
.end method
