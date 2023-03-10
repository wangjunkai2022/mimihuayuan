.class public interface abstract Lf/e/a/j/f0/j/c;
.super Ljava/lang/Object;
.source "ApiService.java"


# virtual methods
.method public abstract a(Ljava/lang/String;Ljava/util/HashMap;)Lm/e;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ll/o0/q;
            value = "id"
        .end annotation
    .end param
    .param p2    # Ljava/util/HashMap;
        .annotation runtime Ll/o0/s;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lm/e<",
            "Lcom/comeback/data/ui/mimei/bean/ComicDetailBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/v2/combine/comic/internal/{id}"
    .end annotation
.end method

.method public abstract b(Ljava/util/HashMap;)Lm/e;
    .param p1    # Ljava/util/HashMap;
        .annotation runtime Ll/o0/s;
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
            "Lcom/comeback/data/ui/mimei/bean/AnimateHomeType;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/v1/combine/animat/index"
    .end annotation
.end method

.method public abstract c()Lm/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lm/e<",
            "Lcom/comeback/data/ui/mimei/bean/HotSearch;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/v1/search/tag"
    .end annotation
.end method

.method public abstract d(Ljava/util/HashMap;)Lm/e;
    .param p1    # Ljava/util/HashMap;
        .annotation runtime Ll/o0/s;
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
            "Lcom/comeback/data/ui/mimei/bean/NovelHomeType;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/v1/search/fiction"
    .end annotation
.end method

.method public abstract e()Lm/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lm/e<",
            "Lcom/comeback/data/ui/mimei/bean/NovelHomeType;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/v1/combine/fiction/index"
    .end annotation
.end method

.method public abstract f(Ljava/util/HashMap;)Lm/e;
    .param p1    # Ljava/util/HashMap;
        .annotation runtime Ll/o0/s;
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
            "Lcom/comeback/data/ui/mimei/bean/ReadBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/v2/comic/read"
    .end annotation
.end method

.method public abstract g(Ljava/util/HashMap;)Lm/e;
    .param p1    # Ljava/util/HashMap;
        .annotation runtime Ll/o0/s;
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
            "Lcom/comeback/data/ui/mimei/bean/ComicHomeType;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/v2/search/comic"
    .end annotation
.end method

.method public abstract h(Ljava/lang/String;Ljava/util/HashMap;)Lm/e;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ll/o0/q;
            value = "type"
        .end annotation
    .end param
    .param p2    # Ljava/util/HashMap;
        .annotation runtime Ll/o0/s;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lm/e<",
            "Lcom/comeback/data/ui/mimei/bean/ComicHomeType;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/v2/comic/{type}"
    .end annotation
.end method

.method public abstract i(Ljava/util/HashMap;)Lm/e;
    .param p1    # Ljava/util/HashMap;
        .annotation runtime Ll/o0/s;
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
            "Lcom/comeback/data/ui/mimei/bean/ComicHomeType;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/v2/combine/comic/index"
    .end annotation
.end method

.method public abstract j(Ljava/lang/String;Ljava/util/HashMap;)Lm/e;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ll/o0/q;
            value = "type"
        .end annotation
    .end param
    .param p2    # Ljava/util/HashMap;
        .annotation runtime Ll/o0/s;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lm/e<",
            "Lcom/comeback/data/ui/mimei/bean/NovelHomeType;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/v1/fiction/{type}"
    .end annotation
.end method
