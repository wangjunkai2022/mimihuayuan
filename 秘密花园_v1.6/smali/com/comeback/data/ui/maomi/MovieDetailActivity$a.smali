.class public Lcom/comeback/data/ui/maomi/MovieDetailActivity$a;
.super Lm/j;
.source "MovieDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/maomi/MovieDetailActivity;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm/j<",
        "Lcom/comeback/data/ui/maomi/bean/VideoDetail;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/comeback/data/ui/maomi/MovieDetailActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/maomi/MovieDetailActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/maomi/MovieDetailActivity$a;->e:Lcom/comeback/data/ui/maomi/MovieDetailActivity;

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
    .locals 2

    .line 1
    check-cast p1, Lcom/comeback/data/ui/maomi/bean/VideoDetail;

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/MovieDetailActivity$a;->e:Lcom/comeback/data/ui/maomi/MovieDetailActivity;

    iget-object v0, v0, Lcom/comeback/data/ui/maomi/MovieDetailActivity;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/maomi/bean/VideoDetail;->getData()Lcom/comeback/data/ui/maomi/bean/VideoDetail$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/comeback/data/ui/maomi/bean/VideoDetail$DataBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/MovieDetailActivity$a;->e:Lcom/comeback/data/ui/maomi/MovieDetailActivity;

    iget-object v0, v0, Lcom/comeback/data/ui/maomi/MovieDetailActivity;->tvTime:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/maomi/bean/VideoDetail;->getData()Lcom/comeback/data/ui/maomi/bean/VideoDetail$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/comeback/data/ui/maomi/bean/VideoDetail$DataBean;->getAll()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/MovieDetailActivity$a;->e:Lcom/comeback/data/ui/maomi/MovieDetailActivity;

    iget-object v0, v0, Lcom/comeback/data/ui/maomi/MovieDetailActivity;->tvDetail:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/maomi/bean/VideoDetail;->getData()Lcom/comeback/data/ui/maomi/bean/VideoDetail$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/comeback/data/ui/maomi/bean/VideoDetail$DataBean;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-virtual {p1}, Lcom/comeback/data/ui/maomi/bean/VideoDetail;->getData()Lcom/comeback/data/ui/maomi/bean/VideoDetail$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/comeback/data/ui/maomi/bean/VideoDetail$DataBean;->getVideo_item()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/comeback/data/ui/maomi/bean/VideoDetail$DataBean$VideoItemBean;

    .line 6
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/MovieDetailActivity$a;->e:Lcom/comeback/data/ui/maomi/MovieDetailActivity;

    .line 7
    iget-object v0, v0, Lcom/comeback/data/ui/maomi/MovieDetailActivity;->c:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    .line 8
    invoke-virtual {p1}, Lcom/comeback/data/ui/maomi/bean/VideoDetail$DataBean$VideoItemBean;->getFile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->setPlayUri(Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/MovieDetailActivity$a;->e:Lcom/comeback/data/ui/maomi/MovieDetailActivity;

    .line 10
    iget-object v0, v0, Lcom/comeback/data/ui/maomi/MovieDetailActivity;->c:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    .line 11
    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->startPlayer()Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    .line 12
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/MovieDetailActivity$a;->e:Lcom/comeback/data/ui/maomi/MovieDetailActivity;

    .line 13
    iget-object v0, v0, Lcom/comeback/data/ui/maomi/MovieDetailActivity;->c:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    .line 14
    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->getVideoPlayerView()Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/comeback/data/ui/maomi/bean/VideoDetail$DataBean$VideoItemBean;->getFile()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lc/a/a/b/g/h;->j1(Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;Ljava/lang/String;)V

    return-void
.end method
