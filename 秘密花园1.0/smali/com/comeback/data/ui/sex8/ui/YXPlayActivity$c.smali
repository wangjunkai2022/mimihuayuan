.class public Lcom/comeback/data/ui/sex8/ui/YXPlayActivity$c;
.super Lm/j;
.source "YXPlayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/sex8/ui/YXPlayActivity;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm/j<",
        "Lcom/comeback/data/ui/sex8/bean/YXNovelDetail;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/comeback/data/ui/sex8/ui/YXPlayActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/sex8/ui/YXPlayActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/ui/YXPlayActivity$c;->e:Lcom/comeback/data/ui/sex8/ui/YXPlayActivity;

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

    const-string p1, "3+zUgeTl36HegKDZnfbTjqrihsDam42W"

    .line 1
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lc/a/a/b/g/h;->n1(Ljava/lang/String;)V

    return-void
.end method

.method public f(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail;

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/ui/YXPlayActivity$c;->e:Lcom/comeback/data/ui/sex8/ui/YXPlayActivity;

    .line 3
    iput-object p1, v0, Lcom/comeback/data/ui/sex8/ui/YXPlayActivity;->f:Lcom/comeback/data/ui/sex8/bean/YXNovelDetail;

    .line 4
    invoke-virtual {p1}, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail;->getData()Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean;->getRadio_list()Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Lcom/comeback/data/ui/sex8/ui/YXPlayActivity;->e:Ljava/util/List;

    .line 5
    iget v1, v0, Lcom/comeback/data/ui/sex8/ui/YXPlayActivity;->i:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lt v1, p1, :cond_0

    const/4 p1, 0x0

    .line 6
    iput p1, v0, Lcom/comeback/data/ui/sex8/ui/YXPlayActivity;->i:I

    .line 7
    :cond_0
    iget p1, v0, Lcom/comeback/data/ui/sex8/ui/YXPlayActivity;->i:I

    if-ltz p1, :cond_2

    iget-object v1, v0, Lcom/comeback/data/ui/sex8/ui/YXPlayActivity;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, v0, Lcom/comeback/data/ui/sex8/ui/YXPlayActivity;->e:Ljava/util/List;

    iget v1, v0, Lcom/comeback/data/ui/sex8/ui/YXPlayActivity;->i:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RadioListBean;

    .line 9
    iget-object v1, v0, Lcom/comeback/data/ui/sex8/ui/YXPlayActivity;->mTvTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RadioListBean;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object p1, v0, Lcom/comeback/data/ui/sex8/ui/YXPlayActivity;->c:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    iget-object v1, v0, Lcom/comeback/data/ui/sex8/ui/YXPlayActivity;->f:Lcom/comeback/data/ui/sex8/bean/YXNovelDetail;

    invoke-virtual {v1}, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail;->getData()Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->setPlayUri(Ljava/lang/String;)V

    .line 11
    iget-object p1, v0, Lcom/comeback/data/ui/sex8/ui/YXPlayActivity;->c:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-virtual {p1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->startPlayer()Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    .line 12
    iget-object p1, v0, Lcom/comeback/data/ui/sex8/ui/YXPlayActivity;->c:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v1, v2}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->seekTo(J)V

    .line 13
    iget-object p1, v0, Lcom/comeback/data/ui/sex8/ui/YXPlayActivity;->mIvPlay:Landroid/widget/ImageView;

    const v0, 0x7f080168

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_2
    :goto_0
    const-string p1, "0fDOgv/N367Sga/Jkf76g5jN"

    .line 14
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lc/a/a/b/g/h;->n1(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
