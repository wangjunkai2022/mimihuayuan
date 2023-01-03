.class public Lf/e/a/j/g/c;
.super Lm/j;
.source "MovieDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm/j<",
        "Lcom/comeback/data/ui/cucumber/bean/VideoList;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/comeback/data/ui/cucumber/MovieDetailActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/cucumber/MovieDetailActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/e/a/j/g/c;->e:Lcom/comeback/data/ui/cucumber/MovieDetailActivity;

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

    .line 1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public f(Ljava/lang/Object;)V
    .locals 6

    .line 1
    check-cast p1, Lcom/comeback/data/ui/cucumber/bean/VideoList;

    .line 2
    invoke-virtual {p1}, Lcom/comeback/data/ui/cucumber/bean/VideoList;->getData()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/comeback/data/ui/cucumber/bean/Video;

    .line 3
    iget-object v1, p0, Lf/e/a/j/g/c;->e:Lcom/comeback/data/ui/cucumber/MovieDetailActivity;

    iget-object v1, v1, Lcom/comeback/data/ui/cucumber/MovieDetailActivity;->ivCollect:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/cucumber/bean/Video;->newRealm()Lcom/comeback/data/ui/cucumber/bean/RealmVideo;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 4
    iget-object v1, p0, Lf/e/a/j/g/c;->e:Lcom/comeback/data/ui/cucumber/MovieDetailActivity;

    iget-object v1, v1, Lcom/comeback/data/ui/cucumber/MovieDetailActivity;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/cucumber/bean/Video;->getMovName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v1, p0, Lf/e/a/j/g/c;->e:Lcom/comeback/data/ui/cucumber/MovieDetailActivity;

    iget-object v1, v1, Lcom/comeback/data/ui/cucumber/MovieDetailActivity;->tvIntro:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/cucumber/bean/Video;->getMovDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v1, p0, Lf/e/a/j/g/c;->e:Lcom/comeback/data/ui/cucumber/MovieDetailActivity;

    iget-object v1, v1, Lcom/comeback/data/ui/cucumber/MovieDetailActivity;->tvDetail:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/cucumber/bean/Video;->getDetail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v1, p0, Lf/e/a/j/g/c;->e:Lcom/comeback/data/ui/cucumber/MovieDetailActivity;

    .line 8
    iget-object v2, v1, Lcom/comeback/data/ui/cucumber/MovieDetailActivity;->ivCollect:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/comeback/data/ui/cucumber/bean/RealmVideo;

    .line 9
    invoke-virtual {v2}, Lg/a/g0;->getRealm()Lg/a/x;

    move-result-object v3

    invoke-static {v3}, Lf/e/a/k/g;->d(Lg/a/x;)Lf/e/a/k/g;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "XgY="

    invoke-static {v5}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/comeback/data/ui/cucumber/bean/RealmVideo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v5, v2}, Lf/e/a/k/g;->b(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 10
    iget-object v2, v1, Lcom/comeback/data/ui/cucumber/MovieDetailActivity;->ivCollect:Landroid/widget/ImageView;

    const v3, 0x7f0e0020

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 11
    iget-object v1, v1, Lcom/comeback/data/ui/cucumber/MovieDetailActivity;->ivCollect:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 12
    :cond_0
    iget-object v0, p0, Lf/e/a/j/g/c;->e:Lcom/comeback/data/ui/cucumber/MovieDetailActivity;

    .line 13
    iget-object v1, v0, Lcom/comeback/data/ui/cucumber/MovieDetailActivity;->d:Lcom/comeback/data/ui/cucumber/bean/Video;

    if-nez v1, :cond_1

    .line 14
    iput-object p1, v0, Lcom/comeback/data/ui/cucumber/MovieDetailActivity;->d:Lcom/comeback/data/ui/cucumber/bean/Video;

    .line 15
    invoke-virtual {v0}, Lcom/comeback/data/ui/cucumber/MovieDetailActivity;->n()V

    :cond_1
    return-void
.end method
