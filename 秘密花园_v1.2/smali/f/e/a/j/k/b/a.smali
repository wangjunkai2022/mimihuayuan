.class public interface abstract Lf/e/a/j/k/b/a;
.super Ljava/lang/Object;
.source "ApiService.java"


# virtual methods
.method public abstract a(Ljava/util/HashMap;)Lm/e;
    .param p1    # Ljava/util/HashMap;
        .annotation runtime Ll/o0/a;
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
            "Lcom/comeback/data/ui/fruitPie/bean/SearchResult;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/m;
        value = "/v1_2/articleSearch"
    .end annotation
.end method

.method public abstract b(Ljava/util/HashMap;)Lm/e;
    .param p1    # Ljava/util/HashMap;
        .annotation runtime Ll/o0/a;
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
            "Lcom/comeback/data/ui/fruitPie/bean/VideoList;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/m;
        value = "/v1_2/homePage"
    .end annotation
.end method

.method public abstract c(Ljava/util/HashMap;)Lm/e;
    .param p1    # Ljava/util/HashMap;
        .annotation runtime Ll/o0/a;
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
            "Lcom/comeback/data/ui/fruitPie/bean/IdDetail;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/m;
        value = "/v1_2/libraryDetail"
    .end annotation
.end method

.method public abstract d(Ljava/lang/String;Ljava/util/HashMap;)Lm/e;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ll/o0/q;
            value = "type"
        .end annotation
    .end param
    .param p2    # Ljava/util/HashMap;
        .annotation runtime Ll/o0/a;
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
            "Lcom/comeback/data/ui/fruitPie/bean/VideoList;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/m;
        value = "/v1_2/{type}"
    .end annotation
.end method

.method public abstract e(Ljava/util/HashMap;)Lm/e;
    .param p1    # Ljava/util/HashMap;
        .annotation runtime Ll/o0/a;
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
            "Lcom/comeback/data/ui/fruitPie/bean/ColumnList;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/m;
        value = "/v1_2/columnistList"
    .end annotation
.end method

.method public abstract f(Ljava/util/HashMap;)Lm/e;
    .param p1    # Ljava/util/HashMap;
        .annotation runtime Ll/o0/a;
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
            "Lcom/comeback/data/ui/fruitPie/bean/AuthorList;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/m;
        value = "/v1_2/anchorsList"
    .end annotation
.end method

.method public abstract g(Ljava/util/HashMap;)Lm/e;
    .param p1    # Ljava/util/HashMap;
        .annotation runtime Ll/o0/a;
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
            "Lcom/comeback/data/ui/fruitPie/bean/DiscoverBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/m;
        value = "/v1_2/find"
    .end annotation
.end method

.method public abstract h(Ljava/util/HashMap;)Lm/e;
    .param p1    # Ljava/util/HashMap;
        .annotation runtime Ll/o0/a;
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
            "Lcom/comeback/data/ui/fruitPie/bean/FilmInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/m;
        value = "/v1_2/filmInfo"
    .end annotation
.end method
