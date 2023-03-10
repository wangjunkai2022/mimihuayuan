.class public Lcom/comeback/data/ui/movieCloud/PlayActivity_ViewBinding$a;
.super Ld/c/b;
.source "PlayActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/movieCloud/PlayActivity_ViewBinding;-><init>(Lcom/comeback/data/ui/movieCloud/PlayActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/comeback/data/ui/movieCloud/PlayActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/movieCloud/PlayActivity_ViewBinding;Lcom/comeback/data/ui/movieCloud/PlayActivity;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/comeback/data/ui/movieCloud/PlayActivity_ViewBinding$a;->c:Lcom/comeback/data/ui/movieCloud/PlayActivity;

    invoke-direct {p0}, Ld/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/movieCloud/PlayActivity_ViewBinding$a;->c:Lcom/comeback/data/ui/movieCloud/PlayActivity;

    .line 2
    iget-object v0, p1, Lcom/comeback/data/ui/movieCloud/PlayActivity;->e:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object v1, p1, Lcom/comeback/data/ui/movieCloud/PlayActivity;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/comeback/data/bean/PlayListBean;

    .line 5
    new-instance v3, Lcom/comeback/data/ui/main/bean/CollectVideo;

    invoke-direct {v3}, Lcom/comeback/data/ui/main/bean/CollectVideo;-><init>()V

    .line 6
    invoke-virtual {v2}, Lcom/comeback/data/bean/PlayListBean;->getUri()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/comeback/data/ui/main/bean/CollectVideo;->setUrl(Ljava/lang/String;)V

    .line 7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lcom/comeback/data/ui/movieCloud/PlayActivity;->f:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Gg=="

    invoke-static {v5}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/comeback/data/bean/PlayListBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/comeback/data/ui/main/bean/CollectVideo;->setName(Ljava/lang/String;)V

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/comeback/data/ui/main/bean/CollectVideo;->setAddTime(J)V

    .line 9
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_1
    invoke-static {}, Lg/a/x;->P()Lg/a/x;

    move-result-object p1

    invoke-static {p1}, Lf/e/a/k/g;->d(Lg/a/x;)Lf/e/a/k/g;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 11
    sget-object v1, Lf/e/a/k/g;->a:Lg/a/x;

    new-instance v2, Lf/e/a/k/h;

    invoke-direct {v2, p1, v0}, Lf/e/a/k/h;-><init>(Lf/e/a/k/g;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lg/a/x;->N(Lg/a/x$a;)V

    const-string p1, "0fbVjPz837vjg774l9bvj4rChuvEl4KWlvqcjt78isqChPfSg+S21vvx3MbQjtvg39/ejMz10JHi"

    .line 12
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lc/a/a/b/g/h;->p1(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    .line 13
    throw p1

    :cond_3
    :goto_1
    const-string p1, "0ejSgsb61o//g4n0nePug4Lmhd77l4G+lfKbgfTrheKOi+TrjeeP2+Tp29v0gszc0v7Lgvne36fNg63PnuPojr3KhfDdm668"

    .line 14
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lc/a/a/b/g/h;->p1(Ljava/lang/String;)V

    :goto_2
    return-void
.end method
