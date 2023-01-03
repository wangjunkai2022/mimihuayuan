.class public Lcom/comeback/data/ui/tv91/PlayActivity$b;
.super Ljava/lang/Object;
.source "PlayActivity.java"

# interfaces
.implements Li/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/tv91/PlayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/comeback/data/ui/tv91/PlayActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/tv91/PlayActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/tv91/PlayActivity$b;->a:Lcom/comeback/data/ui/tv91/PlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Li/f;Li/h0;)V
    .locals 2

    .line 1
    iget p2, p2, Li/h0;->e:I

    const/16 v0, 0x12c

    const/4 v1, 0x1

    if-le p2, v0, :cond_1

    .line 2
    iget-object p1, p0, Lcom/comeback/data/ui/tv91/PlayActivity$b;->a:Lcom/comeback/data/ui/tv91/PlayActivity;

    .line 3
    iget p2, p1, Lcom/comeback/data/ui/tv91/PlayActivity;->i:I

    add-int/2addr p2, v1

    iput p2, p1, Lcom/comeback/data/ui/tv91/PlayActivity;->i:I

    .line 4
    iget-object p1, p1, Lcom/comeback/data/ui/tv91/PlayActivity;->f:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object p2, p0, Lcom/comeback/data/ui/tv91/PlayActivity$b;->a:Lcom/comeback/data/ui/tv91/PlayActivity;

    .line 6
    iget p2, p2, Lcom/comeback/data/ui/tv91/PlayActivity;->i:I

    if-ne p1, p2, :cond_0

    const-string p1, "3+zUgeTl36HegKDZnfbTjqrihsDam42WnNq4j9fdheaVhtvOjOeM1s7X"

    .line 7
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lf/e/a/k/f;->a()V

    :cond_0
    return-void

    .line 8
    :cond_1
    iget-object p2, p0, Lcom/comeback/data/ui/tv91/PlayActivity$b;->a:Lcom/comeback/data/ui/tv91/PlayActivity;

    .line 9
    iget-object p2, p2, Lcom/comeback/data/ui/tv91/PlayActivity;->f:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/f;

    .line 11
    invoke-interface {v0}, Li/f;->cancel()V

    goto :goto_0

    .line 12
    :cond_2
    iget-object p2, p0, Lcom/comeback/data/ui/tv91/PlayActivity$b;->a:Lcom/comeback/data/ui/tv91/PlayActivity;

    .line 13
    iget-boolean v0, p2, Lcom/comeback/data/ui/tv91/PlayActivity;->h:Z

    if-nez v0, :cond_4

    .line 14
    iput-boolean v1, p2, Lcom/comeback/data/ui/tv91/PlayActivity;->h:Z

    .line 15
    invoke-interface {p1}, Li/f;->S()Li/e0;

    move-result-object p1

    .line 16
    iget-object p1, p1, Li/e0;->b:Li/x;

    .line 17
    iget-object p1, p1, Li/x;->j:Ljava/lang/String;

    .line 18
    iget-object p2, p0, Lcom/comeback/data/ui/tv91/PlayActivity$b;->a:Lcom/comeback/data/ui/tv91/PlayActivity;

    if-eqz p2, :cond_3

    const-string v0, "aD08Ow=="

    .line 19
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "DQ=="

    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lf/e/a/k/f;->b()V

    .line 20
    new-instance v0, Lf/e/a/j/n0/h;

    invoke-direct {v0, p2}, Lf/e/a/j/n0/h;-><init>(Lcom/comeback/data/ui/tv91/PlayActivity;)V

    .line 21
    new-instance v1, Lf/e/a/j/n0/f;

    invoke-direct {v1, p2, p1, v0}, Lf/e/a/j/n0/f;-><init>(Landroid/app/Activity;Ljava/lang/String;Lf/e/a/j/n0/g;)V

    .line 22
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 23
    iput-object v1, p2, Lcom/comeback/data/ui/tv91/PlayActivity;->g:Ljava/lang/Thread;

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    .line 24
    throw p1

    :cond_4
    :goto_1
    return-void
.end method

.method public d(Li/f;Ljava/io/IOException;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    return-void
.end method
