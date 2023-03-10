.class public interface abstract Lf/e/a/j/n/p/c;
.super Ljava/lang/Object;
.source "ApiService.java"


# virtual methods
.method public abstract a(Ljava/util/HashMap;)Lm/e;
    .param p1    # Ljava/util/HashMap;
        .annotation runtime Ll/o0/d;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lm/e<",
            "Lcom/comeback/data/ui/gkj/bean/ComicList;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/e;
    .end annotation

    .annotation runtime Ll/o0/m;
        value = "/api/comic-lists"
    .end annotation
.end method

.method public abstract c(Ljava/util/HashMap;)Lm/e;
    .param p1    # Ljava/util/HashMap;
        .annotation runtime Ll/o0/d;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lm/e<",
            "Lcom/comeback/data/ui/gkj/bean/ComicList;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/e;
    .end annotation

    .annotation runtime Ll/o0/m;
        value = "/api/guess-like"
    .end annotation
.end method

.method public abstract d(Li/g0;)Lm/e;
    .param p1    # Li/g0;
        .annotation runtime Ll/o0/a;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/g0;",
            ")",
            "Lm/e<",
            "Lcom/comeback/data/ui/gkj/bean/SpecialBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/m;
        value = "/cms/api/article/search/list"
    .end annotation
.end method

.method public abstract e(Ljava/util/HashMap;)Lm/e;
    .param p1    # Ljava/util/HashMap;
        .annotation runtime Ll/o0/d;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lm/e<",
            "Lcom/comeback/data/ui/gkj/bean/ComicList;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/e;
    .end annotation

    .annotation runtime Ll/o0/m;
        value = "/api/special-lists"
    .end annotation
.end method

.method public abstract f(Ljava/lang/String;)Lm/e;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ll/o0/c;
            value = "empty"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lm/e<",
            "Lcom/comeback/data/ui/gkj/bean/ScreenBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/e;
    .end annotation

    .annotation runtime Ll/o0/m;
        value = "/api/comic-select"
    .end annotation
.end method

.method public abstract g(I)Lm/e;
    .param p1    # I
        .annotation runtime Ll/o0/i;
            value = "newver"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lm/e<",
            "Lcom/comeback/data/ui/gkj/bean/ConfBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/cms/api/app/conf"
    .end annotation
.end method

.method public abstract h(Ljava/util/HashMap;)Lm/e;
    .param p1    # Ljava/util/HashMap;
        .annotation runtime Ll/o0/d;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lm/e<",
            "Lcom/comeback/data/ui/gkj/bean/ViewModel;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/e;
    .end annotation

    .annotation runtime Ll/o0/m;
        value = "/api/view-module"
    .end annotation
.end method

.method public abstract i(Ljava/lang/String;)Lm/e;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ll/o0/c;
            value = "global_type"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lm/e<",
            "Lcom/comeback/data/ui/gkj/bean/ComicList;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/e;
    .end annotation

    .annotation runtime Ll/o0/m;
        value = "/api/comic-rank"
    .end annotation
.end method

.method public abstract j(I)Lm/e;
    .param p1    # I
        .annotation runtime Ll/o0/r;
            value = "id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lm/e<",
            "Lcom/comeback/data/ui/gkj/bean/ComicDetail;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/cms/api/cartoon/detail"
    .end annotation
.end method

.method public abstract k(III)Lm/e;
    .param p1    # I
        .annotation runtime Ll/o0/r;
            value = "navId"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Ll/o0/r;
            value = "page"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Ll/o0/r;
            value = "pageSize"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Lm/e<",
            "Lcom/comeback/data/ui/gkj/bean/NavBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/cms/api/special/nav/article/list"
    .end annotation
.end method

.method public abstract l(III)Lm/e;
    .param p1    # I
        .annotation runtime Ll/o0/r;
            value = "id"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Ll/o0/r;
            value = "page"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Ll/o0/r;
            value = "pageSize"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Lm/e<",
            "Lcom/comeback/data/ui/gkj/bean/SpecialBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/cms/api/special/article/list"
    .end annotation
.end method

.method public abstract m(ILjava/lang/String;)Lm/e;
    .param p1    # I
        .annotation runtime Ll/o0/r;
            value = "cid"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ll/o0/i;
            value = "authorization"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Lm/e<",
            "Lcom/comeback/data/ui/gkj/bean/ComicRead;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/cms/api/cartoon/play"
    .end annotation
.end method

.method public abstract n(Ljava/util/HashMap;)Lm/e;
    .param p1    # Ljava/util/HashMap;
        .annotation runtime Ll/o0/d;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lm/e<",
            "Lcom/comeback/data/ui/gkj/bean/AnimeRead;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/e;
    .end annotation

    .annotation runtime Ll/o0/m;
        value = "/api/comic-image"
    .end annotation
.end method
