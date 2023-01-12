.class public Lf/e/a/j/o/b;
.super Ljava/lang/Object;
.source "HGMovieDetailActivity.java"

# interfaces
.implements Li/g;


# instance fields
.field public final synthetic a:Lcom/comeback/data/ui/hg/HGMovieDetailActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/hg/HGMovieDetailActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/e/a/j/o/b;->a:Lcom/comeback/data/ui/hg/HGMovieDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Li/f;Li/h0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p1, p2, Li/h0;->h:Li/i0;

    .line 2
    invoke-virtual {p1}, Li/i0;->H()Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance p2, Lf/i/b/j;

    invoke-direct {p2}, Lf/i/b/j;-><init>()V

    const-class v0, Lcom/comeback/data/ui/hg/bean/VideoList;

    invoke-virtual {p2, p1, v0}, Lf/i/b/j;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/comeback/data/ui/hg/bean/VideoList;

    .line 4
    iget-object p2, p0, Lf/e/a/j/o/b;->a:Lcom/comeback/data/ui/hg/HGMovieDetailActivity;

    new-instance v0, Lf/e/a/j/o/b$a;

    invoke-direct {v0, p0, p1}, Lf/e/a/j/o/b$a;-><init>(Lf/e/a/j/o/b;Lcom/comeback/data/ui/hg/bean/VideoList;)V

    invoke-virtual {p2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public d(Li/f;Ljava/io/IOException;)V
    .locals 0

    return-void
.end method
