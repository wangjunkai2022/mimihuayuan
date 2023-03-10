.class public Lf/e/a/j/l0/f;
.super Lm/j;
.source "ComicReadActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm/j<",
        "Lcom/comeback/data/ui/slf/bean/ComicDetail;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/comeback/data/ui/slf/ComicReadActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/slf/ComicReadActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/e/a/j/l0/f;->e:Lcom/comeback/data/ui/slf/ComicReadActivity;

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
    .locals 1

    .line 1
    check-cast p1, Lcom/comeback/data/ui/slf/bean/ComicDetail;

    const-string v0, "0ujDjNbO37vjg774l9f9"

    .line 2
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc/a/a/b/g/h;->p1(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lf/e/a/j/l0/f;->e:Lcom/comeback/data/ui/slf/ComicReadActivity;

    invoke-virtual {p1}, Lcom/comeback/data/ui/slf/bean/ComicDetail;->getChapter()Ljava/util/List;

    move-result-object p1

    .line 4
    iput-object p1, v0, Lcom/comeback/data/ui/slf/ComicReadActivity;->b:Ljava/util/List;

    .line 5
    iget-object p1, p0, Lf/e/a/j/l0/f;->e:Lcom/comeback/data/ui/slf/ComicReadActivity;

    .line 6
    invoke-virtual {p1}, Lcom/comeback/data/ui/slf/ComicReadActivity;->n()V

    return-void
.end method
