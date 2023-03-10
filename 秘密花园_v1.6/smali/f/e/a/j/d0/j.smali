.class public Lf/e/a/j/d0/j;
.super Lm/j;
.source "VoicePlayActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm/j<",
        "Lcom/comeback/data/ui/maomi/bean/VoiceDetail;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/comeback/data/ui/maomi/VoicePlayActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/maomi/VoicePlayActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/e/a/j/d0/j;->e:Lcom/comeback/data/ui/maomi/VoicePlayActivity;

    invoke-direct {p0}, Lm/j;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 0

    return-void
.end method

.method public e(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public f(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/comeback/data/ui/maomi/bean/VoiceDetail;

    .line 2
    iget-object v0, p0, Lf/e/a/j/d0/j;->e:Lcom/comeback/data/ui/maomi/VoicePlayActivity;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/comeback/data/ui/maomi/bean/VoiceDetail;->getData()Lcom/comeback/data/ui/maomi/bean/VoiceDetail$DataBeanX;

    move-result-object p1

    invoke-virtual {p1}, Lcom/comeback/data/ui/maomi/bean/VoiceDetail$DataBeanX;->getData()Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Lcom/comeback/data/ui/maomi/VoicePlayActivity;->f:Ljava/util/List;

    .line 4
    iget-object v1, v0, Lcom/comeback/data/ui/maomi/VoicePlayActivity;->c:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    iget v2, v0, Lcom/comeback/data/ui/maomi/VoicePlayActivity;->e:I

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/comeback/data/ui/maomi/bean/VoiceDetail$DataBeanX$DataBean;

    invoke-virtual {p1}, Lcom/comeback/data/ui/maomi/bean/VoiceDetail$DataBeanX$DataBean;->getContent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->setPlayUri(Ljava/lang/String;)V

    .line 5
    iget-object p1, v0, Lcom/comeback/data/ui/maomi/VoicePlayActivity;->c:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-virtual {p1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->startPlayer()Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    .line 6
    iget-object p1, v0, Lcom/comeback/data/ui/maomi/VoicePlayActivity;->mIvPlay:Landroid/widget/ImageView;

    const v0, 0x7f08016c

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 7
    throw p1
.end method
